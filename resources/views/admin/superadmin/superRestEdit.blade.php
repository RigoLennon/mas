@extends('admin.sidebar')

@section('editrest')
<div class="container">
    <div class="col-md-12">
        <h1>Editar Restaurante</h1>
        <form method="POST" action="{{ route('updaterest', $rest->id) }}">
        @method('PUT')
        @csrf

        <div class="row">
            <div class="col">
                <label>Nombre Restaurante</label>
                <input type="text" name="name" class="form-control" value="{{ $rest->name }}" required>
                
                <label>Direccion </label>
                <input type="text" name="address" class="form-control" value="{{ $rest->address }}" required>
            </div>
        </div>
        <br>
        <button type="submit" class="btn btn-primary">Guardar</button>
    </div>
</div>
@endsection