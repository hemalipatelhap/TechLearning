<%@ Page Title="" Language="C#" MasterPageFile="~/Professional/MasterPage.master"
    AutoEventWireup="true" CodeFile="ccontent.aspx.cs" Inherits="Professional_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .ftd
        {
            width: 450px;
            padding: 5px;
        }
        .std
        {
            font-size: x-large;
            color: white;
            text-align: left;
            padding: 5px;
        }
        .ttd
        {
            font-size: 14px;
            width: 14px;
            text-align: center;
            padding: 5px;
        }
        .fotd
        {
            font-size: 14px;
            width: 200px;
            text-align: left;
            padding: 5px;
        }
        .fitd
        {
            width: 330px;
            padding: 5px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table>
        <tr>
            <br />
            <td class="title1" colspan="5">
                &nbsp;Create Content
            </td>
            <br />
        </tr>
        <tr>
            <td class="ftd" colspan="5">
                <asp:Label ID="Label1" runat="server"></asp:Label>
                <br />
            </td>
        </tr>
        <tr>
            <td class="ftd">
            </td>
            <td class="std">
                Technology
            </td>
            <td class="ttd">
                :
            </td>
            <td class="fotd">
                <asp:DropDownList ID="DropDownList1" runat="server" Width="150px">
                </asp:DropDownList>
            </td>
            <td class="fitd">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DropDownList1"
                    ErrorMessage="*" ValidationGroup="reg2">Select Technology</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="ftd">
                &nbsp;
            </td>
            <td class="std">
                Content Name
            </td>
            <td class="ttd">
                :
            </td>
            <td class="fotd">
                <asp:TextBox ID="TextBox2" runat="server" Width="150px"></asp:TextBox>
            </td>
            <td class="fitd">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2"
                    ErrorMessage="*" ValidationGroup="reg2">Enter content name</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="ftd">
                &nbsp;
            </td>
            <td class="std">
                Syntax
            </td>
            <td class="ttd">
                :
            </td>
            <td class="fotd">
                <asp:TextBox ID="TextBox3" runat="server" MaxLength="4" Rows="3" 
                    TextMode="MultiLine" Width="150px"></asp:TextBox>
            </td>
            <td class="fitd">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="ftd">
                &nbsp;
            </td>
            <td class="std">
                Description
            </td>
            <td class="ttd">
                :
            </td>
            <td class="fotd">
                <asp:TextBox ID="TextBox4" runat="server" MaxLength="4" Rows="3" 
                    TextMode="MultiLine" Width="150px"></asp:TextBox>
            </td>
            <td class="fitd">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="ftd">
                &nbsp;
            </td>
            <td class="std">
                Example
            </td>
            <td class="ttd">
                :
            </td>
            <td class="fotd">
                <asp:TextBox ID="TextBox5" runat="server" MaxLength="4" Rows="3" 
                    TextMode="MultiLine" Width="150px"></asp:TextBox>
            </td>
            <td class="fitd">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="ftd">
                &nbsp;
            </td>
            <td class="std">
                Video
            </td>
            <td class="ttd">
                :
            </td>
            <td class="fotd">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
            <td class="fitd">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="ftd">
                &nbsp;
            </td>
            <td class="std">
            </td>
            <td class="ttd">
            </td>
            <td class="fotd">
                <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" CssClass="btn-primary"
                    ValidationGroup="reg2" />
            </td>
            <td class="fitd">
            </td>
        </tr>
    </table>
    <br />
</asp:Content>
