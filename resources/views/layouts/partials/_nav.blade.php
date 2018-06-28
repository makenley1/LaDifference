<div class="small-top">
  <div class="container">
    <div class="row">
      <div class="col-lg-4  ">
        <div id="google_translate_element"></div><script type="text/javascript">
          function googleTranslateElementInit() {
            new google.translate.TranslateElement({pageLanguage: 'fr', includedLanguages: 'fr,ht,en', layout: google.translate.TranslateElement.InlineLayout.SIMPLE}, 'google_translate_element');
          }
    </script><script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
      </div>
       
      <div class="col-lg-3 offset-lg-5">
        <div class="social-icon"> <a target="_blank" href="#" class="fab fa-facebook"></a> <a target="_blank" href="#" class=" fab fa-twitter"></a> <a target="_blank" href="#" class=" fab fa-google-plus"></a> <a target="_blank" href="#" class=" fab fa-linkedin"></a> <a target="_blank" href="#" class=" fab fa-youtube"></a> </div>
      </div>
    </div>
  </div>      
</div>
 
<div class="top-head left">
  <div class="container">
    <div class="row">
      <div class="col-6 col-lg-4">
        <h1><a href="{{'/'}} " class="notranslate"> MyHôtel</a><small>Guide des Hôtels Haitiens</small></h1>
      </div>
       
       @if(Auth::guest())
      <div class="col-6 col-lg-3 ml-auto admin-bar hidden-sm-down">
        <nav class="nav nav-inline">
          <a href="{{ route('login') }}" class="nav-link"><i class="fas fa-sign-in-alt"></i>Connecté</a>
          <a href="{{ route('register') }}" class="nav-link"><i class="far fa-registered"></i> S'enregistrer</a>
        </nav>       
      </div>

      @else
      <div class="col-md-6 col-lg-3 ml-auto admin-bar hidden-sm-down">
        <nav class="nav nav-inline">
          <li class="dropdown">
            <a href="{{ route('logout') }}" class="dropdown-toggle" data-toggle="dropdown">{{ Auth::user()->f_name }}</a>

            <ul class="dropdown-menu" style="background-color: currentColor;">
              <li><a href="{{ url('/profile') }} ">Profile</a></li>
              <li><a href="{{ url('/logout') }} ">Déconnecter</a></li>
            </ul>
          </li>
          <img class="img-fluid rounded-circle" src="{{ asset('storage/'.Auth::user()->avatar) }}">
        </nav>
      </div>
      @endguest
    </div>                  
  </div>
</div>

<section class="top-nav">
  <nav class="navbar navbar-expand-lg py-0 navbar-light">
    <div class="container">
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      {{ menu('main','layouts/partials/menus/main') }}

      <div class="aa-input-container" id="aa-input-container">
        <input type="search" id="aa-search-input" class="aa-input-search" placeholder="Rechercher un Hôtel" name="search" autocomplete="off" />
          <svg class="aa-input-icon" viewBox="654 -372 1664 1664">
            <path d="M1806,332c0-123.3-43.8-228.8-131.5-316.5C1586.8-72.2,1481.3-116,1358-116s-228.8,43.8-316.5,131.5  C953.8,103.2,910,208.7,910,332s43.8,228.8,131.5,316.5C1129.2,736.2,1234.7,780,1358,780s228.8-43.8,316.5-131.5  C1762.2,560.8,1806,455.3,1806,332z M2318,1164c0,34.7-12.7,64.7-38,90s-55.3,38-90,38c-36,0-66-12.7-90-38l-343-342  c-119.3,82.7-252.3,124-399,124c-95.3,0-186.5-18.5-273.5-55.5s-162-87-225-150s-113-138-150-225S654,427.3,654,332  s18.5-186.5,55.5-273.5s87-162,150-225s138-113,225-150S1262.7-372,1358-372s186.5,18.5,273.5,55.5s162,87,225,150s113,138,150,225  S2062,236.7,2062,332c0,146.7-41.3,279.7-124,399l343,343C2305.7,1098.7,2318,1128.7,2318,1164z" />
          </svg>
      </div>     
    </div>
  </nav>
</section>

@section('extra-js')
    <!-- Include AlgoliaSearch JS Client and autocomplete.js library -->
    <script src="https://cdn.jsdelivr.net/algoliasearch/3/algoliasearch.min.js"></script>
    <script src="https://cdn.jsdelivr.net/autocomplete.js/0/autocomplete.min.js"></script>
    <script src="{{ asset('js/algolia.js') }}"></script>
@endsection
 