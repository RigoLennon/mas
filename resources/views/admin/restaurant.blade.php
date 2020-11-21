@extends('admin.sidebar')

@section('restaurant')
    <div class="row justify-content-center">
                @foreach ($restaurant as $rest)
                    <div class="col-md-6">
                        <div class="jumbotron" style="color: white; background: #3a5fc7">
                            <h1 class="display-6">Informacion de tu restaurante</h1>
                            <hr class="my-12">
                            <div class="lead">
                                Nombre: {{ $rest->name }}
                            </div>
                            <div class="lead">
                                Direccion: {{ $rest->address }}
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="jumbotron" style="color: white; background: #3a5fc7">
                            <h1 class="display-6">Configurar estilos de tu restaurante</h1>
                            <hr class="my-12">
                            <div class="lead">
                                No funca
                            </div>
                        </div>
                    </div>
                @endforeach
    </div>
@endsection

