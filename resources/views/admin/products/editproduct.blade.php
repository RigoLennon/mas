@extends('admin.sidebar')

@section('editprod')
    <h1>Editar producto</h1>

    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <form method="POST" action="{{ route('updateproduct', $product->id) }}">
                    @method('PUT')
                    @csrf
                    <div class="form-row">
                        <div class="form-group">
                            <label>Nombre del producto</label>
                            <input type="text" name="name" class="form-control" value="{{ $product->name }}" required>

                            <label>Descripcion del producto</label>
                            <input type="text" name="description" class="form-control" value="{{ $product->description }}" required>

                            <label>Precio</label>
                            <input type="number" name="price" class="form-control" value="{{ $product->price }}" required>

                            <label>Descripcion corta</label>
                            <input type="text" name="short_descrip" class="form-control" value="{{ $product->short_descrip }}" required>
                        </div>

                        <div class="form-group">
                            <label for="exampleFormControlSelect1">Example select</label>
                            <select class="form-control" name="cat_id" id="exampleFormControlSelect1">
                                <option>Seleccionar categoria...<option>
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
                    <div>
                        <button type="submit" class="btn btn-primary">Guardar</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
@endsection