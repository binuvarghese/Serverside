<%@ Page Title="Contact Us" Language="VB" AutoEventWireup="false"   MasterPageFile="~/Site.master" 
CodeFile="Contactus.aspx.vb" Inherits="Contactus" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .style1
        {
            width: 298px;
        }
        .style3
        {
            text-align: left;
        }
        .style4
        {
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">

  
    <div style="height: 371px">
        <table style="width: auto; align="left" cellpadding="4" cellspacing="4">
            <tr>
                <td class="style4">
                    FullName:</td>
                <td class="style1">
                    &nbsp;
                    <asp:TextBox ID="txt_name" runat="server" Width="273px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txt_name" ErrorMessage="Please Enter the Fullname" 
                        ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
                
            </tr>
            <tr>
                <td class="style4">
                    Email Address:</td>
                <td class="style1">
                    &nbsp;
                    <asp:TextBox ID="txt_email" runat="server" Width="273px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txt_email" ErrorMessage="Please Enter the emailAddress" 
                        ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
                
            </tr>
            <tr>
                <td class="style4">
                    Contact No:</td>
                <td class="style1">
                    &nbsp;
                    <asp:TextBox ID="txt_contact" runat="server" Width="273px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="txt_contact" ErrorMessage="Please enter the phone Number" 
                        ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
                
            </tr>
            <tr>
                <td class="style4">
                    Subject:</td>
                <td class="style1">
                    &nbsp;
                    <asp:TextBox ID="txt_subject" runat="server" Height="23px" Width="273px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="txt_subject" ErrorMessage="Please enter the subject" 
                        ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
                
            </tr>
            <tr>
                <td class="style3">
                    Query/Comments:</td>
                <td class="style1">
                    &nbsp;
                    <asp:TextBox ID="txt_comments" runat="server" TextMode="MultiLine" 
                        Height="158px" Width="280px"></asp:TextBox>
                </td>
                
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style1">
                    &nbsp;
                    <asp:Button ID="btn_Submit" runat="server" Text="Submit" />
                </td>
                
            </tr>
        </table>
        <br />
    </div>

</asp:Content>
