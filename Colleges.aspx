<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Colleges.aspx.vb" Inherits="Colleges" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
    <style type="text/css">
        .style1
        {
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <strong><span class="style1">Please Enter Collegename for search&nbsp;&nbsp;</span></strong>&nbsp;
    <asp:TextBox ID="txtsearch" runat="server" BorderColor="Black" Height="27px" Width="227px"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;
    <asp:ImageButton ID="btnSearch" ImageUrl="~/images/SearchButton.png" runat="server"
        Style="top: 5px; position: relative" OnClick="btnSearch_Click" />&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:ImageButton ID="btnClear" ImageUrl="~/images/Clearbutton.png" runat="server"
        Style="top: 5px; position: relative" OnClick="btnClear_Click" /><br />
    <br />
    <div>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/eatwithme.accdb"
            SelectCommand="SELECT [collegeid], [shopid], [college_logo], [collegename], [college_City] FROM [tbl_colleges]"
            FilterExpression="collegename LIKE '%{0}%'">
            <FilterParameters>
                <asp:ControlParameter Name="collegename" ControlID="txtSearch" PropertyName="Text" />
            </FilterParameters>
        </asp:AccessDataSource>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:DataList ID="DataList1" runat="server" DataKeyField="collegeid" DataSourceID="AccessDataSource1"
            RepeatDirection="Horizontal" BackColor="Black" Font-Bold="False" Font-Italic="False"
            Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="Aqua"
            HorizontalAlign="Center" RepeatColumns="4">
            <ItemTemplate>
               
                <center>
                    <asp:Image ID="Image1" runat="server" Height="100px" Width="100px"  ImageUrl='<%# "~/images/" + Eval("college_logo")%>' />
                </center>
                <br />
                <center>
                    <asp:HyperLink ID="collegenameLabel" runat="server" Width="225px" Text='<%# HighlightText(Eval("collegename").Tostring()) %>' />
                </center>
                <center>
                <asp:LinkButton id="LinkButton1" runat="server" CommandName="showshop">SHow shop</asp:LinkButton>
                    </center>
                <br />
            </ItemTemplate>
            <SeparatorStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                Font-Underline="False" HorizontalAlign="Center" VerticalAlign="Middle" />
        </asp:DataList>
    </div>
    <br />
    <asp:AccessDataSource ID="AccessDataSource2" runat="server" 
        DataFile="~/App_Data/eatwithme.accdb" 
        SelectCommand="SELECT Shop.ShopName, Shop.ShopLogo, tbl_colleges.collegename FROM (Shop INNER JOIN tbl_colleges ON Shop.CollegeName = tbl_colleges.collegename) WHERE (tbl_colleges.collegename = ?) ORDER BY Shop.ShopName">
        <SelectParameters>
            <asp:ControlParameter ControlID="DataList1" Name="collegename" 
                PropertyName="SelectedValue" Type="String"  />
        </SelectParameters>
    </asp:AccessDataSource>
        <asp:DataList ID="DataList2" runat="server"  DataSourceID="AccessDataSource2"
            RepeatDirection="Horizontal" BackColor="Black" Font-Bold="False" Font-Italic="False"
            Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="Aqua"
            HorizontalAlign="Center" RepeatColumns="4">
            <ItemTemplate>
                ShopName:
                <asp:Label ID="ShopNameLabel" runat="server" Text='<%# Eval("ShopName") %>' />
                <br />
                ShopLogo:
                <asp:Label ID="ShopLogoLabel" runat="server" Text='<%# Eval("ShopLogo") %>' />
                <br />
                collegename:
                <asp:Label ID="collegenameLabel" runat="server" 
                    Text='<%# Eval("collegename") %>' />
                <br />
                <br />
            </ItemTemplate>
            <SeparatorStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                Font-Underline="False" HorizontalAlign="Center" VerticalAlign="Middle" />
        </asp:DataList>
    <br />
</asp:Content>
