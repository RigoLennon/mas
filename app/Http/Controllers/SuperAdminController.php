<?php

namespace App\Http\Controllers;
use DB;
use App\User;

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
                        ->orderBy('created_at', 'desc')
                        ->get();

        return view('admin.superadmin.superRest', ['rest'=>$rest]);
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

        $restaurant = 
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
        //
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
        //
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
