<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true"
    CodeFile="login.aspx.cs" Inherits="Login" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form action="" method="post">
    <h1>
        Login</h1>
    <p>
        <asp:Label ID="Label1" runat="server"></asp:Label>
    </p>
    <fieldset>
        <label for="name">
            Username:</label>
        <asp:TextBox ID="TextBox1" runat="server" ForeColor="Black"></asp:TextBox>
        <label for="uname">
            Password:</label>
        <asp:TextBox ID="TextBox2" type="password" runat="server"></asp:TextBox>
    </fieldset>
    <asp:Button ID="Button1" class="button" runat="server" Text="Login" OnClick="Button1_Click"
        BackColor="#000099" BorderColor="#0000CC" />
    <asp:Button ID="Button2" class="button2" runat="server" Text="Register as Professional"
        OnClick="Button2_Click" BackColor="#000099" BorderColor="#0000CC" />
    <asp:Button ID="Button3" class="button3" runat="server" Text="Register as Student"
        OnClick="Button3_Click" BackColor="#000099" BorderColor="#0000CC" />
    <asp:HyperLink ID="HyperLink1" NavigateUrl="user/home.aspx" runat="server" ForeColor="#FFFFCC">Sign in as Guest</asp:HyperLink>
    </form>
</asp:Content>
