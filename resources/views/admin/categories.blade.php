@extends('admin.sidebar')

@section('categories')
    <div class="container">
        <div class="row ">
            <div class="col-md-12">
                    @foreach ($cat_rest as $ct)
                        <h1 class="cat-txt-center">Categorias {{ $ct->name }} </h1>
                    @endforeach
                <hr>
            </div>
            <div class="col-md-12">
                <div style="padding-bottom: 1em">
                    <a href="{{url('/admin/categories/create')}}" class="btn btn-primary btn-lg" role="button" aria-pressed="true">Añadir nueva categoria</a>
                </div>

                @foreach ($categories as $cat)
                    <div class="cardgrad blue">
                        <h1>{{ $cat->cat_name}}</h1>
                        <p>Esta categoria cuenta con XX productos</p>
                        <a href="{{ route('deletecategory', $cat->id) }}" class="btn btn-xs btn-danger" onclick="return confirm('¿Quieres eliminar esta categoria?')">Eliminar</i></a>
                    </div>
                @endforeach
            </div>
        </div>
    </div>
@endsection