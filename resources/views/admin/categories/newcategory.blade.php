@extends('admin.sidebar')

@section('newcat')
    <div class="container">
        <h1 class="cat-txt-center">Nueva categoria</h1>
        <div class="row">
            <div class="col-md-6">
                <form method="POST" action="{{ route('postcategory') }}">
                    @csrf
                    <div class="cardgrad-form-control">
                        <h3>Nombre de la categoria</h3>
                        <small class="font-italic" style="color: rgb(83, 83, 83)">*Esto te ayuda a organizar tus productos y que los clientes encuentren mas rapido lo que necesitan</small>
                        
                        <input type="text" name="cat_name" class="form-control" style="margin-top: 0.5em" placeholder="Ingresa el nombre de la categoria" required>

                        <div style="margin-top: 0.5em">
                            <button type="submit" class="btn btn-primary">Guardar</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>

@endsection