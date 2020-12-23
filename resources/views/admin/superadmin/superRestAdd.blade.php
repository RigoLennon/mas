@extends('admin.sidebar')

@section('sprestadd')
<div class="container">
    <div class="col-md-12">
        <h1>Agregar Restaurante</h1>

        <form method="POST" action="{{ route('postrest') }}" enctype="multipart/form-data">
        @csrf
        <div class="row">
            <div class="col">
                <label for="nombrerest">Nombre del restaurante</label>
                <input type="text" class="form-control" id="nombrerest" name="name" required>
                <small id="nombrestdHelp" class="form-text text-muted">*Nombre del restaurante</small>
                
                <label for="address">Direccion</label>
                <input type="text" class="form-control" id="address" name="address" required>
                <small id="addressHelp" class="form-text text-muted">*Direccion del restaurante</small>
            </div>
        </div>
        <br>
        <button type="submit" class="btn btn-primary">Guardar</button>
        </form>
    </div>
</div>
@endsection