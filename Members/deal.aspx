﻿<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="deal.aspx.vb" Inherits="Members_deal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
        DataFile="~/App_Data/eatwithme.accdb" 
        DeleteCommand="DELETE FROM [tbl_deal] WHERE [deal_id] = ?" 
        InsertCommand="INSERT INTO [tbl_deal] ( [Shopid], [deal_name], [Shopname], [deal_price], [ImgName], [Img], [deal_image1], [date_created], [offer_ends], [Todays_Deal], [Best_Deal]) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)" 
        SelectCommand="SELECT * FROM [tbl_deal]" 
        
        UpdateCommand="UPDATE [tbl_deal] SET [Shopid] = ?, [deal_name] = ?, [Shopname] = ?, [deal_price] = ?, [ImgName] = ?, [Img] = ?, [deal_image1] = ?, [date_created] = ?, [offer_ends] = ?, [Todays_Deal] = ?, [Best_Deal] = ? WHERE [deal_id] = ?">
        <DeleteParameters>
            <asp:Parameter Name="deal_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="deal_id" Type="Int32" />
            <asp:Parameter Name="Shopid" Type="Int32" />
            <asp:Parameter Name="deal_name" Type="String" />
            <asp:Parameter Name="Shopname" Type="String" />
            <asp:Parameter Name="deal_price" Type="Decimal" />
            <asp:Parameter Name="ImgName" Type="String" />
            <asp:Parameter Name="Img" Type="Object" />
            <asp:Parameter Name="deal_image1" Type="String" />
            <asp:Parameter Name="date_created" Type="DateTime" />
            <asp:Parameter Name="offer_ends" Type="DateTime" />
            <asp:Parameter Name="Todays_Deal" Type="Boolean" />
            <asp:Parameter Name="Best_Deal" Type="Boolean" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Shopid" Type="Int32" />
            <asp:Parameter Name="deal_name" Type="String" />
            <asp:Parameter Name="Shopname" Type="String" />
            <asp:Parameter Name="deal_price" Type="Decimal" />
            <asp:Parameter Name="ImgName" Type="String" />
            <asp:Parameter Name="Img" Type="Object" />
            <asp:Parameter Name="deal_image1" Type="String" />
            <asp:Parameter Name="date_created" Type="DateTime" />
            <asp:Parameter Name="offer_ends" Type="DateTime" />
            <asp:Parameter Name="Todays_Deal" Type="Boolean" />
            <asp:Parameter Name="Best_Deal" Type="Boolean" />
            
        </UpdateParameters>
    </asp:AccessDataSource>
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
    AutoGenerateColumns="False" DataKeyNames="deal_id" 
    DataSourceID="AccessDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="deal_id" HeaderText="deal_id" InsertVisible="False" 
                ReadOnly="True" SortExpression="deal_id" />
            <asp:BoundField DataField="deal_name" HeaderText="deal_name" 
                SortExpression="deal_name" />
            <asp:BoundField DataField="Shopname" HeaderText="Shopname" 
                SortExpression="Shopname" />
            <asp:BoundField DataField="deal_price" HeaderText="deal_price" 
                SortExpression="deal_price" />
            <asp:BoundField DataField="deal_image1" HeaderText="deal_image1" 
                SortExpression="deal_image1" />
            <asp:BoundField DataField="date_created" HeaderText="date_created" 
                SortExpression="date_created" />
            <asp:BoundField DataField="offer_ends" HeaderText="offer_ends" 
                SortExpression="offer_ends" />
            <asp:CheckBoxField DataField="Todays_Deal" HeaderText="Todays_Deal" 
                SortExpression="Todays_Deal" />
            <asp:CheckBoxField DataField="Best_Deal" HeaderText="Best_Deal" 
                SortExpression="Best_Deal" />
        </Columns>
</asp:GridView>
    <br />
    </asp:Content>

