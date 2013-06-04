<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false"
    CodeFile="addcomments.aspx.vb" Inherits="addcomments" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.OleDb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
    <style type="text/css">
        .style1
        {
            width: 142px;
            font-size: large;
            text-align: right;
        }
        .style2
        {
            width: 142px;
            height: 95px;
            font-size: large;
            text-align: right;
        }
        .style3
        {
            height: 95px;
        }
        .style4
        {
            width: 142px;
            height: 50px;
        }
        .style5
        {
            height: 50px;
        }
        .style6
        {
            font-size: large;
        }
        .style7
        {
            color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <table style="width: 64%;" align="center" bgcolor="Gray">
        <tr>
            <td class="style1">
                <span class="style7">Fullname</span>
            </td>
            <td>
                <asp:TextBox ID="txt_fullname" runat="server" Height="24px" Width="197px" 
                    CausesValidation="True" style="font-size: large"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txt_fullname" ErrorMessage="Name Required" 
                    ForeColor="Red" style="font-size: large"></asp:RequiredFieldValidator>
            </td>
                    </tr>
        <tr>
            <td class="style1">
                <span class="style7">Date</span>
            </td>
            <td>
                <asp:TextBox ID="txt_date" runat="server" Height="24px" Width="195px"></asp:TextBox>
                <asp:CalendarExtender ID="txt_date_CalendarExtender" runat="server" 
                    Enabled="True" TargetControlID="txt_date" Format="dd/MM/yyyy">
                </asp:CalendarExtender>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txt_date" ErrorMessage="Date Required" ForeColor="Red" 
                    style="font-size: large"></asp:RequiredFieldValidator>
            </td>
           
        </tr>
        <tr>
            <td class="style1">
                <span class="style7">Email Address</span>
            </td>
            <td>
                <asp:TextBox ID="txt_email" runat="server" Height="21px" Width="196px" 
                    style="font-size: large"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txt_email" ErrorMessage="Email Required" 
                    ForeColor="Red" style="font-size: large"></asp:RequiredFieldValidator>
            </td>
         
        </tr>
        <tr>
            <td class="style2" bgcolor="Gray">
                <span class="style7">Comments</span>
            </td>
            <td class="style3">
                <asp:TextBox ID="txt_comments" runat="server" TextMode="MultiLine" 
                    Height="74px" Width="198px" style="font-size: large"></asp:TextBox>
            </td>
            
        </tr>
        <tr>
            <td class="style4">
                </td>
            <td class="style5">
                <br />
                <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="style6" />
                &nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" Text="Clear" CssClass="style6" />
            </td>
            
        </tr>
    </table>
    <br />
    <br />
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
</asp:Content>
