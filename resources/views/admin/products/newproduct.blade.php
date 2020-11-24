@extends('admin.sidebar')

@section('newprod')
    <h1>Nueva categoria</h1>

    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <form method="POST" action="{{ route('postproduct') }}" enctype="multipart/form-data">
                    @csrf
                    <div class="form-row">
                        <div class="form-group">
                            <label>Nombre del producto</label>
                            <input type="text" name="name" class="form-control" placeholder="Ingresa el nombre de la categoria" required>

                            <label>Descripcion del producto</label>
                            <input type="text" name="description" class="form-control" placeholder="Ingresa el nombre de la categoria" required>

                            <label>Precio</label>
                            <input type="number" name="price" class="form-control" placeholder="Ingresa el nombre de la categoria" required>

                            <label>Descripcion corta</label>
                            <input type="text" name="short_descrip" class="form-control" placeholder="Ingresa el nombre de la categoria" required>
                        </div>

                        <div class="form-group">
                            <label for="exampleFormControlSelect1">Elige una categoria</label>
                            <select class="form-control" name="cat_id" id="exampleFormControlSelect1">
                                @foreach ($cat_list as $list)
                                    <option value="{{ $list->id }}">{{ $list->cat_name }}</option>
                                @endforeach
                            </select>

                            <label for="image">Subir foto</label>
                            <input required type="file" class="form-control" name="image_1" id="image">
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