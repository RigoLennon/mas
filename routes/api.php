<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

/* PRIMERA RUTA accedemos al ID del restaurante  */
Route::resource('restaurants', 'RestaurantController');

/* SEGUNDA RUTA accedemos a las categorias segun el restaurante */
Route::get('categories/{id}', 'CategoriesController@index');

/* TERCER RUTA accedemos a los productos segun su categoria */
Route::get('products/{cat_id}', 'ProductController@index');

