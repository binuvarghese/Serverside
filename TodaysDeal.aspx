<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false"
    CodeFile="TodaysDeal.aspx.vb" Inherits="TodaysDeal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/eatwithme.accdb"
       SelectCommand="SELECT TOP 3 tbl_deal.deal_name, tbl_deal.deal_image1, tbl_deal.date_created, tbl_deal.offer_ends, tbl_deal.deal_price, tbl_deal.Todays_Deal FROM tbl_deal WHERE (((tbl_deal.date_created)=Date()) AND ((tbl_deal.Todays_Deal)=True)) ORDER BY tbl_deal.date_created DESC , tbl_deal.deal_price;">
    </asp:AccessDataSource>
    <br /><%--OnSelectedIndexChanged="DataList1_SelectedIndexChanged"--%> 
    <asp:DataList ID="DataList1" runat="server" DataSourceID="AccessDataSource1" RepeatDirection="Horizontal"
        BackColor="Black" Font-Bold="False"
        Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False"
        ForeColor="Aqua" HorizontalAlign="Center">
        <HeaderStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
            Font-Underline="False" ForeColor="Gray" />
        <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
            Font-Underline="False" HorizontalAlign="Center" VerticalAlign="Middle" />
        <ItemTemplate>
            Deal Name:
            <asp:Label ID="deal_nameLabel" runat="server" Text='<%# Eval("deal_name") %>' />
            <br />
            <b>Price:
                <asp:Label ID="deal_priceLabel" runat="server" Text='<%# Eval("deal_price") %>' /></b>
            <br />
            <asp:Image ID="deal_imageLabel" runat="server" Height="250px" Width="225px" ImageUrl='<%# "~/images/" + Eval("deal_image1")%>' />
            <br />
            Offer Starts:
            <asp:Label ID="date_createdLabel" runat="server" Text='<%# Eval("date_created") %>' />
            <br />
            Offer Ends:
            <asp:Label ID="offer_endsLabel" runat="server" Text='<%# Eval("offer_ends") %>' />
            <br />
   
            <br />
        </ItemTemplate>
        <SeparatorStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
            Font-Underline="False" HorizontalAlign="Center" VerticalAlign="Middle" />
    </asp:DataList>
</asp:Content>
