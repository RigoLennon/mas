<?php

namespace App\Http\Controllers;
use DB;
use App\User;
use App\SuperAdmin;

use Illuminate\Http\Request;

class SuperAdminController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $users = DB::table('users')
                    ->orderBy('confirmed', 'asc')
                    ->orderBy('created_at', 'desc')
                    ->get();


        return view('admin.superadmin.superMain', ['users'=>$users]);
    }

    public function activeuser($id){
        $user = User::find($id);

        $user->confirmed = '1';

        $user->save();

        return redirect('/super');
    } 

    public function inactiveuser($id){
        $user = User::find($id);

        $user->confirmed = '0';

        $user->save();

        return redirect('/super');
    } 

    public function sprest(){

        $rest = DB::table('restaurants')
                        ->orderBy('confirmed')
                        ->orderBy('created_at', 'desc')
                        ->leftJoin('users','restaurants.id', '=' , 'users.id_restaurant')
                        ->select('restaurants.*','users.email')
                        ->get();

        return view('admin.superadmin.superRest', [
            'rest'=>$rest,
            ]);
    }

    public function sprestadd(){
        return view('admin.superadmin.superRestAdd');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'address' => 'required'
        ]);

        $restaurant = SuperAdmin::create([
            'name' => $request->input('name'),
            'address' => $request->input('address')
        ]);

        $restaurant->save();

        return redirect('/super/restaurant');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $rest = SuperAdmin::findOrFail($id);

        $usr_list = DB::table('users')
                    ->where('id_restaurant', 404)
                    ->where('confirmed', 1)
                    ->get();

        return view('admin.superadmin.superRestEdit', [
            'rest' => $rest,
            'usr_list'=>$usr_list
            ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $rest = SuperAdmin::findOrFail($id);
        $u_rest = $request->input('id_restaurant');

        $rest->name = $request->input('name');
        $rest->address = $request->input('address');
        //$rest->id_restaurant = $request->input('id_restaurant');

        /*$product->name = $request->input('name');
        $product->description = $request->input('description');
        $product->price = $request->input('price');
        $product->short_descrip = $request->input('short_descrip');
        $product->cat_id = $request->input('cat_id');
        */

        DB::table('users')
            ->where('id', $u_rest)
            ->update(['id_restaurant' => $id]);

        $rest->save($request->all());

        return redirect('/super/restaurant');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
