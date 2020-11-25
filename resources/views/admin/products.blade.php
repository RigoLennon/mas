@extends('admin.sidebar')

@section('products')
<ul class="list-group list-group-horizontal">
    <li class="list-group-item">Cras justo odio</li>
    <li class="list-group-item">Dapibus ac facilisis in</li>
    <li class="list-group-item">Morbi leo risus</li>
</ul>
    <div class="container">
        <div class="row ">
            <div class="col-md-12">
                <div class="col-md-12">
                    <h1 class="prod-txt-center">Tienes {{ $countProds }} productos registrados</h1>
                    <hr>
                </div>
                <div class="col-md-12">

                    <ul class="list-group list-group-horizontal">
                        <li class="list-group-item">Cras justo odio</li>
                        <li class="list-group-item">Dapibus ac facilisis in</li>
                        <li class="list-group-item">Morbi leo risus</li>
                    </ul>
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
                                    |
                                    <img src="/img/products/{{ $prod->image_1}}" alt="Girl in a jacket" width="200" height="200">
                                    <a href="{{ route('editproduct', $prod->id)}}" class="btn btn-xs btn-warning">Editar</a>
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

