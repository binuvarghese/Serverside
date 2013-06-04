<%@ Page Title="Cities" Language="VB" AutoEventWireup="false" MasterPageFile="~/Site.master"
    CodeFile="Cities.aspx.vb" Inherits="Cities" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Cities</h2>
    <div>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/eatwithme.accdb"
            SelectCommand="SELECT * FROM [tbl_cites]"></asp:AccessDataSource>
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
            DataKeyNames="city_id" DataSourceID="AccessDataSource1" Width="350px">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="city_name" HeaderText="city_name" SortExpression="city_name" />
            </Columns>
        </asp:GridView>
        <br />
        <asp:AccessDataSource ID="AccessDataSource2" runat="server" DataFile="~/App_Data/eatwithme.accdb"
            SelectCommand="SELECT * FROM [tbl_colleges] WHERE ([city_id] = ?)">
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" Name="city_id" PropertyName="SelectedValue"
                    Type="Int32" />
            </SelectParameters>
        </asp:AccessDataSource>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="AccessDataSource2"
            DataKeyNames="collegeid" Width="540px">
            <Columns>
                <asp:BoundField DataField="collegename" HeaderText="collegename" SortExpression="collegename" />
                <asp:BoundField DataField="college_City" HeaderText="college_City" SortExpression="college_City" />
                <asp:BoundField DataField="college_Pin/zipcode" HeaderText="college_Pin/zipcode"
                    SortExpression="college_Pin/zipcode" />
                <asp:BoundField DataField="college_county" HeaderText="college_county" SortExpression="college_county" />
            </Columns>
        </asp:GridView>
        <br />
        <br />
    </div>
</asp:Content>
