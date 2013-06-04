<%@ Page Title="Home page" Language="VB" AutoEventWireup="false" MasterPageFile="~/Site.master"
    CodeFile="index.aspx.vb" Inherits="index" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <br />
    <h1>
        Welcome to Eat with me !!!</h1>
    <h1>
        &nbsp;Today's is
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </h1>
    <p>
        <h3>
            This website is for student who want to save money on there food while there are
            in college.<br />
            By using this website you will know which shop is selling best deal for your food.</h3>
    &nbsp;</p>


    <br />

    <p> Please <a href="Login.aspx">Retailers Log in</a> to continue here</p>
    <a href="Mobileview/Default.aspx">Mobile View</a>
    <br />
</asp:Content>
