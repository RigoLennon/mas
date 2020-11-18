@extends('admin.sidebar')

@section('newcat')
    <h1>Nueva categoria</h1>

    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <form method="POST" action="{{ route('postcategory') }}">
                    @csrf
                    <div class="form-row">
                        <div class="form-group">
                            <label>Nombre de la categoria</label>
                            <input type="text" name="cat_name" class="form-control" placeholder="Ingresa el nombre de la categoria" required>
                        </div>
                    </div>
                    <div>
                        <button type="submit" class="btn btn-primary">Guardar</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

@endsection