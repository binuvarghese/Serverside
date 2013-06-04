<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="TodaysDeal.aspx.vb" Inherits="TodaysDeal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
        DataFile="~/App_Data/eatwithme.accdb" 
        
        SelectCommand="SELECT deal_name, deal_price, deal_image1, date_created, offer_ends, Best_Deal FROM tbl_deal WHERE (Best_Deal = true)">
    </asp:AccessDataSource>
    <br /> <%--onselectedindexchanged="DataList1_SelectedIndexChanged"--%> 
    <asp:DataList ID="DataList1" runat="server" DataSourceID="AccessDataSource1" 
        RepeatDirection="Horizontal"   BackColor="Black" 
        Font-Bold="False" Font-Italic="False" Font-Overline="False" 
        Font-Strikeout="False" Font-Underline="False" ForeColor="Aqua" 
        HorizontalAlign="Center" RepeatColumns="4">
        <HeaderStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" 
            Font-Strikeout="False" Font-Underline="False" ForeColor="Gray" />
        <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" 
            Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" 
            VerticalAlign="Middle" />
        <ItemTemplate>
            Deal Name:
            <asp:Label ID="deal_nameLabel" runat="server" Text='<%# Eval("deal_name") %>' />
            <br />
           <b> Price:
            <asp:Label ID="deal_priceLabel" runat="server" 
                Text='<%# Eval("deal_price") %>' /></b>
            <br />
            
              <asp:image ID="Image1" runat="server" 
               Height="250px" Width="225px"  ImageUrl='<%# "~/images/" + Eval("deal_image1")%>' />
            <br />
         
           Offer Starts:
            <asp:Label ID="date_createdLabel" runat="server" 
                Text='<%# Eval("date_created") %>'/>
            <br />
           Offer Ends:
            <asp:Label ID="offer_endsLabel" runat="server" 
                Text='<%# Eval("offer_ends") %>' />
            <br />
       
<%--            &nbsp;<asp:Label ID="Best_DealLabel" runat="server" 
                Text='<%# Eval("Best_Deal") %>' />
            <br />--%>

            <br />

        </ItemTemplate>
        <SeparatorStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" 
            Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" 
            VerticalAlign="Middle" />
    </asp:DataList>
</asp:Content>
