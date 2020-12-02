@extends('admin.sidebar')

@section('newprod')
<div class="container">
    <div class="col-md-12">
        <h1>Nuevo Producto</h1>

        <form method="POST" action="{{ route('postproduct') }}" enctype="multipart/form-data">
            @csrf
            <div class="form-row">
                
                    <div class="form-group">
                        <label for="nombreprod">Nombre del producto</label>
                        <input type="text" class="form-control" id="nombreprod" name="name" required>
                        <small id="nombreprodHelp" class="form-text text-muted">*Nombre del producto sin variaciones</small>
                    </div>
                    <div class="form-group">
                        <label for="fulldescprod">Descripcion del producto</label>
                        <textarea class="form-control" id="fulldescprod" rows="2" name="description" required></textarea>
                        <small id="fulldescprodHelp" class="form-text text-muted">*Detalla lo mas que puedas tu producto</small>
                    </div>
                    <div class="form-group">
                        <label for="shrtdescprod">Descripcion corta del producto</label>
                        <input type="text" class="form-control" id="shrtdescprod" name="short_descrip" required>
                        <small id="shrtdescprodHelp" class="form-text text-muted">*Describe tu producto en menos de 50 caracteres</small>
                    </div>
                
            </div>
            
            <div class="form-row">
                
                    <div class="form-group">
                        <label for="price">Precio del producto</label>
                        <input type="number" class="form-control" id="price" name="price" required>
                        <small id="priceHelp" class="form-text text-muted">*Precio total de tu producto</small>
                    </div>
                    <div class="form-group">
                        <label for="category">Elige una categoria</label>
                        <select class="form-control" name="cat_id" required>
                            <option value="">Selecciona una categoria...</option>
                            @foreach ($cat_list as $list)
                                <option value="{{ $list->id }}">{{ $list->cat_name }}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="img">Sube una foto de tu producto</label>
                        <input type="file" class="form-control" id="img" name="image_1" required>
                        <small id="img" class="form-text text-muted">*Imgen llamativa de tu producto</small>
                    </div>
                
            </div>

            <button type="submit" class="btn btn-primary">Guardar</button>
        </form>
    </div>
</div>

@endsection