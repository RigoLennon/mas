@extends('admin.sidebar')

@section('restaurant')
    <div class="container">
        <div class="row ">
            <div class="col-md-12">
                @foreach ($restaurant as $rest)
                    <div class="col-md-12">
                        <h1>{{ $rest->name }}</h1>
                        <hr>
                    </div>
                    <div class="col-md-12">
                        <div class="col-md-6">
                            <p>contenido</p>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    </div>
@endsection

