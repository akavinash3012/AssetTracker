<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Bootstrap Login Form Template</title>

        <!-- CSS -->
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/font-awesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="assets/css/form-elements.css">
        <link rel="stylesheet" href="assets/css/style.css">
        <link rel="shortcut icon" type="image/ico" href="https://d1iryqxr99wfl4.cloudfront.net/public/v3/images/assettrackr-fav.ico">
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/at-custom.css" rel="stylesheet">
        <script src="js/jquery.js" type="text/javascript"></script>
        <link href="css/bootstrap-glyphicons.css" rel="stylesheet">

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

        <!-- Favicon and touch icons -->
        <link rel="shortcut icon" href="assets/ico/favicon.png">
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="assets/ico/apple-touch-icon-57-precomposed.png">

    </head>

    <body>
        	<!-- Navigation -->
	<nav class="navbar navbar-inverse navbar-fixed-top at-navbar">  <!-- Role Removed from Navigation role="navigation". -->
		<div class="container-fluid container-color-ie8">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle navbar-toggle-btn"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar collapse-icon-ie8"></span> <span class="icon-bar collapse-icon-ie8"></span> <span
						class="icon-bar collapse-icon-ie8"></span>
				</button>
<!--				<a href="/"><img src="/images/logo1.png" alt="AssetTrackr Pvt. Ltd."></a> -->
				<a href="/"><img src="image/logo_new_assettrack.png" alt="AssetTrackr Pvt. Ltd."></a>


			</div>
			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav navbar-right text-center">
					
                    <li><a class="header-links" href="index.jsp">HOME</a></li>
					<li><a class="header-links" href="team.jsp">TEAM</a></li>
					<li><a class="header-links green-text" href="/contact">CONTACT	US</a></li>

					<li><a class="header-lbl"><span>SALES : </span><span
							class="hdr-nbr">+91 75035 54417</span><br> <span
							class="header-mail-ids grey-text">info@assettrackr.com</span></a></li>

				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container -->
	</nav>

        <!-- Top content -->
        <div class="top-content">
        	
            <div class="inner-bg">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-8 col-sm-offset-2 text">
                            
                            <!-- <div class="description">  -->
                            <!--	<p> -->
	                         <!--    This is a free responsive login form made with Bootstrap. -->
	                         <!--   	Download it <a href="https://github.com/AZMIND" target="_blank"><strong>here</strong></a>, -->
	                           <!-- 	customize and use it as you like! -->
                            	<!--</p> -->
								
                          <!--  </div> -->
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6 col-sm-offset-3 form-box">
                        	<div class="form-top">
                        		<div class="form-top-left">
                        			<h3>Login </h3>
                            		<p>Enter your username and password to log on:</p>
                        		</div>
                        		<div class="form-top-right">
                        			<i class="fa fa-lock"></i>
                        		</div>
                            </div>
                            <div class="form-bottom">
			                    <form role="form" action="LoginServlet" method="post" class="login-form" >
			                    	<div class="form-group">
			                    		<label class="sr-only" for="form-username">Username</label>
			                        	<input type="text" name="UserID" value=''  placeholder="Username..." class="form-username form-control" id="form-username">
			                        </div>
			                        <div class="form-group">
			                        	<label class="sr-only" for="form-password">Password</label>
			                        	<input type="password" name="password" value='' placeholder="Password..." class="form-password form-control" id="form-password">
			                        </div>
									 <div class="form-group">
			                         <label class="sr-only" for="form-password">Password</label>
									       <select name="Auth"  class="form-password form-control" id="form-password ">
			  			                    <option value="0">Administrator</option>
			  			                    <option value="1">User</option>
                                            <option value="2">Vender</option>
			  		                       </select></div>
			                        <button type="submit" value='Go' class="btn">Sign in!</button>
			                    </form>
		                    </div>
                        </div>
                    </div>
                   
                </div>
            </div>
            
        </div>


        <!-- Javascript -->
        <script src="assets/js/jquery-1.11.1.min.js"></script>
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>
        <script src="assets/js/jquery.backstretch.min.js"></script>
        <script src="assets/js/scripts.js"></script>
        
        <!--[if lt IE 10]>
            <script src="login/js/placeholder.js"></script>
        <![endif]-->

    </body>

</html>