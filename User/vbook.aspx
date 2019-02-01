<%@ Page Title="" Language="C#" MasterPageFile="~/User/MasterPage.master" AutoEventWireup="true"
    CodeFile="vbook.aspx.cs" Inherits="User_vbook" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
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
            color: white;
            font-size: x-large;
            text-align: left;
            padding: 5px;
        }
        .fitd
        {
            width: 450px;
            padding: 5px;
        }
        .ratingEmpty
        {
            background-image: url(../img/e.gif);
            width: 18px;
            height: 18px;
        }
        .ratingFilled
        {
            background-image: url(../img/f.gif);
            width: 18px;
            height: 18px;
        }
        .ratingSaved
        {
            background-image: url(../img/s.gif);
            width: 18px;
            height: 18px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <table cellpadding="0" cellspacing="0">
        <tr>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td>
                <table cellpadding="0" cellspacing="0">
                    <tr>
                        <td colspan="5">
                            <asp:Label ID="Label6" runat="server" CssClass="title1" Width="100%">Add Rating of Book</asp:Label><br />
                        </td>
                    </tr>
                    <tr>
                    <td><br /></td>
                    </tr>
                    <tr>
                        <td class="ftd" colspan="5">
                            <asp:Label ID="Label7" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="ftd">
                            &nbsp;
                        </td>
                        <td class="std">
                            Name
                        </td>
                        <td class="ttd">
                            :
                        </td>
                        <td class="fotd">
                            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
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
                            Author
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
                            Publisher
                        </td>
                        <td class="ttd">
                            &nbsp;
                        </td>
                        <td class="fotd">
                            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
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
                            Price
                        </td>
                        <td class="ttd">
                            &nbsp;
                        </td>
                        <td class="fotd">
                            <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
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
                            <asp:Label ID="Label9" runat="server" Text=""></asp:Label>
                        </td>
                        <td class="ttd">
                            &nbsp;
                        </td>
                        <td class="fotd">
                            <asp:Label ID="Label8" runat="server" Text=""></asp:Label>
                        </td>
                        <td class="fitd">
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td class="ftd">
                            &nbsp;
                        </td>
                        <td id="td1" class="std">
                            <asp:Label ID="Label5" runat="server" Text="Rating"></asp:Label>
                        </td>
                        <td class="ttd">
                            &nbsp;
                        </td>
                        <td class="fotd">
                            <ajaxToolkit:Rating ID="rating1" StarCssClass="ratingEmpty" WaitingStarCssClass="ratingSaved"
                                EmptyStarCssClass="ratingEmpty" FilledStarCssClass="ratingFilled" runat="server">
                            </ajaxToolkit:Rating>
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
                            <asp:Button ID="Button2" runat="server" Text="Add Rating" OnClick="Button2_Click"
                                CssClass="btn-primary" />
                                <asp:Button ID="Button1" runat="server" Text="Back" OnClick="Button1_Click"
                                CssClass="btn-primary" />
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
        <tr>
            <td>
                &nbsp;
            </td>
        </tr>
    </table>
</asp:Content>
