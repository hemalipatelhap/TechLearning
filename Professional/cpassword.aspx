<%@ Page Title="" Language="C#" MasterPageFile="~/Professional/MasterPage.master"
    AutoEventWireup="true" CodeFile="cpassword.aspx.cs" Inherits="Professional_cpassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .ftd
        {
            width: 380px;
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
            width: 270px;
            padding: 5px;
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
                <asp:Label ID="Label1" runat="server" Text="Change Password"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblmsg" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <br />
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
                            <table class="nav-justified">
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
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                            ControlToValidate="TextBox1" ErrorMessage="Please enter password" 
                                            ValidationGroup="cp"></asp:RequiredFieldValidator>
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
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                            ControlToValidate="TextBox2" ErrorMessage="Please enter new password" 
                                            ValidationGroup="cp"></asp:RequiredFieldValidator>
                                        <br />
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
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                            ControlToValidate="TextBox3" ErrorMessage="Please confirm password" 
                                            ValidationGroup="cp"></asp:RequiredFieldValidator>
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
                                            CssClass="btn-primary" ValidationGroup="cp" />
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
