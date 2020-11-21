<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

/*Route::get('/', function () {
    return view('mainpage');
});*/

use Illuminate\Support\Facades\Auth;

Route::get('/', function () {
    if(Auth::check()){
        if(Auth::user()->confirmed == 1){
            return view('mainpage');
        }
        else{
            return view('noconfirmeduser');
        }
    }
    else{
        return view('home');
    }
});


Auth::routes();

Route::get('/welcome', 'HomeController@index')->name('welcome');

Route::get('/admin', 'AdminController@index')->name('admin');

Route::get('/admin/categories', 'CategoriesController@indexmas')->name('categories');
Route::get('/admin/categories/create', 'CategoriesController@create')->name('newcategory');
Route::post('/admin/categories/post', 'CategoriesController@store')->name('postcategory');
Route::get('/admin/categories/delete/{id}', 'CategoriesController@destroy')->name('deletecategory');

Route::get('/admin/products', 'ProductController@indexmas')->name('products');
Route::get('/admin/products/create', 'ProductController@create')->name('newproduct');
Route::post('/admin/products/post', 'ProductController@store')->name('postproduct');
Route::get('/admin/products/edit/{id}', 'ProductController@edit')->name('editproduct');
Route::put('/admin/products/update/{id}', 'ProductController@update')->name('updateproduct');
Route::get('/admin/products/delete/{id}', 'ProductController@destroy')->name('deleteproduct');

Route::get('/admin/restaurant', 'RestaurantController@indexmas')->name('restaurant');