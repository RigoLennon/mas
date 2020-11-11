<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use App\Categories;

class CategoriesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index($id)
    {
        $categories = DB::table('product_categories')->where('rest_id', $id)->get();
        return $categories;
    }

    public function indexmas(){
        $categories = DB::table('product_categories')->where('rest_id', '2')->get();
        $cat_rest = DB::table('restaurants')->where('id', '2')->get()->first();

        return view('admin.categories', [
            'categories' => $categories,
            'cat_rest' => $cat_rest,
            ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $rest_id = DB::table('users')->where('id_restaurant', '2')->get()->first();

        return view('admin.categories.newcategory',['rest_id' => $rest_id]);
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
            'cat_name' => 'required'
        ]);

        $cat = $request->input('cat_name');
        $created_at = date('Y-m-d H:i:s');
        $updated_at = date('Y-m-d H:i:s');
        $rest_id = '2';

        DB::table('product_categories')->insert(
            [
                'cat_name' => $cat ,
                'rest_id' => $rest_id,
                'created_at' => $created_at,
                'updated_at' => $updated_at
            ]
        );

        return redirect('/admin/categories');
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
        $cat = Categories::find($id);

        $cat->delete();

        return redirect('/admin/categories');
    }
}
