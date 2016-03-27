{{ tag_html("div",["class": "page-header"])}}
    {{ tag_html('h1')}} SMS Multi Group{{ tag_html_close('h1')}}
{{tag_html_close("div")}}

{{ form("", "class":"form-horizontal","role":"form","method": "post") }}
    <div class="form-group">
	    <label class="control-label col-sm-2" for="email">Group : </label>
	    <div class="col-sm-10">
			<select id="group" name="group[]" class="form-control" multiple="multiple">
					{% for grup in kel %}
					<option value="{{ grup['_id'] }}">{{ grup['_id'] }}</option>
					{% endfor %}
			</select>
		
	    </div>
	</div>
	<div class="form-group">
    	<label class="control-label col-sm-2" for="pwd">Message:</label>
    	<div class="col-sm-10"> 
			{{ text_area('msg','class':'form-control','rows':'5') }}
    	</div>
  	</div>
  	<div class="form-group"> 
    	<div class="col-sm-offset-2 col-sm-10">
			{{ submit_button('Send','class':'btn btn-default') }}
    	</div>
  	</div>
    
{{ endForm() }}
<!-- Initialize the plugin: -->
<script type="text/javascript">
    $(document).ready(function() {
        $('#group').multiselect({
			includeSelectAllOption: true,
		    allSelectedText: 'All Selected...'
		});
    });
</script>


<p>
{{ link_to('','Back') }}
</p>