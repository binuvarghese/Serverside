<%@ Page Language="VB" AutoEventWireup="false" CodeFile="todaysdealmobile.aspx.vb" Inherits="Mobileview_todaysdealmobile" %>




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



    <form id="form1" runat="server">



<div data-role="page" id="todaysdeal">
	<div data-role="header">
    <a href="#index" data-role="button" data-icon="back" data-iconshadow="false" data-inline="true">Back</a>
		<h1>Today's Deal</h1>
 </div>       <p>
            <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
                DataFile="~/App_Data/eatwithme.accdb" 
                SelectCommand="SELECT [deal_name], [Shopname], [deal_price], [deal_image] FROM [tbl_deal] WHERE ([Todays_Deal] = ?)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="true" Name="Todays_Deal" Type="Boolean" />
                </SelectParameters>
            </asp:AccessDataSource>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                AllowSorting="True" AutoGenerateColumns="False" 
                DataSourceID="AccessDataSource1" Font-Names="Arial" Font-Size="Medium" 
                ForeColor="#0000CC" GridLines="Horizontal" Width="581px">
                <Columns>
                    <asp:BoundField DataField="deal_name" HeaderText="deal_name" 
                        SortExpression="deal_name" />
                    <asp:BoundField DataField="Shopname" HeaderText="Shopname" 
                        SortExpression="Shopname" />
                    <asp:BoundField DataField="deal_price" HeaderText="deal_price" 
                        SortExpression="deal_price" />
                    <asp:BoundField DataField="deal_image" HeaderText="deal_image" 
                        SortExpression="deal_image" />
                </Columns>
                <HeaderStyle BackColor="Black" ForeColor="White" />
            </asp:GridView>
        </p>
	
	<div data-role="content">
    <script>
      
    </script>
    <ul data-role="listview" data-inset="true" id="list">
    <li>
        <img id="image1" src="../../_assets/img/album-bb.jpg">
        <h2>Broken Bells</h2>
        <p>Broken Bells</p>
    </li>
    <li>
        <img src="../../_assets/img/album-hc.jpg">
        <h2>Warning</h2>
        <p>Hot Chip</p>
    </li>
    <li>
        <img src="../../_assets/img/album-p.jpg">
        <h2>Wolfgang Amadeus Phoenix</h2>
        <p>Phoenix</p>
    </li>
</ul>
		<asp:DataGrid id="dgResults" runat="server" />
	</div>
	<div data-role="footer">
		<h4>Page Footer</h4>
	</div>
</div>

	

    </form>

	

</body>
</html>

