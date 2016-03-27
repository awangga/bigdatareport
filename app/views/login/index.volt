{{ tag_html("div",["class": "page-header"])}}
    {{ tag_html('h1')}} Login {{ tag_html_close('h1')}}
{{tag_html_close("div")}}

<form class="form-horizontal" role="form" method="post">
  <div class="form-group">
    <label class="control-label col-sm-2" for="email">Alias : </label>
    <div class="col-sm-10">
		{{ text_field('rcpt','class':'form-control','placeholder':'alias of user')}}
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2" for="pwd">Password:</label>
    <div class="col-sm-10"> 
		{{ password_field("password", "size": 30) }}
    </div>
  </div>
  <div class="form-group"> 
    <div class="col-sm-offset-2 col-sm-10">
		{{ submit_button('Send','class':'btn btn-default') }}
    </div>
  </div>
</form>

