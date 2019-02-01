<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true"
    CodeFile="cadmin.aspx.cs" Inherits="Admin_cadmin" %>

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
            width: 300px;
        }
        .auto-style1
        {
            width: 348px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Label ID="Label2" runat="server" Text="Admin" CssClass="title1" 
        Width="100%"></asp:Label>
    <br /><asp:Label ID="Label3" runat="server" Text="" Forecolor="red"></asp:Label>
    <table>
        <fieldset>
            <tr>
                <td class="ftd"></td>
                <td class="std">
                    <label for="name">
                        Name</label>
                </td>
                <td class="ttd">
                    :
                </td>
                <td class="fotd">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td class="fitd"></td>
            </tr>
             
            <tr>
                <td class="ftd"></td>
               
                <td class="std">
                    <label for="uname">
                        UserName</label>
                </td>
                <td class="ttd">
                    :
                </td>
                <td class="fotd">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
                <td class="fitd"></td>
            </tr>
            
            <tr>
                <td class="ftd"></td>
                <td class="std">
                    <label for="mail">
                        Email</label>
                </td>
                <td class="ttd">
                    :
                </td>
                <td class="fotd">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
                <td class="fitd"></td>
            </tr>
            
            <tr>
                <td class="ftd"></td>
                <td class="std">
                    <label for="password">
                        Password</label>
                </td>
                <td class="ttd">
                    :
                </td>
                <td class="fotd">
                    <asp:TextBox ID="TextBox4" type="password" runat="server"></asp:TextBox>
                </td>
                <td class="fitd"></td>
            </tr>
             
            <tr>
                <td class="ftd"></td>
                <td class="std">
                    <label for="password">
                        Confirm Password</label>
                </td>
                <td class="ttd">
                    :
                </td>
                <td class="fotd">
                    <asp:TextBox ID="TextBox8" type="password" runat="server"></asp:TextBox>
                </td>
                <td class="fitd"></td>
            </tr>
            
            <tr>
                <td class="ftd"></td>
                <td class="std">
                    <label for="name">
                        Photo:</label>
                </td>
                <td class="ttd">
                    :
                </td>
                <td class="fotd">
                    <asp:FileUpload ID="FileUpload2" runat="server" />
                </td>
                <td class="fitd"></td>
            </tr>
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        </fieldset>
        <tr>
            <td class="ftd"></td>
            <td class="std">
            <td class="ttd">
            <td class="fotd">
                <asp:Button ID="Button1" class="button2" runat="server" Text="Submit" OnClick="Button1_Click" />
            </td>
            <td class="fitd"></td>
        </tr>
    </table>
    </form>
</asp:Content>
