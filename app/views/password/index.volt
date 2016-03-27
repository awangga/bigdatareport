<div class="page-header">
    <h1>Select Group</h1>
</div>

<div class="table-responsive">  
<table class="table">
	<thead>
	      <tr>
	        <th>Group</th>
	      </tr>
	    </thead>
		<tbody>

			{% for group in kel %}
		      <tr>
		        <td>{{ link_to('password/group/'~group['_id'],group['_id']) }}</td>
		      </tr>
			{% endfor %}
			
		</tbody>
</table>
</div>

