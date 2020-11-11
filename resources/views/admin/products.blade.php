@extends('admin.sidebar')

@section('products')
    <div class="container">
        <div class="row ">
            <div class="col-md-12">
                <div class="col-md-12">
                    <h1>Tienes {{ $countProds }} productos registrados</h1>
                    <small>Direccion:</small>
                    <hr>
                </div>
                <div class="col-md-12">
                    <div class="col-md-6">
                        <div style="padding-bottom: 1em">
                            <a href="{{url('/admin/products/create')}}" class="btn btn-primary btn-lg" role="button" aria-pressed="true">Añadir nuevo producto</a>
                        </div>
                        <ul class="list-group">
                            <li class="list-group-item list-group-item-warning">Listado de productos</li>
                            @foreach ($products as $prod)
                                <li class="list-group-item">
                                    {{ $prod->name }}
                                    |
                                    @if ($prod->cat_status == '1')
                                        {{ $prod->cat_name}}
                                    @else
                                        Sin categoria
                                    @endif
                                    <a href="{{ route('deleteproduct', $prod->id) }}" class="btn btn-xs btn-danger" onclick="return confirm('¿Quieres eliminar esta categoria?')">Eliminar</i></a>
                                </li>
                            @endforeach
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

