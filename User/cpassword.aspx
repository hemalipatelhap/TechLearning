<%@ Page Title="" Language="C#" MasterPageFile="~/User/MasterPage.master" AutoEventWireup="true"
    CodeFile="cpassword.aspx.cs" Inherits="User_cpassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .style1
        {
            width: 347px;
        }
        .style2
        {
            width: 13px;
        }
        .style3
        {
            width: 365px;
        }
        .style4
        {
            width: 189px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table cellpadding="0" cellspacing="0">
        <tr>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="title1">
                <asp:Label ID="Label1" runat="server" Text="Change Password" CssClass="title1"></asp:Label><br /><br />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblmsg" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <table cellpadding="0" cellspacing="0" class="nav-justified">
                    <tr>
                        <td class="style4">
                            &nbsp;
                        </td>
                        <td>
                            <table>
                                <tr>
                                    <td class="ftd">
                                    </td>
                                    <td class="std">
                                        <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                                    </td>
                                    <td class="ttd">
                                        :
                                    </td>
                                    <td class="fotd">
                                        <asp:TextBox ID="TextBox1" type="password" runat="server"></asp:TextBox>
                                    </td>
                                    <td class="fitd">
                                    </td>
                                </tr>
                                <tr>
                                    <td class="ftd">
                                    </td>
                                    <td class="std">
                                        <asp:Label ID="Label3" runat="server" Text="New Password"></asp:Label>
                                    </td>
                                    <td class="ttd">
                                        :
                                    </td>
                                    <td class="fotd">
                                        <asp:TextBox ID="TextBox2" type="password" runat="server"></asp:TextBox>
                                    </td>
                                    <td class="fitd">
                                    </td>
                                </tr>
                                <tr>
                                    <td class="ftd">
                                    </td>
                                    <td class="std">
                                        <asp:Label ID="Label4" runat="server" Text="Confirm New Password"></asp:Label>
                                    </td>
                                    <td class="ttd">
                                        :
                                    </td>
                                    <td class="fotd">
                                        <asp:TextBox ID="TextBox3" type="password" runat="server"></asp:TextBox>
                                    </td>
                                    <td class="fitd">
                                    </td>
                                </tr>
                                <tr>
                                    <td class="ftd">
                                    </td>
                                    <td class="std">
                                        &nbsp;
                                    </td>
                                    <td class="ttd">
                                        &nbsp;
                                    </td>
                                    <td class="fotd">
                                        <asp:Button ID="Button1" runat="server" Text="Change Password" OnClick="Button1_Click"
                                            CssClass="btn-primary" />
                                    </td>
                                    <td class="fitd">
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td style="width: 100px;">
                            &nbsp;
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;
            </td>
        </tr>
    </table>
</asp:Content>
