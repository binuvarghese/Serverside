<%@ Page Language="VB" AutoEventWireup="false" CodeFile="bestdealmobile.aspx.vb" Inherits="Mobileview_bestdeal" %>

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



<div data-role="page" id="bestdeal">
	<div data-role="header">
     <a href="#index" data-role="button" data-icon="back" data-iconshadow="false" data-inline="true">Back</a>
		<h1>Best Deal</h1>
	</div>
	<div data-role="content">	
		<ul data-role="listview" data-inset="true">
    <li><a href="#">
        <img src="../../_assets/img/album-bb.jpg">
        <h2>Broken Bells</h2>
        <p>Broken Bells</p></a>
    </li>
    <li><a href="#">
        <img src="../../_assets/img/album-hc.jpg">
        <h2>Warning</h2>
        <p>Hot Chip</p></a>
    </li>
    <li><a href="#">
        <img src="../../_assets/img/album-p.jpg">
        <h2>Wolfgang Amadeus Phoenix</h2>
        <p>Phoenix</p></a>
    </li>
</ul>
</div>
	<div data-role="footer">
		<h4>Page Footer</h4>
	</div>
</div>


	
</div>
</body>
</html>
