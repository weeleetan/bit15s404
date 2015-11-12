<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="default.aspx.vb" Inherits="cpm._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>

  <!-- Basic Page Needs
  –––––––––––––––––––––––––––––––––––––––––––––––––– -->
  <meta charset="utf-8"/>
  <title>IT154B Car-pooling Manager</title>

  <!-- Mobile Specific Metas
  –––––––––––––––––––––––––––––––––––––––––––––––––– -->
  <meta name="viewport" content="width=device-width, initial-scale=1"/>

  <!-- FONT
  –––––––––––––––––––––––––––––––––––––––––––––––––– -->
  <link href="//fonts.googleapis.com/css?family=Raleway:400,300,600" rel="stylesheet" type="text/css"/>

  <!-- CSS
  –––––––––––––––––––––––––––––––––––––––––––––––––– -->

  <link rel="stylesheet" href="css/project.css"/>
  <link href="css/bootstrap.min.css" rel="stylesheet"/>
  

   <!-- JavaScript
  –––––––––––––––––––––––––––––––––––––––––––––––––– -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script src="js/jquery-2.1.4.js"></script>
	<script src="js/bootstrap.min.js"></script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBwo3TV6x8ryOMBEMxVFO5nDF6vwsqLdto&sensor=false"></script>

  <!-- Favicon
  –––––––––––––––––––––––––––––––––––––––––––––––––– -->
  <link rel="icon" type="image/png" href="images/favicon.png"/>

</head>
<body onload="initialize()">

  <!-- Primary Page Layout
  –––––––––––––––––––––––––––––––––––––––––––––––––– -->
  <div id="main-container">
  
	<div id="banner">
	
	<img src="images\01.jpg" alt="Banner"/>
	</div>
  
	<div id="container">
		<div id="menu">
            <ul class="nav nav-tabs">
			  <li role="presentation" class="active"><a href="default.aspx">Home</a></li>
              <li role="presentation" class="dropdown" style="background-color:white; margin-right: 2px;">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
                      Product <span class="caret"></span>
                    </a>
                    <ul class="dropdown-menu">
                 <li role="presentation"><a href="cpm.aspx">CPM</a></li>
                </ul>
              </li>
              <li role="presentation"><a href="contactus.aspx" style="background-color:white;">Contact Us</a></li>
            </ul>
		</div>
		
		<div id="inner-container" style="text-align:center;">
            <form id="form1" runat="server">
                  <div id="mapArea" style="width: 100%; height: 578px;">
                  </div>
                  <asp:Literal ID="jss" runat="server"></asp:Literal>
             </form>

		</div>
		
		
	</div>
  
	<div id="footer">
       <div id="copyright">Copyright 2015 RealmTech. All rights reserved.</div>
	</div>

  </div>

<!-- End Document
  –––––––––––––––––––––––––––––––––––––––––––––––––– -->
</body>
</html>
