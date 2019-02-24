<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "assettracker";
String userid = "root";
String password = "root";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" >
<meta name="google-site-verification" content="GR6aS_dkxjAolHw_AXxQfqe1kaXtNqTqw5WRbfZPgxU" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<title>GPS Vehicle Tracking System India | Advanced Vehicle GPS Tracking Devices & Software for Fleet,Trucks,Bikes | Bangalore, Chennai, Coimbatore, Hyderabad</title>
<meta name="description" content="AssetTrackr® Provides 24/7 real time GPS Vehicle Tracking Solution. Affordable software trusted by hundreds of small & medium enterprises. Track your vehicle from your smartphone. Manage your fleet using our advanced GPS Tracking Device at best price in Chennai, Coimbatore, Hyderabad India">	
<meta name="keywords" content="GPS, GPS Tracking, gps tracking device, vehicle tracking system chennai, vehicle tracking system coimbatore, tracking vehicle, GPS Vehicle Tracking System, vehicle tracking system India, fleet management system, taxi dispatch solution">
<link rel="shortcut icon" type="image/ico" href="https://d1iryqxr99wfl4.cloudfront.net/public/v3/images/assettrackr-fav.ico">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/at-custom.css" rel="stylesheet">
<script src="js/jquery.js" type="text/javascript"></script>
<link href="css/bootstrap-glyphicons.css" rel="stylesheet">
<link rel="stylesheet" href="css/style.css">
<script>
//        function iframe_resize(){
//            var body = document.body,
//            html = document.documentElement,
//            height = Math.max(body.scrollHeight, body.offsetHeight, 
//	        html.clientHeight, html.scrollHeight, html.offsetHeight);
//            if (parent.postMessage) {
//                parent.postMessage(height, "http://webco.assettrackr.com");
//            }
//        }
</script>
    <style>
        .col-centered {
          display:inline-block;
                float:none;
     }
    

     

    </style>
</head>

<!-- <body onload="iframe_resize();"> -->
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
					<li><a class="header-links" href="adduser.jsp">Add User</a></li>
                    <li><a class="header-links" href="addasset.jsp">Add Assets</a></li>				
					<li><a class="header-links" href="modifyasset.jsp">Modify Assets</a></li>
					<li><a class="header-links green-text" href="displayasset.jsp">Show All Assets</a></li>
<li><a class="header-links grey-text" target="_blank" href="index.jsp">LOGOUT</a></li>

					<li><a class="header-lbl"><span>SALES : </span><span
							class="hdr-nbr">+91 9560934016</span><br> <span
							class="header-mail-ids grey-text">info@assettrackr.com</span></a></li>

				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container -->
	</nav>
 
 
	<!-- Page Content -->
	<div class="container-fluid index-container-custom slider-content">
		<div class="row">
			<div class="col-md-12 header-icons">
				<div class="row">
					
				
					
				</div>
			</div>
		</div>

		
		
		
		  
		<div class="row text-center request">
			<div class="col-md-12 request-form">
				<div class="reqHeader">MODIFY ASSETS</div>    
					 </div>	</div>  
                    
                   <div align="center">
		<table>
			<tr>
				<th>Assets</th>
				<th>ProductName</th>
				<th>ProductID</th>
				<th>Organization</th>
				<th>Price</th>
		        <th>Update</th>
				<th>Select</th>
				
			</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from assets";
