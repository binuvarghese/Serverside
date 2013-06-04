<%@ Page Title="Thank you"  Language="VB" AutoEventWireup="false"  MasterPageFile="~/Site.master" 
CodeFile="Thankyou.aspx.vb" Inherits="Thankyou" %>
<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">


    <div>
    
        Thankyou for using this website<br />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Account/Login.aspx">Login again</asp:HyperLink>
    
    </div>
</asp:Content>
