<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Auth;
use App\Restaurant;
use App\SuperAdmin;
use Illuminate\Support\Facades\Auth as FacadesAuth;

class RestaurantController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $restaurant = DB::table('restaurants')->where('id', 2)->get();
        return $restaurant;
    }

    public function RestaurantByID($id){
        $rest_list = DB::table('restaurants')
                        ->where('confirmed', '1')
                        ->where('id', $id)
                        ->get();

        return $rest_list;
    }

    public function indexmas()
    {
        $id = Auth::user()->id_restaurant;

        $restaurant = DB::table('restaurants')
                            ->where('id', $id)
                            ->get();

        return view('admin.restaurant', [
            'restaurant' => $restaurant
            ]);
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
