<%@ Page Title="Profile" Language="VB" AutoEventWireup="false" MasterPageFile="~/Site.master"
    CodeFile="Profilepage.aspx.vb" Inherits="profilepage" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/eatwithme.accdb"
            SelectCommand="SELECT * FROM [tbl_Profile]"></asp:AccessDataSource>
        <br />
        <asp:FormView ID="FormView1" runat="server" BackColor="#CCCCCC" BorderColor="#999999"
            BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="profile_id"
            DataSourceID="AccessDataSource1" ForeColor="Black" GridLines="Both" 
            Width="557px" AllowPaging="True">
            <EditItemTemplate>
                profile_id:
                <asp:Label ID="profile_idLabel1" runat="server" Text='<%# Eval("profile_id") %>' />
                <br />
                fname:
                <asp:TextBox ID="fnameTextBox" runat="server" Text='<%# Bind("fname") %>' />
                <br />
                sname:
                <asp:TextBox ID="snameTextBox" runat="server" Text='<%# Bind("sname") %>' />
                <br />
                Fullname:
                <asp:TextBox ID="FullnameTextBox" runat="server" Text='<%# Bind("Fullname") %>' />
                <br />
                Companyname:
                <asp:TextBox ID="CompanynameTextBox" runat="server" Text='<%# Bind("Companyname") %>' />
                <br />
                Address1:
                <asp:TextBox ID="Address1TextBox" runat="server" Text='<%# Bind("Address1") %>' />
                <br />
                Address2:
                <asp:TextBox ID="Address2TextBox" runat="server" Text='<%# Bind("Address2") %>' />
                <br />
                Address3:
                <asp:TextBox ID="Address3TextBox" runat="server" Text='<%# Bind("Address3") %>' />
                <br />
                City:
                <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' />
                <br />
                Zip/Pincode:
                <asp:TextBox ID="Zip_PincodeTextBox" runat="server" Text='<%# Bind("[Zip/Pincode]") %>' />
                <br />
                County:
                <asp:TextBox ID="CountyTextBox" runat="server" Text='<%# Bind("County") %>' />
                <br />
                Country:
                <asp:TextBox ID="CountryTextBox" runat="server" Text='<%# Bind("Country") %>' />
                <br />
                email_address:
                <asp:TextBox ID="email_addressTextBox" runat="server" Text='<%# Bind("email_address") %>' />
                <br />
                contactno:
                <asp:TextBox ID="contactnoTextBox" runat="server" Text='<%# Bind("contactno") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update"
                    Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False"
                    CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <InsertItemTemplate>
                fname:
                <asp:TextBox ID="fnameTextBox" runat="server" Text='<%# Bind("fname") %>' />
                <br />
                sname:
                <asp:TextBox ID="snameTextBox" runat="server" Text='<%# Bind("sname") %>' />
                <br />
                Fullname:
                <asp:TextBox ID="FullnameTextBox" runat="server" Text='<%# Bind("Fullname") %>' />
                <br />
                Companyname:
                <asp:TextBox ID="CompanynameTextBox" runat="server" Text='<%# Bind("Companyname") %>' />
                <br />
                Address1:
                <asp:TextBox ID="Address1TextBox" runat="server" Text='<%# Bind("Address1") %>' />
                <br />
                Address2:
                <asp:TextBox ID="Address2TextBox" runat="server" Text='<%# Bind("Address2") %>' />
                <br />
                Address3:
                <asp:TextBox ID="Address3TextBox" runat="server" Text='<%# Bind("Address3") %>' />
                <br />
                City:
                <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' />
                <br />
                Zip/Pincode:
                <asp:TextBox ID="Zip_PincodeTextBox" runat="server" Text='<%# Bind("[Zip/Pincode]") %>' />
                <br />
                County:
                <asp:TextBox ID="CountyTextBox" runat="server" Text='<%# Bind("County") %>' />
                <br />
                Country:
                <asp:TextBox ID="CountryTextBox" runat="server" Text='<%# Bind("Country") %>' />
                <br />
                email_address:
                <asp:TextBox ID="email_addressTextBox" runat="server" Text='<%# Bind("email_address") %>' />
                <br />
                contactno:
                <asp:TextBox ID="contactnoTextBox" runat="server" Text='<%# Bind("contactno") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert"
                    Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False"
                    CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                profile_id:
                <asp:Label ID="profile_idLabel" runat="server" Text='<%# Eval("profile_id") %>' />
                <br />
                fname:
                <asp:Label ID="fnameLabel" runat="server" Text='<%# Bind("fname") %>' />
                <br />
                sname:
                <asp:Label ID="snameLabel" runat="server" Text='<%# Bind("sname") %>' />
                <br />
                Fullname:
                <asp:Label ID="FullnameLabel" runat="server" Text='<%# Bind("Fullname") %>' />
                <br />
                Companyname:
                <asp:Label ID="CompanynameLabel" runat="server" Text='<%# Bind("Companyname") %>' />
                <br />
                Address1:
                <asp:Label ID="Address1Label" runat="server" Text='<%# Bind("Address1") %>' />
                <br />
                Address2:
                <asp:Label ID="Address2Label" runat="server" Text='<%# Bind("Address2") %>' />
                <br />
                Address3:
                <asp:Label ID="Address3Label" runat="server" Text='<%# Bind("Address3") %>' />
                <br />
                City:
                <asp:Label ID="CityLabel" runat="server" Text='<%# Bind("City") %>' />
                <br />
                Zip/Pincode:
                <asp:Label ID="Zip_PincodeLabel" runat="server" Text='<%# Bind("[Zip/Pincode]") %>' />
                <br />
                County:
                <asp:Label ID="CountyLabel" runat="server" Text='<%# Bind("County") %>' />
                <br />
                Country:
                <asp:Label ID="CountryLabel" runat="server" Text='<%# Bind("Country") %>' />
                <br />
                email_address:
                <asp:Label ID="email_addressLabel" runat="server" Text='<%# Bind("email_address") %>' />
                <br />
                contactno:
                <asp:Label ID="contactnoLabel" runat="server" Text='<%# Bind("contactno") %>' />
                <br />
            </ItemTemplate>
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
        </asp:FormView>
        <br />
        <asp:Button ID="btn_Save" runat="server" Text="Save" />
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="update" runat="server" Text="Update" />
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="btn_Cancel" runat="server" Text="Cancel" />
    </div>
</asp:Content>
