<!DOCTYPE html>
<html lang="en">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta charset="utf-8">
	    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	    <meta name="viewport" content="width=device-width, initial-scale=1">
		<meta name="description" content="Peuyeum : SMS Gateway Web Service Interface Module">
	    <meta name="author" content="Rolly Maulana Awangga">
	<title>{{ title }} SMS Gateway Web Service Interface Module</title>
		{{ stylesheet_link("css/bootstrap.min.css") }}
		{{ stylesheet_link("css/simple-sidebar.css") }}
		{{ stylesheet_link("font-awesome-4.3.0/css/font-awesome.min.css") }}
		{{ javascript_include("js/jquery-1.11.2.min.js") }}
		{{ javascript_include("js/bootstrap.min.js") }}

		{{ stylesheet_link("css/bootstrap-multiselect.css") }}
		{{ javascript_include("js/bootstrap-multiselect.js") }}
    </head>

    <body>
			<nav class="navbar navbar-default no-margin">
		    <!-- Brand and toggle get grouped for better mobile display -->
		                <div class="navbar-header fixed-brand">
		                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"  id="menu-toggle">
		                      <span class="glyphicon glyphicon-th-large" aria-hidden="true"></span>
		                    </button>
							{{ link_to('','<i class="fa fa-rocket fa-4"></i> peuyeum', 'class': 'navbar-brand') }}
		                     
		                </div><!-- navbar-header-->

		                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
		                            <ul class="nav navbar-nav">
		                                <li class="active" ><button class="navbar-toggle collapse in" data-toggle="collapse" id="menu-toggle-2"> <span class="glyphicon glyphicon-th-large" aria-hidden="true"></span></button></li>
		                            </ul>
		                </div><!-- bs-example-navbar-collapse-1 -->
		    </nav>
		    <div id="wrapper">
		        <!-- Sidebar -->
		        <div id="sidebar-wrapper">
		            <ul class="sidebar-nav nav-pills nav-stacked" id="menu">

		                <li {% if selectmenu == "messaging" %}class="active"{% endif %}>
		                    <a href="#"><span class="fa-stack fa-lg pull-left"><i class="fa fa-envelope-o fa-stack-1x "></i></span>Messaging</a>
		                       <ul class="nav-pills nav-stacked" style="list-style-type:none;">
		                        <li {% if selectmenu == "mgroups" %}class="active"{% endif %}>
								{{ link_to('send/groups','<span class="fa-stack fa-lg pull-left"><i class="fa fa-check-square-o fa-stack-1x "></i></span>Multi Groups') }}
								</li>
								<li {% if selectmenu == "mgroup" %}class="active"{% endif %}>
								{{ link_to('send/group','<span class="fa-stack fa-lg pull-left"><i class="fa fa-users fa-stack-1x "></i></span>Group') }}
								</li>
		                        <li {% if selectmenu == "mpersonal" %}class="active"{% endif %}>
								{{ link_to('send/personal','<span class="fa-stack fa-lg pull-left"><i class="fa fa-user fa-stack-1x "></i></span>Personal') }}
								</li>
		                    	</ul>
		                </li>
		            	<li {% if selectmenu == "comments" %}class="active"{% endif %}>
							{{ link_to('comments','<span class="fa-stack fa-lg pull-left"><i class="fa fa-comments fa-stack-1x "></i></span>Comments') }}
		                </li>
		                <li {% if selectmenu == "outbox" %}class="active"{% endif %}>
							{{ link_to('outbox','<span class="fa-stack fa-lg pull-left"><i class="fa fa-external-link fa-stack-1x "></i></span>Outbox') }}
		                </li>
		                <li {% if selectmenu == "sentitems" %}class="active"{% endif %}>
							{{ link_to('sentitems','<span class="fa-stack fa-lg pull-left"><i class="fa fa-check fa-stack-1x "></i></span>Sent Items') }}
		                </li>
		                <li {% if selectmenu == "errors" %}class="active"{% endif %}>
							{{ link_to('errors','<span class="fa-stack fa-lg pull-left"><i class="fa fa-close fa-stack-1x "></i></span>Errors') }}
		                </li>
		                <li {% if selectmenu == "user" %}class="active"{% endif %}>
							{{ link_to('user','<span class="fa-stack fa-lg pull-left"><i class="fa fa-user fa-stack-1x "></i></span>User') }}
		                </li>
						<li {% if selectmenu == "password" %}class="active"{% endif %}>
							{{ link_to('password','<span class="fa-stack fa-lg pull-left"><i class="fa fa-key fa-stack-1x "></i></span>Password') }}
		                </li>
						<li {% if selectmenu == "about" %}class="active"{% endif %}>
							{{ link_to('about','<span class="fa-stack fa-lg pull-left"><i class="fa fa-users fa-stack-1x "></i></span>About') }}
		                </li>
						
		            </ul>
		        </div><!-- /#sidebar-wrapper -->
		        <!-- Page Content -->
		        <div id="page-content-wrapper">
		            <div class="container-fluid xyz">
		                <div class="row">
		                    <div class="col-lg-12">
        {{ content() }}
													</div>
								                </div>
								            </div>
								        </div>
								        <!-- /#page-content-wrapper -->

								    </div>
								    <!-- /#wrapper -->
								    <!-- jQuery -->

								{{ javascript_include("js/sidebar_menu.js") }}
    </body>
</html>
