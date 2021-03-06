@extends('layouts/app')

@section('content')


 <div class="clearfix"> </div>

<div class="container" style="margin-top: 30px;">
    <div class="row">
        <div class="col-md-3 ">
             <div class="list-group ">
              <a href="#" class="list-group-item list-group-item-action active">Tableau de Bord</a>
              <a href="#" class="list-group-item list-group-item-action">Gestion des utilisateurs</a>
              <a href="#" class="list-group-item list-group-item-action">Used</a>
              <a href="#" class="list-group-item list-group-item-action">Enquiry</a>
              <a href="#" class="list-group-item list-group-item-action">Dealer</a>
              <a href="#" class="list-group-item list-group-item-action">Media</a>
              <a href="#" class="list-group-item list-group-item-action">Post</a>
              <a href="#" class="list-group-item list-group-item-action">Category</a>
              <a href="#" class="list-group-item list-group-item-action">New</a>
              <a href="#" class="list-group-item list-group-item-action">Comments</a>
              <a href="#" class="list-group-item list-group-item-action">Appearance</a>
              <a href="#" class="list-group-item list-group-item-action">Reports</a>
              <a href="#" class="list-group-item list-group-item-action">Settings</a>
              
              
            </div> 
        </div>

        <!-- {{ asset('storage/'.Auth::user()->avatar) }} -->
        <div class="col-md-9">
            <div class="card">
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-12">
                            <img src="/uploads/avatars/{{ $user->avatar }}" style="width: 120px; height: 120px; float: left; border-radius: 50%; margin-right: 25px;">
                            <h4>{{ $user->name }}</h4>
                            <hr>

                            <form enctype="multipart/form-data" action="/profile" method="post">
                                <label>Mettre à jour l'image Utilisateur</label>
                                <input type="file" name="avatar">
                                <input type="hidden" name="_token" value="{{ csrf_token() }}">
                                <input type="submit" class="pull-right btn btn-xl btn-primary">
                            </form>


                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <form>
                              <div class="form-group row">
                              </div>
                              <div class="form-group row">
                                <label for="name" class="col-4 col-form-label">Nom</label> 
                                <div class="col-8">
                                  <input id="name" name="name" placeholder="{{Auth::user()->name}}" class="form-control here" type="text">
                                </div>
                              </div>
                              <div class="form-group row">
                                <label for="lastname" class="col-4 col-form-label">Pr&eacute;nom</label> 
                                <div class="col-8">
                                  <input id="lastname" name="lastname" placeholder="{{Auth::user()->f_name}}" class="form-control here" type="text">
                                </div>
                              </div>
                              <div class="form-group row">
                                <label for="email" class="col-4 col-form-label">Email</label> 
                                <div class="col-8">
                                  <input id="email" name="email" placeholder="{{Auth::user()->email}}" class="form-control here" type="text">
                                </div>
                              </div>
                              <div class="form-group row">
                                <label for="website" class="col-4 col-form-label">Website</label> 
                                <div class="col-8">
                                  <input id="website" name="website" placeholder="website" class="form-control here" type="text">
                                </div>
                              </div>
                              <div class="form-group row">
                                <label for="newpass" class="col-4 col-form-label">Mot de passe</label> 
                                <div class="col-8">
                                  <input id="newpass" name="newpass" placeholder="Laissez vide pour garder le même" class="form-control here" type="text">
                                </div>
                              </div> 
                              <div class="form-group row">
                                <div class="offset-4 col-8">
                                  <button name="submit" type="submit" class="btn btn-primary">Update My Profile</button>
                                </div>
                              </div>
                            </form>
                        </div>
                    </div>
                    
                </div>
            </div>
        </div>
    </div>
</div>
@stop