resultSet = statement.executeQuery(sql);
int i=0;
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("assets") %></td>
<td><%=resultSet.getString("productName") %></td>
<td><%=resultSet.getString("productID") %></td>
<td><%=resultSet.getString("organization") %></td>
<td><%=resultSet.getString("price") %></td>
<td><a href="update-asset.jsp?productID=<%=resultSet.getString("productID")%>">Update</a></td>
<td><a href="delete_asset.jsp?productID=<%=resultSet.getString("productID") %>">Delete</a></td>
</tr>
<%
i++;
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</div>
                     <!--  HTML FORM TABLE -->
             				<!--  	<form action="javascript:send_demo_form();" method="post" id="demo_form" class="form-horizontal">
                        
                            <div class="row">
							<div class="col-md-4 col-sm-6 col-centered">
                                <select name="assets" class="form-text form-control top-buffer">
                                <option value="IT Asset">IT Equipments</option>
                                <option value="Vehicles">Vehicles</option>
                                 </select>
								
							</div>
                        </div>
                           <div class="row ">
							<div class="col-md-4 col-sm-6 col-centered">
								<input type="text" class="form-text form-control top-buffer"
									name="productName" placeholder="Product Name" />
							</div>
                        </div>
                           <div class="row">
							<div class="col-md-4 col-sm-6 col-centered">
								<input type="text" class="form-text form-control top-buffer"
									 name="productID" placeholder="Product ID" />
								
							</div>
                        </div>
                            <div class="row">
                        <div class="col-md-4 col-sm-6 col-centered">
								<input type="text" class="form-text form-control top-buffer"
									 name="organization" placeholder="Organisation Name" />
							</div>
                        </div>
                          <div class="row">
                        <div class="col-md-4 col-sm-6 col-centered">
								<input type="text" name="price" class="form-text form-control top-buffer"
									placeholder="Unit Price"  onKeyUp="checkNumber(this);"/>
							</div>
                        </div>
                           <div class="row ">
							<div class="col-md-4 col-sm-6 col-centered">
								<input class="orange-button" type="submit" value="Submit" />
							</div>
                        </div>
                            
					</form> -->
					
					
	
	
		
							<!--	<div class="col-md-3 col-sm-6 col-xs-12 text-center">
									<div class="slider-item-img">
										<img src="http://d1iryqxr99wfl4.cloudfront.net/public/v4/images/safekar2.png">
										<div>SAFEKAR2</div>
									</div>
								</div> -->
								
								
					
		
	<!-- div class="left-side-top-links">
		<ul>
			<li><a href="#">ABOUT US </a></li>
			<li><a href="#industries-header">INDUSTRIES </a></li>
			<li><a href="#solutions-header">SOLUTIONS </a></li>
			<li><a href="#platform-service">SERVICE </a></li>
			<li><a href="#as-seen-on">FEATURE </a></li>
			<li><a href="#devices-products">PRODUCT </a></li>
		</ul>

	</div -->
	<div class="right-side-top-links">
		<ul>
			<li><a href="https://www.facebook.com/pages/Asset-Trackr/564254710300168"><img src="https://d1iryqxr99wfl4.cloudfront.net/public/v4/images/image.png" alt="facebook link"></a></li>
			<li><a href="https://twitter.com/Assettrackr2"><img src="https://d1iryqxr99wfl4.cloudfront.net/public/v4/images/image1.png" alt="twitter link"></a></li>
			<li><a href="https://plus.google.com/b/108272562428595330318/108272562428595330318/posts"><img src="https://d1iryqxr99wfl4.cloudfront.net/public/v4/images/image2.png" alt="google plus link"></a></li>
			<li><a href="https://www.linkedin.com/company/assettrackr---gps-tracking-car-tracking-vehicle-tracking-system-for-india?trk=company_name"><img src="https://d1iryqxr99wfl4.cloudfront.net/public/v4/images/image3.png" alt="linkedin link"></a></li>
		</ul>

	</div>
	<!-- Footer -->
		<script src="https://d1iryqxr99wfl4.cloudfront.net/public/v4/js/bootstrap.min.js"></script>
	<script src="https://d1iryqxr99wfl4.cloudfront.net/public/v4/js/custom.js"></script>
	<div class="footer" style="margin-top: 0;">
		<div class="container">
			
			<div class="copyright">
				<p>Copyright &copy; 2018 AssetTrackr Pvt Ltd</p>
			</div>

		</div>
	</div>
	<div id="popover_content_wrapper"  style="display:none; width:320px;">
		 <form method="post" action="/auth/login" id="login_form">
			<input type="text" class="form-control top-buffer login-control" placeholder="Email" id="email" name="email" >
			<input type="password" name="password" class="form-control top-buffer login-control" placeholder="Password" id="pass">
			<input type="submit" class="orange-button login-control" value="Login">
		</form>
		<br> 
	</div>	
	<!--Start of Zopim Live Chat Script-->
<script type="text/javascript">
window.$zopim||(function(d,s){var z=$zopim=function(c){z._.push(c)},$=z.s=
d.createElement(s),e=d.getElementsByTagName(s)[0];z.set=function(o){z.set.
_.push(o)};z._=[];z.set._=[];$.async=!0;$.setAttribute('charset','utf-8');
$.src='//v2.zopim.com/?1QtGMjdytPBKC2bCvsbzWSONsgbELx7P';z.t=+new Date;$.
type='text/javascript';e.parentNode.insertBefore($,e)})(document,'script');
</script>
<!--End of Zopim Live Chat Script-->
	<script src="https://ajax.aspnetcdn.com/ajax/jquery.validate/1.13.1/jquery.validate.min.js" type="text/javascript"></script>
	<script type="text/javascript">
			$(document).ready(function() {
				$('#quote_alert').hide();
				$('#demo_alert').hide();
				$('#integration_alert').hide();
				
				$("#quote_form").validate({
					rules: {
							email:{
								required: true,
								email:true
							},
							mobile_number:{
								required: true,
								minlength: 10,
								digits: true
							}
					}
				});			
				$("#integration_form").validate({
					rules: {
							email:{
								required: true,
								email:true
							},
							mobile_number:{
								required: true,
								minlength: 10,
								digits: true
							}
					}
				});
				$("#demo_form").validate({
					rules: {
							email:{
								required: true,
								email:true
							},
							mobile_number:{
								required: true,
								minlength: 10,
								digits: true
							}
					}
				});	
				
			});	
			function send_quote_form(){
				$.post(
						"/user/contact_us", 
						$("#quote_form").serialize(),
						function(data){
							$('#quote_alert').show();
							//alert("Successfully Submitted");
						}
						
				);
			}
			function send_integration_form(){
				$.post(
						"/user/contact_us", 
						$("#integration_form").serialize(),
						function(data){
							$('#integration_alert').show();
							//alert("Successfully Submitted");
						}
						
				);
			}
			function send_demo_form(){
				$.post(
						"/user/contact_us", 
						$("#demo_form").serialize(),
						function(data){
							$('#demo_alert').show();
							//alert("Successfully Submitted");
						}
						
				);
			}
						//$("#message_form").submit();
		</script>	
	
</body>
<!--[if lt IE 9]>
	 <style type="text/css">
	 .container-color-ie8{
	 	background-color:#0b0b0b;
	 }
	 .collapse-icon-ie8{
		background-color:#fff;
	 }
	 .placeholder{width:100%;}
	 </style>

	 <script src="js/html5shiv.js" type="text/javascript"></script>
	 <script src="js/respond.min.js" type="text/javascript"></script>


	 <script src="js/placeholder.js" type="text/javascript"></script>
	 <script type="text/javascript">
    	$(function () {
        	$('input, textarea').placeholder();
    	});
	</script>
<![endif]--></html>
