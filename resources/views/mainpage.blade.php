@extends('layouts.app')

@section('mainpage')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <h1>Bienvenido {{ Auth::user()->name }}</h1>
        </div>
        <div class="col-md-12">
            <div class="jumbotron">
                <h1 class="display-12">Crear promocion</h1>
                <p class="lead">Añade una nueva promocion</p>
                <hr class="my-12">
                <a class="btn btn-primary btn-lg" href="#" role="button">No funca</a>
            </div>
        </div>
        <div class="col-md-6">
            <div class="jumbotron">
                <h1 class="display-6">Categorias</h1>
                <p class="lead">Administra las categorias de tus productos</p>
                <hr class="my-6">
                <a class="btn btn-primary btn-lg" href="{{ ('/admin/categories') }}" role="button">Ver mas</a>
            </div>
        </div>
        <div class="col-md-6">
            <div class="jumbotron">
                <h1 class="display-6">Productos</h1>
                <p class="lead">Administra todos tus productos</p>
                <hr class="my-6">
                <a class="btn btn-primary btn-lg" href="{{ ('/admin/products') }}" role="button">Ver mas</a>
            </div>
        </div>
        <div class="col-md-12">
            <div class="jumbotron">
                <h1 class="display-12">Restaurante</h1>
                <p class="lead">Controla el como se ve tu restaurante</p>
                <hr class="my-12">
                <a class="btn btn-primary btn-lg" href="{{ ('/admin/restaurant') }}" role="button">Ver mas</a>
            </div>
        </div>
    </div>
</div>


@endsection