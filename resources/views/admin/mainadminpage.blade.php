@extends('admin.sidebar')

@section('mainPage')
    <div class="container">
        <div class="row ">
            <div class="col-md-12">
                <h1>Hola de nuevo, {{ Auth::user()->name }}</h1>
            </div>

                <div class="col-sm-6">
                    <div class="jumbotron">
                        <h1 class="display-6">Categorias</h1>
                        <p class="lead">Administra las categorias de tus productos</p>
                        <hr class="my-6">
                        <p>Tu restaurante cuenta con: {{$countCats}} categorias</p>
                        <a class="btn btn-primary btn-lg" href="#" role="button">Learn more</a>
                    </div>
                </div>

                <div class="col-sm-6">
                    <div class="jumbotron">
                        <h1 class="display-6">Productos</h1>
                        <p class="lead">Añade productos y asignalos a una categoria para que tus clientes puedan verlos.</p>
                        <hr class="my-6">
                        <p>Tu restaurante cuenta con: {{$countProds}} productos</p>
                        <a class="btn btn-primary btn-lg" href="#" role="button">Learn more</a>
                    </div>
                </div>

            </div>
        </div>
    </div>
@endsection