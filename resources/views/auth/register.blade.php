@extends('layouts.app')

@section('content')
  
<section class="section-login">

  <div class="center-container">

    <!--header-->
    <div class="header-w3l">
      <h1>Formulaire d'inscription</h1>
    </div>
    <!--//header-->
    
    <!--main-->
    <div class="main-content-agile">
        <h2>Inscrivez-vous maintenant !!!<i class="fa mail fa-envelope"></i></h2>
        <h3>Rejoignez-nous gratuitement !!!</h3>
      <div class="sub-main-w3"> 
        <form action="{{route('register')}}" method="POST">
          {{ csrf_field() }}
          <div class="field form-group{{ $errors->has('name') ? ' has-error' : '' }}">
            <i class="fa fa-user"></i>
            <input id="name" type="text" name="name" value="{{ old('name') }}" placeholder="Votre Nom" required autofocus>

            @if ($errors->has('name'))
                 <span class="help-block">
                     <strong>{{ $errors->first('name') }}</strong>
                </span>
            @endif
          </div>
          <div class="field form-group{{ $errors->has('l_name') ? ' has-error' : '' }}">
            <i class="fa fa-user"></i>
            <input id="l_name" type="text" name="l_name" value="{{ old('l_name') }}" placeholder="Last name" required autofocus>

            @if ($errors->has('name'))
                 <span class="help-block">
                     <strong>{{ $errors->first('l_name') }}</strong>
                </span>
            @endif
          </div>
          <div class="field form-group{{ $errors->has('f_name') ? ' has-error' : '' }}">
            <i class="fa fa-user"></i>
            <input id="f_name" type="text" name="f_name" value="{{ old('f_name') }}" placeholder="first name" required autofocus>

            @if ($errors->has('f_name'))
                 <span class="help-block">
                     <strong>{{ $errors->first('f_name') }}</strong>
                </span>
            @endif
          </div>
          <div class="field form-group{{ $errors->has('m_name') ? ' has-error' : '' }}">
            <i class="fa fa-user"></i>
            <input id="m_name" type="text" name="m_name" value="{{ old('m_name') }}" placeholder="middle name" required autofocus>

            @if ($errors->has('m_name'))
                 <span class="help-block">
                     <strong>{{ $errors->first('m_name') }}</strong>
                </span>
            @endif
          </div>
          <div class="field form-group{{ $errors->has('username') ? ' has-error' : '' }}">
            <i class="fa fa-user"></i>
            <input id="username" type="text" name="username" value="{{ old('username') }}" placeholder="username" required autofocus>

            @if ($errors->has('m_name'))
                 <span class="help-block">
                     <strong>{{ $errors->first('username') }}</strong>
                </span>
            @endif
          </div>
          <div class="field form-group{{ $errors->has('email') ? ' has-error' : '' }}">
            <i class="fa fa-envelope"></i>
            <input id="email" type="email" name="email" value="{{ old('email') }}" placeholder="Votre E-mail" required>

            @if ($errors->has('email'))
                <span class="help-block">
                  <strong>{{ $errors->first('email') }}</strong>
                 </span>
            @endif
          </div>
          <div class="field form-group{{ $errors->has('password') ? ' has-error' : '' }}">
            <i class="fa fa-lock"></i>
            <input id="password" type="password" name="password" placeholder="Votre mot de passe" required>

          @if ($errors->has('password'))
              <span class="help-block">
                <strong>{{ $errors->first('password') }}</strong>
              </span>
          @endif

          </div>
          <div class="field">
            <i class="fa fa-lock"></i>
            <input id="password-confirm" type="password" name="password_confirmation" placeholder="Confirmer Votre mot de passe" required>
          </div>
          <p><i class="fa fa-lock"></i> Enregistrement s&eacute;curiser</p>
          <input type="submit" value="S'enregistrer">
        </form>

        <a href="{{ url('/auth/github') }}" class="btn btn-github">
          <i class="fab fa-github" style="width: 20px;"></i> Github</a>
        <a href="{{ url('/auth/twitter') }}" class="btn btn-twitter">
          <i class="fab fa-twitter" style="width: 20px;"></i> Twitter</a>
        <a href="{{ url('/auth/google') }}" class="btn btn-google">
          <i class="fab fa-google" style="width: 20px;"></i> Google</a>
      </div>
    </div>
    <!--//main-->
  </div>
</section>  
@stop