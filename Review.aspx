<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="Review.aspx.vb" Inherits="Review" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
    DataFile="~/App_Data/eatwithme.accdb" 
    SelectCommand="SELECT [Fullname], [Post_Date], [email_address], [Comments] FROM [comments] ORDER BY [comments_id] DESC, [Post_Date] DESC">
</asp:AccessDataSource>
<br />
<asp:DataList ID="DataList1" runat="server" BackColor="Black" 
    BorderColor="#0066FF" BorderStyle="Groove" CssClass="clear" 
    DataSourceID="AccessDataSource1" ForeColor="White" GridLines="Both" 
    HorizontalAlign="Center" RepeatColumns="3" ShowHeader="False" Width="685px">
    <ItemTemplate>
        Fullname:
        <asp:Label ID="FullnameLabel" runat="server" Text='<%# Eval("Fullname") %>' />
        <br />
        <br />
        Post_Date:
        <asp:Label ID="Post_DateLabel" runat="server" Text='<%# Eval("Post_Date") %>' />
        <br />
        <br />
        email_address:
        <asp:Label ID="email_addressLabel" runat="server" 
            Text='<%# Eval("email_address") %>' />
        <br />
        <br />
        Comments:
        <asp:Label ID="CommentsLabel" runat="server" Text='<%# Eval("Comments") %>' />
        <br />
<br />
    </ItemTemplate>
</asp:DataList>
    <br />
    </asp:Content>

