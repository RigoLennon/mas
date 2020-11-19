@extends('admin.sidebar')

@section('categories')
    <div class="container">
        <div class="row ">
            <div class="col-md-12">
                    @foreach ($cat_rest as $ct)
                        <h1>Categorias {{ $ct->name }}</h1>
                    @endforeach
                <hr>
            </div>
            <div class="col-md-12">
                <div class="col-md-6">
                    <div style="padding-bottom: 1em">
                        <a href="{{url('/admin/categories/create')}}" class="btn btn-primary btn-lg" role="button" aria-pressed="true">Añadir nueva categoria</a>
                    </div>
                    <ul class="list-group">
                        <li class="list-group-item list-group-item-warning">Listado de categorias</li>
                        @foreach ($categories as $cat)
                            <li class="list-group-item">
                                {{ $cat->cat_name }}
                                <a href="{{ route('deletecategory', $cat->id) }}" class="btn btn-xs btn-danger" onclick="return confirm('¿Quieres eliminar esta categoria?')">Eliminar</i></a>
                            </li>
                        @endforeach
                    </ul>
                </div>
            </div>
        </div>
    </div>
@endsection