<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true"
    CodeFile="sregister.aspx.cs" Inherits="sregister" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form action="" method="post">
   
    <h1>
        Sign Up as Student</h1>
    <fieldset>
    <asp:Label ID="Label1" Forecolor="red" runat="server" Text=""></asp:Label><br /><br />
        <legend><span class="number" style="background-color: blue;">1</span>Your basic info</legend>
        <label for="name">
            Name:</label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <label for="uname">
            UserName:</label>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <label for="mail">
            Email:</label>
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <label for="password">
            Password:</label>
        <asp:TextBox ID="TextBox4" type="password" runat="server"></asp:TextBox>
        <label for="password">
            Confirm Password:</label>
        <asp:TextBox ID="TextBox8" type="password" runat="server"></asp:TextBox>
        <label>
            Gender:</label>
        <asp:RadioButton ID="RadioButton1" runat="server" Text="Male" />
        <asp:RadioButton ID="RadioButton2" runat="server" Text="Female" />
    </fieldset>
    <fieldset>
        <legend><span class="number" style="background-color: blue;">2</span>Your profile</legend>
        <label for="name">
            Education:</label>
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        <label for="name">
            DOB:</label>
        <asp:TextBox ID="TextBox7" type="date" runat="server"></asp:TextBox>
        <label for="name">
            Address:</label>
        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
        <label for="name">
            Contact Number:</label>
        <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
        <label for="name">
            Photo:</label>
        <asp:FileUpload ID="FileUpload2" runat="server" CssClass="file" />
        
    </fieldset>
    <asp:Button ID="Button1" class="button" runat="server" Text="Sign Up" OnClick="Button1_Click"
        BackColor="#0000CC" BorderColor="#0000CC" />
    </form>
</asp:Content>
