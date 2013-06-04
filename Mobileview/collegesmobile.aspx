<%@ Page Language="VB" AutoEventWireup="false" CodeFile="collegesmobile.aspx.vb" Inherits="Mobileview_collegesmobile" %>

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

<div data-role="page" id="viewcolleges">
	<div data-role="header">
     <a href="#index" data-role="button" data-icon="back" data-iconshadow="false" data-inline="true">Back</a>
		<h1>View by Colleges</h1>
	</div>
	<div data-role="content">	
  
	    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataSourceID="AccessDataSource1" Width="589px">
            <Columns>
                <asp:TemplateField HeaderText="college_logo" SortExpression="college_logo">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("college_logo") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("college_logo") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="collegename" SortExpression="collegename">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("collegename") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("collegename") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
      
	</div>
	
</div>
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
        DataFile="~/App_Data/eatwithme.accdb" 
        SelectCommand="SELECT [college_logo], [collegename] FROM [tbl_colleges]">
    </asp:AccessDataSource>
    </form>
</body> 
</html>