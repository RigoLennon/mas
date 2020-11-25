@extends('layouts.app')

@section('sidebar')

<head>
    <link href="{{ asset('css/style.css') }}" rel="stylesheet">
</head>

<div class="sidebar">
    <h4 class="masfont">Menu Administration System</h4>
    <a href="{{ url('/admin') }}" class="active">Inicio</a>
    <a href="{{ ('/admin/categories') }}">Categorias</a>
    <a href="{{ ('/admin/products') }}">Productos</a>
    <a href="{{ ('/admin/restaurant') }}">Restaurante</a>
</div>

<div class="content">
    @yield('mainPage')
    @yield('categories')
    @yield('products')
    @yield('newcat')
    @yield('newprod')
    @yield('editprod')
    @yield('restaurant')
</div>


@endsection