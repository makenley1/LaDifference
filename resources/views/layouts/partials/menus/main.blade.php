<div class="collapse navbar-collapse" id="navbarSupportedContent">
	<ul class="nav navbar-nav" style="width: 100%;">
	    @foreach($items as $menu_item)
	        <li><a href="{{ $menu_item->link() }}">{{ $menu_item->title }}</a></li>
	    @endforeach
	</ul>	
</div>