<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use App\Product;

class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index($cat_id)
    {
        $products = DB::table('products')->where('cat_id', $cat_id)->get();
        return $products;
    }

    public function indexmas(){
        $products = DB::table('products')
                    ->join('product_categories', 'products.cat_id', '=', 'product_categories.id')
                    ->select('products.*', 'product_categories.cat_name')
                    ->where('prod_rest_id', 2)
                    ->get();

        $countProds = DB::table('products')
                        ->where('prod_rest_id', 2)->count();

        return view('admin.products', [
            'products'=> $products,
            'countProds' => $countProds
            ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $cat_list = DB::table('product_categories')
                    ->where('rest_id', '2')
                    ->get();
        return view('admin.products.newproduct', ['cat_list' => $cat_list]);//,['rest_id' => $rest_id]);
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
            'description' => 'required',
            'price' => 'required',
            'short_descrip' => 'required',
            'cat_id' => 'required'
        ]);

        $created_at = date('Y-m-d H:i:s');
        $updated_at = date('Y-m-d H:i:s');
        $name = $request->input('name');
        $description = $request->input('description');
        $price = $request->input('price');
        $short_descrip = $request->input('short_descrip');
        $cat_id = $request->input('cat_id');
        $prod_rest_id = 2;//$request->input('prod_rest_id');

        DB::table('products')->insert(
            [
                'created_at' => $created_at,
                'updated_at' => $updated_at,
                'name' => $name,
                'description' => $description,
                'price' => $price,
                'short_descrip' => $short_descrip,
                'cat_id' => $cat_id,
                'prod_rest_id' => $prod_rest_id
            ]
        );

        return redirect('/admin/products');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        return Product::where('id', $id)->get();
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $product = Product::findOrFail($id);

        $cat_list = DB::table('product_categories')
                    ->where('rest_id', '2')
                    ->get();

        return view('admin.products.editproduct', [
            'cat_list' => $cat_list,
            'product' => $product
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
        //$product = Product::find($id);
        //$product->update($request);

        $product = Product::findOrFail($id);
        $product->name = $request->input('name');
        $product->save($request->all());


        return redirect('/admin/products');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $prod = Product::find($id);

        $prod->delete();

        return redirect('/admin/products');
    }
}
