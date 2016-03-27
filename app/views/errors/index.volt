<div class="page-header">
    <h1>Errors Log</h1>
</div>

<p>List of Failed to Send : </p>


<div class="table-responsive">  
<table class="table">
	<thead>
	      <tr>
	        <th>id</th>
	        <th>Number</th>
	        <th>Message</th>
	        <th>Date Time</th>
	      </tr>
	    </thead>
		<tbody>
			{% for error in response %}
			{% set err =  error|json_decode %}
			{% if(not(err is empty)) %}
		      <tr>
		        <td><?php 
				$acc = $err->_id;
				print_r($acc->{'$oid'}); ?>
			</td>
		        <td>{{ err.rcpt }}</td>
		        <td>{{ err.msg }}</td>
		        <td><?php 
				$acc = $err->timestamp;
				$date = date('M j', $acc->{'$date'});
				print_r($date); ?></td>
		      </tr>
		{% endif %}
			{% endfor %}
		</tbody>
</table>
</div>