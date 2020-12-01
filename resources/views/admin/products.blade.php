@extends('admin.sidebar')

@section('products')
    <div class="container">
        <div class="row ">
            <div class="col-md-12">
                <div class="col-md-12">
                    <h1 class="prod-txt-center">Tienes {{ $countProds }} productos registrados</h1>
                    <hr>
                </div>
                <div class="col-md-12">
                    <div style="padding-bottom: 1em">
                        <a href="{{url('/admin/products/create')}}" class="btn btn-primary btn-lg" role="button" aria-pressed="true">
                            Añadir nuevo producto
                            <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-plus-square" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                <path fill-rule="evenodd" d="M14 1H2a1 1 0 0 0-1 1v12a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1zM2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2z"/>
                                <path fill-rule="evenodd" d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z"/>
                            </svg>
                        </a>
                        <div class="dropdown" style="float: right;">
                            <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Filtrar por Categoria
                            </button>
                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                @foreach ($products as $cat)
                                    <a class="dropdown-item" href="#">{{ $cat->cat_name}}</a>
                                    <a class="dropdown-item" href="#">Aun no funca :'v</a>
                                @endforeach
                            </div>
                        </div>
                    </div>                    
                    
                    <table class="table">
                        <thead>
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">Nombre</th>
                                <th scope="col">Categoria</th>
                                <th scope="col">Fecha de creacion</th>
                                <th scope="col">Imagen principal</th>
                                <th scope="col">Acciones</th>
                                </tr>
                        </thead>
                        <tbody>
                            @foreach ($products as $prod)
                                <tr>
                                    <th scope="row">{{ $prod->id}}</th>
                                    <td>{{ $prod->name }}</td>
                                    @if ($prod->cat_status == '1')
                                        <td>{{ $prod->cat_name }}</td>
                                    @else 
                                        <td>Sin categoria</td>
                                    @endif
                                    <td>{{ $prod->created_at}}</td>
                                    <td style="width: auto; height: auto;"><img src="/img/products/{{ $prod->image_1}}" alt="{{ $prod->image_1 }}" style="width: 50%; height: auto;"></td>
                                    <td>
                                        <a href="{{ route('editproduct', $prod->id)}}" class="btn btn-xs btn-warning" style="padding: 0.5em">
                                            <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-pencil" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                                <path fill-rule="evenodd" d="M12.146.146a.5.5 0 0 1 .708 0l3 3a.5.5 0 0 1 0 .708l-10 10a.5.5 0 0 1-.168.11l-5 2a.5.5 0 0 1-.65-.65l2-5a.5.5 0 0 1 .11-.168l10-10zM11.207 2.5L13.5 4.793 14.793 3.5 12.5 1.207 11.207 2.5zm1.586 3L10.5 3.207 4 9.707V10h.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.5h.293l6.5-6.5zm-9.761 5.175l-.106.106-1.528 3.821 3.821-1.528.106-.106A.5.5 0 0 1 5 12.5V12h-.5a.5.5 0 0 1-.5-.5V11h-.5a.5.5 0 0 1-.468-.325z"/>
                                            </svg>
                                            Editar
                                        </a>
                                        <a href="{{ route('deleteproduct', $prod->id) }}" class="btn btn-xs btn-danger" style="padding: 0.5em" onclick="return confirm('¿Quieres eliminar este producto?')">
                                            <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-trash" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                                <path d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0V6z"/>
                                                <path fill-rule="evenodd" d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1v1zM4.118 4L4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4H4.118zM2.5 3V2h11v1h-11z"/>
                                            </svg>
                                            Eliminar
                                        </a>
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="col-md-12">
                {{ $products->links() }}
            </div>
        </div>
    </div>
@endsection

