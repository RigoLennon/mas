@extends('admin.sidebar')

@section('editprod')
<div class="container">
    <div class="col-md-12">
        <h1>Editar producto</h1>
        <form method="POST" action="{{ route('updateproduct', $product->id) }}">
        @method('PUT')
        @csrf

        <div class="row">
            <div class="col">
                <label>Nombre del producto</label>
                <input type="text" name="name" class="form-control" value="{{ $product->name }}" required>
                
                <label>Descripcion del producto</label>
                <input type="text" name="description" class="form-control" value="{{ $product->description }}" required>
                
                <label>Descripcion corta</label>
                <input type="text" name="short_descrip" class="form-control" value="{{ $product->short_descrip }}" required>
            </div>

            <div class="col">
                <label>Precio</label>
                <input type="number" name="price" class="form-control col-6" value="{{ $product->price }}" required>

                <label for="exampleFormControlSelect1">Example select</label>
                <select class="form-control" name="cat_id" id="exampleFormControlSelect1" required>
                    <option value="">Selecciona una categoria...</option>
                        @foreach ($cat_list as $list)
                            @if ($list->cat_status == '1')
                                <option value="{{ $list->id }}">{{ $list->cat_name }}</option>
                            @else
                                No existen categorias 
                            @endif
                        @endforeach
                </select>
            </div>
        </div>
    </div>
</div>
@endsection