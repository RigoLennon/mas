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

Route::get('/', function () {
    return view('home');
});

Auth::routes();

Route::get('/welcome', 'HomeController@index')->name('welcome');

Route::get('/admin', 'AdminController@index')->name('admin');

Route::get('/admin/categories', 'CategoriesController@indexmas')->name('categories');
Route::get('/admin/categories/create', 'CategoriesController@create')->name('newcategory');
Route::post('/admin/categories/post', 'CategoriesController@store')->name('postcategory');
Route::get('/admin/categories/delete/{id}', 'CategoriesController@destroy')->name('deletecategory');

Route::get('/admin/products', 'ProductController@indexmas')->name('products');