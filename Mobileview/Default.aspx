<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="Mobileview_Default" %>

<!DOCTYPE html> 
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>Eat with me</title>
<link rel="stylesheet" href="http://view.jquerymobile.com/1.3.0/css/themes/default/jquery.mobile.css" />
<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script> 
<script src="http://code.jquery.com/mobile/1.3.0/jquery.mobile-1.3.0.min.js"></script>

<!-- This reference to phonegap.js will allow for code hints as long as the current site has been configured as a mobile application. 
	 To configure the site as a mobile application, go to Site -> Mobile Applications -> Configure Application Framework... -->
<!--<script src="/phonegap.js" type="text/javascript"></script> -->
</head> 
<body> 

<div data-role="page" id="index">
	<div data-role="header">
		<h1>Eat with me</h1>
	</div>
	<div data-role="content">	
		<ul data-role="listview">
			<li><a href="todaysdealmobile.aspx">Today's Deal</a></li>
            <li><a href="bestdealmobile.aspx">Best Deal</a></li>
			<li><a href="collegesmobile.aspx">View by Colleges</a></li>
            <li><a href="#viewcities">View by Cities</a></li>
		</ul>		
	</div>
	<div data-role="footer">
		<h4>Welcome to Eat with me</h4>
	</div>
</div>




<div data-role="page" id="viewcities">
	<div data-role="header">
     <a href="#index" data-role="button" data-icon="back" data-iconshadow="false" data-inline="true">Back</a>
		<h1>View by Cities</h1>
	</div>
	<div data-role="content">	
	<ul data-role="listview" data-filter="true" data-filter-placeholder="Search by city..." data-inset="true">
        <li><a href="#">Dublin</a></li>
        <li><a href="#">Cork</a></li>
        <li><a href="#">Galway</a></li>
        <li><a href="#">Maynooth</a></li>
    </ul>	
	</div>
	
</div>
</body>
</html>