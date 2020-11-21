@extends('layouts.app')

@section('noconfirmeduser')

<head>
    <style>
        /*.jred {color: red}*/
    </style>
</head>

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <h1>Bienvenido {{ Auth::user()->name }}</h1>
        </div>
        <div class="col-md-6">
            <div class="jumbotron" style="background: rgb(235, 104, 104)">
                <h1 class="display-12">Tu cuenta aun no esta verificada :(</h1>
                <p class="lead">
                    Pero no te preocupes, contactanos para obetener acceso a tu cuenta.
                </p>
            </div>
        </div>
    </div>
</div>


@endsection