<div class="page-header">
    <h1>Select Group</h1>
</div>

<div class="table-responsive">  
<table class="table">
	<thead>
	      <tr>
	        <th>Name</th>
			<th>Alias</th>
	      </tr>
	    </thead>
		<tbody>

			{% for user in users %}
		      <tr>
				<td>{{ user.name }}</td>
		        <td>{{ link_to('password/set/'~user._id,user.alias) }}</td>
		      </tr>
			{% endfor %}
			
		</tbody>
</table>
</div>

