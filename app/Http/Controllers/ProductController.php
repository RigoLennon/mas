<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Auth;
use App\Product;
use Validator,Redirect,Response,File;

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

    public function productDetail($prod_id)
    {
        $products = DB::table('products')->where('id', $prod_id)->get();
        return $products;
    }

    public function indexmas(){
        $id = Auth::user()->id_restaurant;

        $products = DB::table('products')
                    ->join('product_categories', 'products.cat_id', '=', 'product_categories.id')
                    ->select('products.*', 'product_categories.cat_name', 'product_categories.cat_status')
                    ->where('prod_rest_id', $id)
                    ->paginate(20)
                    ;

        $countProds = DB::table('products')
                        ->where('prod_rest_id', $id)->count();

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
        $id = Auth::user()->id_restaurant;

        $cat_list = DB::table('product_categories')
                    ->where('rest_id', $id)
                    ->where('cat_status', '1')
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
            'cat_id' => 'required',
            'image_1' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
        ]);

        if ($files = $request->file('image_1')) {
            $destinationPath = public_path('/img/products'); // upload path      
            $productImage = date('YmdHis') . "." . $files->getClientOriginalExtension();
            $files->move($destinationPath, $productImage);
        }

        $product = Product::create([
        'created_at' => date('Y-m-d H:i:s'),
        'updated_at' => date('Y-m-d H:i:s'),
        'name' => $request->input('name'),
        'description' => $request->input('description'),
        'price' => $request->input('price'),
        'short_descrip' => $request->input('short_descrip'),
        'cat_id' => $request->input('cat_id'),
        'prod_rest_id' => Auth::user()->id_restaurant,
        'image_1' => $productImage//$request->file('image_1')->getClientOriginalName()
        ]);

        $product->save();

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
        $idrest = Auth::user()->id_restaurant;

        $product = Product::findOrFail($id);

        $cat_list = DB::table('product_categories')
                    ->where('rest_id', $idrest)
                    ->get();

        return view('admin.products.editproduct', [
            'cat_list' => $cat_list,
            'product' => $product,
            'id' => $id
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
        $product = Product::findOrFail($id);

        $product->name = $request->input('name');
        $product->description = $request->input('description');
        $product->price = $request->input('price');
        $product->short_descrip = $request->input('short_descrip');
        $product->cat_id = $request->input('cat_id');

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
