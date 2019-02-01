<%@ Page Title="" Language="C#" MasterPageFile="~/Professional/MasterPage.master"
    AutoEventWireup="true" CodeFile="ctech.aspx.cs" Inherits="Professional_ctech" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .ftd
        {
            width: 430px;
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
            text-align: left;
            padding: 5px;
        }
        .fitd
        {
            width: 250px;
            padding: 5px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table>
        <tr>
            <br />
            <td class="title1" colspan="5">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Create Technology
            </td>
            <br />
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
                &nbsp;Technology Name
            </td>
            <td class="ttd">
                :
            </td>
            <td class="fotd">
                <asp:TextBox ID="TextBox1" runat="server" BackColor="White"></asp:TextBox>
            </td>
            <td class="fitd">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
                    ErrorMessage="Enter tech" ValidationGroup="reg">Enter technology name</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="ftd">
                &nbsp;
            </td>
            <td class="std">
                &nbsp;Description
            </td>
            <td class="ttd">
                :
            </td>
            <td class="fotd">
                <asp:TextBox ID="TextBox2" runat="server" Height="59px" TextMode="MultiLine"></asp:TextBox>
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
                &nbsp;Logo
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
                &nbsp;
            </td>
            <td class="ttd">
            </td>
            <td class="fotd">
                <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" CssClass="btn-primary"
                    ValidationGroup="reg" />
            </td>
            <td class="fitd">
                &nbsp;
            </td>
        </tr>
    </table>
    <br />
</asp:Content>
