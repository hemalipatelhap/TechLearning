<%@ Page Title="" Language="C#" MasterPageFile="~/User/MasterPage.master" AutoEventWireup="true"
    CodeFile="viewdetails.aspx.cs" Inherits="User_viewdetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .ftd
        {
            width: 500px;
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
            text-align: justify;
            padding: 5px;
        }
        .fitd
        {
            width: 500px;
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
            <td>
                <table cellpadding="0" cellspacing="0">
                    <tr>
                        <td class="ftd" colspan="5">
                            <asp:Label ID="Label6" runat="server" CssClass="title1"></asp:Label>
                        </td>
                    </tr>
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
                            &nbsp;
                        </td>
                        <td class="ttd">
                            &nbsp;
                        </td>
                        <td class="fotd">
                            &nbsp;
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
                            Syntax
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
                            &nbsp;
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
                            &nbsp;
                        </td>
                        <td class="ttd">
                            &nbsp;
                        </td>
                        <td class="fotd">
                            &nbsp;
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
                            &nbsp;
                        </td>
                        <td class="ttd">
                            &nbsp;
                        </td>
                        <td class="fotd">
                            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Video Lecture"
                                CssClass="btn-primary" OnClientClick="document.forms[0].target = '_blank';" />
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
                            Created By
                        </td>
                        <td class="ttd">
                            &nbsp;
                        </td>
                        <td class="fotd">
                            <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                            &nbsp;<asp:Button ID="Button1" runat="server" Text="Follow" OnClick="Button1_Click"
                                CssClass="btn-primary" />
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
                            &nbsp;
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
                            <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" Font-Size="15px" ForeColor="Black" Rows="3"></asp:TextBox>
                            <br />
                            <asp:Button ID="Button2" runat="server" Text="Ask Query" OnClick="Button2_Click"
                                CssClass="btn-primary" />
                            <br />
                            <asp:Button ID="Button3" runat="server" Text="Login to Ask Query" OnClick="Button3_Click"
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
    <table cellpadding="0" cellspacing="0">
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
        <tr>
            <td>
            <asp:Label ID="Label9" runat="server" Text="Queries:"  CssClass="title1"></asp:Label>
    <br /><br />
                <asp:ListView ID="ListView1" runat="server">
                    <ItemTemplate>
                    
                        <div style="text-align: left; background-color: silver; margin-bottom: 15px;width:1500px">
                            <br />
                            <asp:Image ID="Image1" Height="30px" Width="30px" Style="border-radius: 30px" ImageUrl='<%#bind("UPIC") %>'
                                runat="server" />
                            <asp:Label ID="Label7" runat="server" forecolor="#330033" Text='<%#bind("User") %>'></asp:Label>
                            <br />
                            <asp:Label Style="margin-left: 30px" ForeColor="#3300CC" ID="Label1" runat="server" Text='<%#bind("Query") %>'></asp:Label>
                            <br />
                            <asp:Image ID="Image2" Height="30px" Width="30px" Style="border-radius: 30px" ImageUrl='<%#bind("PPIC") %>'
                                runat="server" />
                            <asp:Label ID="Label8" runat="server" forecolor="#330033" Text='<%#bind("Prof") %>'></asp:Label>
                            <br />
                            <asp:Label Style="margin-left: 30px" ForeColor="#3300CC" ID="Label2" runat="server"
                                Text='<%#bind("Solution") %>'></asp:Label>
                        </div>
                    </ItemTemplate>
                </asp:ListView>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;
            </td>
        </tr>
    </table>
</asp:Content>
