@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-md-center">
            <div class="col-md-6">
                <form method="POST" action="{{ route('login') }}">
                    @csrf

                    <div class="form-group">
                        <label for="email">Correo</label>
                        <input type="email" id="email" class="form-control  @error('email') is-invalid @enderror" name="email" required autocomplete="email" aria-describedby="email" autofocus>
                        
                        @error('email')
                            <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>

                    <div class="form-group">
                        <label for="password">Contraseña</label>
                        <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="current-password">

                        @error('password')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>

                    <div class="form-group form-check">
                        <input type="checkbox" class="form-check-input" name="remember" id="remember" {{ old('remember') ? 'checked' : ''}}>
                        <label class="form-check-label" for="remember">Recordar credenciales</label>
                    </div>

                    <div class="form-group">
                        <button type="submit" class="btn btn-primary">Entrar</button>

                        @if (Route::has('password.request'))
                            <a class="btn btn-link" href="{{ route('password.request') }}">¿Olvido su contraseña?</a>
                        @endif
                    </div>
                </form>
            </div>
        </div>
    </div>
@endsection
