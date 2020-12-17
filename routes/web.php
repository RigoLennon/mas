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

//Pagina de inicio pruebas
Route::get('/welcome', 'HomeController@index')->name('welcome');

//Pagina principal del Admin
Route::get('/admin', 'AdminController@index')->name('admin');

//Administracion de categorias
Route::get('/admin/categories', 'CategoriesController@indexmas')->name('categories');
Route::get('/admin/categories/create', 'CategoriesController@create')->name('newcategory');
Route::post('/admin/categories/post', 'CategoriesController@store')->name('postcategory');
Route::get('/admin/categories/delete/{id}', 'CategoriesController@destroy')->name('deletecategory');

//Administracion de productos
Route::get('/admin/products', 'ProductController@indexmas')->name('products');
Route::get('/admin/products/create', 'ProductController@create')->name('newproduct');
Route::post('/admin/products/post', 'ProductController@store')->name('postproduct');
Route::get('/admin/products/edit/{id}', 'ProductController@edit')->name('editproduct');
Route::put('/admin/products/update/{id}', 'ProductController@update')->name('updateproduct');
Route::get('/admin/products/delete/{id}', 'ProductController@destroy')->name('deleteproduct');

//Administracion de restaurante
Route::get('/admin/restaurant', 'RestaurantController@indexmas')->name('restaurant');

//Super admin
Route::get('/super', 'SuperAdminController@index')->name('super');
Route::get('/super/restaurant', 'SuperAdminController@sprest')->name('sprest');
Route::get('/super/inactive/{id}', 'SuperAdminController@inactiveuser')->name('inactiveuser');
Route::get('/super/active/{id}', 'SuperAdminController@activeuser')->name('activeuser');
Route::get('/super/restaurant/add', 'SuperAdminController@sprestadd')->name('sprestadd');
Route::post('/super/restaurant/post', 'SuperAdminController@store')->name('postrest');