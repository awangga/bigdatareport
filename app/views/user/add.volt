{{ tag_html("div",["class": "page-header"])}}
    {{ tag_html('h1')}} Add User {{ tag_html_close('h1')}}
{{tag_html_close("div")}}


{{ form("", "class":"form-horizontal","role":"form","method": "post") }}
    <div class="form-group">
		<label class="control-label col-sm-2" for="name">Name : </label>
	    <div class="col-sm-10">
			{{ text_field('name','class':'form-control','placeholder':'Sukijan Rusman')}}
	    </div>
	</div>
	<div class="form-group">
		<label class="control-label col-sm-2" for="alias">Alias : </label>
	    <div class="col-sm-10">
			{{ text_field('alias','class':'form-control','placeholder':'skrusman')}}
	    </div>
	</div>
	<div class="form-group">
		<label class="control-label col-sm-2" for="number">Number : </label>
	    <div class="col-sm-10">
			{{ text_field('num','class':'form-control','placeholder':'081100000')}}
	    </div>
	</div>
	<div class="form-group">
			<label class="control-label col-sm-2" for="number">New Group : </label>
		    <div class="col-sm-10">
				{{ text_field('group','class':'form-control','placeholder':'groupname')}}
		    	<p>
				{{ link_to('user','Existing Group?') }}
				</p>
			</div>
	</div>
  	<div class="form-group"> 
    	<div class="col-sm-offset-2 col-sm-10">
			{{ submit_button('Save','class':'btn btn-default') }}
    	</div>
  	</div>
    
{{ endForm() }}