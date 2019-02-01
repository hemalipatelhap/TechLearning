<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true"
    CodeFile="cstud.aspx.cs" Inherits="Admin_cstud" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form action="" method="post">
    <asp:Label ID="Label2" runat="server" Text="Create Student" CssClass="title1" 
        Width="100%"></asp:Label>
    <br /><asp:Label ID="Label3" runat="server" Text="" Forecolor="red"></asp:Label>
    <table class="tb1">
        <fieldset>
            <tr>
                 <td class="ftd"></td>
                <td class="std" >
                    <legend class="title1" style="font-size:25px;color:blue">Your basic info</legend>
                </td>
                <td class="ttd"></td>
                <td class="fotd"></td>
                <td class="fitd"></td>
            </tr>
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
                    <label>
                        Gender</label>
                </td>
                <td class="ttd">
                    :
                </td>
                <td class="fotd">
                    <asp:RadioButton ID="RadioButton1" runat="server" Text="Male" />
                    <asp:RadioButton ID="RadioButton2" runat="server" Text="Female" />
                </td>
                <td class="fitd"></td>
            </tr>
        </fieldset>
        <fieldset>
            <tr>
            <td class="ftd"></td>
                <td class="std">
                    <legend class="title1" style="font-size:25px;color:blue">Your profile</legend>
                </td>
                <td class="ttd"></td>
                <td class="fotd"></td>
                <td class="fitd"></td>
            </tr>
            <tr>
            <td class="ftd"></td>
                <td class="std">
                    <label for="name">
                        Education</label>
                </td>
                <td class="ttd">
                    :
                </td>
                <td class="fotd">
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </td>
                <td class="fitd"></td>
            </tr>
            <tr>
            <td class="ftd"></td>
                <td class="std">
                    <label for="name">
                        DOB</label>
                </td>
                <td class="ttd">
                    :
                </td>
                <td class="fotd">
                    <asp:TextBox ID="TextBox7" type="date" runat="server"></asp:TextBox>
                </td>
                <td class="fitd"></td>
            </tr>
            <tr>
            <td class="ftd"></td>
                <td class="std">
                    <label for="name">
                        Address</label>
                </td>
                <td class="ttd">
                    :
                </td>
                <td class="fotd">
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                </td>
                <td class="fitd"></td>
            </tr>
            <tr>
            <td class="ftd"></td>
                <td class="std">
                    <label for="name">
                        Contact Number</label>
                </td>
                <td class="ttd">
                    :
                </td>
                <td class="fotd">
                    <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
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
            <td class="ftd">
            </td>
            <td class="std"></td>
            <td class="ttd"></td>
            <td class="fotd">
                <asp:Button ID="Button1" runat="server" class="button2" Text="Submit" OnClick="Button1_Click" />
                <br />
            </td>
            <td class="fitd"></td>
        </tr>
    </table>
    </form>
</asp:Content>
