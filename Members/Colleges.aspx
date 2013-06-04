<%@ Page Title="Colleges" Language="VB" AutoEventWireup="false" MasterPageFile="~/Site.master"
    CodeFile="Colleges.aspx.vb" Inherits="Colleges" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/eatwithme.accdb"
            DeleteCommand="DELETE FROM [tbl_colleges] WHERE [collegeid] = ?"
            InsertCommand="INSERT INTO [tbl_colleges] ( [collegename], [college_address1], [college_address2], [college_address3], [college_City], [college_Pin/zipcode], [college_county], [college_country], [college_contactno], [college_emailaddress]) VALUES ( ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"
            SelectCommand="SELECT * FROM [tbl_colleges]" UpdateCommand="UPDATE [tbl_colleges] SET [collegename] = ?, [college_address1] = ?, [college_address2] = ?, [college_address3] = ?, [college_City] = ?, [college_Pin/zipcode] = ?, [college_county] = ?, [college_country] = ?, [college_contactno] = ?, [college_emailaddress] = ? WHERE [collegeid] = ?">
            <DeleteParameters>
                <asp:Parameter Name="collegeid" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="collegeid" Type="Int32" />
                <asp:Parameter Name="collegename" Type="String" />
                <asp:Parameter Name="college_address1" Type="String" />
                <asp:Parameter Name="college_address2" Type="String" />
                <asp:Parameter Name="college_address3" Type="String" />
                <asp:Parameter Name="college_City" Type="String" />
                <asp:Parameter Name="column1" Type="String" />
                <asp:Parameter Name="college_county" Type="String" />
                <asp:Parameter Name="college_country" Type="String" />
                <asp:Parameter Name="college_contactno" Type="String" />
                <asp:Parameter Name="college_emailaddress" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="collegename" Type="String" />
                <asp:Parameter Name="college_address1" Type="String" />
                <asp:Parameter Name="college_address2" Type="String" />
                <asp:Parameter Name="college_address3" Type="String" />
                <asp:Parameter Name="college_City" Type="String" />
                <asp:Parameter Name="column1" Type="String" />
                <asp:Parameter Name="college_county" Type="String" />
                <asp:Parameter Name="college_country" Type="String" />
                <asp:Parameter Name="college_contactno" Type="String" />
                <asp:Parameter Name="college_emailaddress" Type="String" />
                <asp:Parameter Name="collegeid" Type="Int32" />
            </UpdateParameters>
        </asp:AccessDataSource>
        <br />
        <asp:Label ID="Label1" runat="server" Text="Search College"></asp:Label>
        &nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="AccessDataSource1"
            DataTextField="collegename" DataValueField="collegename" AutoPostBack="True"
            Height="30px" Width="278px">
        </asp:DropDownList>
        <br />
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False"
            CellPadding="3" CellSpacing="2" DataKeyNames="collegeid" DataSourceID="AccessDataSource1"
            Height="50px" Width="424px" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None"
            BorderWidth="1px">
            <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <Fields>
                <asp:TemplateField HeaderText="collegeid" InsertVisible="False" SortExpression="collegeid">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("collegeid") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("collegeid") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="collegename" HeaderText="collegename" SortExpression="collegename" />
                <asp:BoundField DataField="college_address1" HeaderText="college_address1" SortExpression="college_address1" />
                <asp:BoundField DataField="college_address2" HeaderText="college_address2" SortExpression="college_address2" />
                <asp:BoundField DataField="college_address3" HeaderText="college_address3" SortExpression="college_address3" />
                <asp:BoundField DataField="college_City" HeaderText="college_City" SortExpression="college_City" />
                <asp:BoundField DataField="college_Pin/zipcode" HeaderText="college_Pin/zipcode"
                    SortExpression="college_Pin/zipcode" />
                <asp:BoundField DataField="college_county" HeaderText="college_county" SortExpression="college_county" />
                <asp:BoundField DataField="college_country" HeaderText="college_country" SortExpression="college_country" />
                <asp:BoundField DataField="college_contactno" HeaderText="college_contactno" SortExpression="college_contactno" />
                <asp:BoundField DataField="college_emailaddress" HeaderText="college_emailaddress"
                    SortExpression="college_emailaddress" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        </asp:DetailsView>
        <br />
    </div>
</asp:Content>
