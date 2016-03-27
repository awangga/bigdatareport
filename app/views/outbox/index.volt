<div class="page-header">
    <h1>Outbox!</h1>
</div>

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

			{% for outbox in response %}
			{% set out =  outbox|json_decode %}
			{% if(not(out is empty)) %}
		      <tr>
		        <td><?php 
				$acc = $out->_id;
				print_r($acc->{'$oid'}); ?>
			</td>
		        <td>{{ out.rcpt }}</td>
		        <td>{{ out.msg }}</td>
		        <td><?php 
				$acc = $out->timestamp;
				$date = date('M j', $acc->{'$date'});
				print_r($date); ?></td>
		      </tr>
			{% endif %}
			{% endfor %}
			
		</tbody>
</table>
</div>

