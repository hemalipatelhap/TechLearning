<%@ Page Title="" Language="C#" MasterPageFile="~/Professional/MasterPage.master"
    AutoEventWireup="true" CodeFile="givesolution.aspx.cs" Inherits="Professional_givesolution" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .ftd
        {
            width: 520px;
            padding: 5px;
        }
        .std
        {
            font-size: large;
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
            font-size: large;
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
    <table cellpadding="0" cellspacing="0" class="nav-justified">
        <tr>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="title1">
                Give Solution
            </td>
        </tr>
        <tr>
            <td>
                <table cellpadding="0" cellspacing="0" class="nav-justified">
                    <tr>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table cellpadding="0" cellspacing="0">
                                <tr>
                                    <td class="ftd" colspan="5">
                                        &nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td class="ftd">
                                        &nbsp;
                                    </td>
                                    <td class="std">
                                        Query
                                    </td>
                                    <td class="ttd">
                                        :
                                    </td>
                                    <td class="fotd">
                                        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
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
                                        &nbsp;
                                    </td>
                                    <td class="fotd">
                                        <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" Height="88px" Width="208px"></asp:TextBox>
                                        <br />
                                        <br />
                                        <asp:Button ID="Button2" runat="server" Text="Post Solution" OnClick="Button2_Click"
                                            CssClass="btn-primary" />
                                        <br />
                                    </td>
                                    <td class="fitd">
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
