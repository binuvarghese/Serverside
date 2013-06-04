<%@ Page Title="Today's Deal" Language="VB" AutoEventWireup="false" MasterPageFile="~/Site.master"
    CodeFile="todaysdeal.aspx.vb" Inherits="todaysdeal" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div style="height: 315px" dir="ltr">
        <br />
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/eatwithme.accdb"
            SelectCommand="SELECT deal_id, profile_id, deal_name, deal_price, deal_image, date_created, offer_ends, Todays_Deal, Best_Deal FROM tbl_deal"
            DeleteCommand="DELETE FROM [tbl_deal] WHERE [deal_id] = ?" 
            InsertCommand="INSERT INTO [tbl_deal] ( [deal_name], [deal_price], [deal_image], [date_created], [offer_ends], [Todays_Deal], [Best_Deal]) VALUES (?, ?, ?, ?, ?, ?, ?)"
            UpdateCommand="UPDATE [tbl_deal] SET [deal_name] = ?, [deal_price] = ?, [deal_image] = ?, [date_created] = ?, [offer_ends] = ?, [Todays_Deal] = ?, [Best_Deal] = ? WHERE [deal_id] = ?">
            <DeleteParameters>
                <asp:Parameter Name="deal_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="deal_id" Type="Int32" />
                <asp:Parameter Name="profile_id" Type="Int32" />
                <asp:Parameter Name="deal_name" Type="String" />
                <asp:Parameter Name="deal_price" Type="Decimal" />
                <asp:Parameter Name="deal_image" Type="String" />
                <asp:Parameter Name="date_created" Type="DateTime" />
                <asp:Parameter Name="offer_ends" Type="DateTime" />
                <asp:Parameter Name="column1" Type="Boolean" />
                <asp:Parameter Name="Best_Deal" Type="Boolean" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="deal_name" Type="String" />
                <asp:Parameter Name="deal_price" Type="Decimal" />
                <asp:Parameter Name="deal_image" Type="String" />
                <asp:Parameter Name="date_created" Type="DateTime" />
                <asp:Parameter Name="offer_ends" Type="DateTime" />
                <asp:Parameter Name="column1" Type="Boolean" />
                <asp:Parameter Name="Best_Deal" Type="Boolean" />
                <asp:Parameter Name="deal_id" Type="Int32" />
            </UpdateParameters>
        </asp:AccessDataSource>
        <br />
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False"
            DataKeyNames="deal_id" DataSourceID="AccessDataSource1" Height="50px" Width="125px">
            <Fields>
                <asp:BoundField DataField="deal_id" HeaderText="deal_id" InsertVisible="False" ReadOnly="True"
                    SortExpression="deal_id" />
                <asp:BoundField DataField="profile_id" HeaderText="profile_id" SortExpression="profile_id" />
                <asp:BoundField DataField="deal_name" HeaderText="deal_name" SortExpression="deal_name" />
                <asp:BoundField DataField="deal_price" HeaderText="deal_price" SortExpression="deal_price" />
                <asp:BoundField DataField="deal_image" HeaderText="deal_image" SortExpression="deal_image" />
                <asp:BoundField DataField="date_created" HeaderText="date_created" SortExpression="date_created" />
                <asp:BoundField DataField="offer_ends" HeaderText="offer_ends" SortExpression="offer_ends" />
                <asp:CheckBoxField DataField="Todays_Deal" HeaderText="Todays_Deal" SortExpression="Todays_Deal" />
                <asp:CheckBoxField DataField="Best_Deal" HeaderText="Best_Deal" SortExpression="Best_Deal" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
    </div>
</asp:Content>
