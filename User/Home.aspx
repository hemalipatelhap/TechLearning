<%@ Page Title="" Language="C#" MasterPageFile="~/User/MasterPage.master" AutoEventWireup="true"
    CodeFile="Home.aspx.cs" Inherits="User_Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <br/>
    <asp:Label ID="Label1" runat="server" Text="Technologies" CssClass="title1" Width="100%"></asp:Label><br /> <br/>
   <asp:Label ID="Label2" runat="server" Width="37%" Height="16px"></asp:Label>
  
    <asp:TextBox ID="TextBox1" runat="server" CssClass="tb" Width="250px"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" CssClass="btn-primary" Text="Search" OnClick="Button1_Click" />
    <br />
    <br />
    <asp:DataList ID="DataList1" runat="server" CellPadding="4" HorizontalAlign="Center" style="margin:0 auto;display:table"
        RepeatColumns="3" RepeatDirection="Horizontal" ForeColor="white" BackColor="transparent" HeaderStyle-BorderStyle="Solid" BorderStyle="Solid" BorderColor="White" HeaderStyle-BorderColor="White">
       
        <ItemTemplate>
            <asp:Label ID="Label2" runat="server" Text='<%# bind("techname") %>' CssClass="itemtp"></asp:Label>
            <br />
            <br />
            <asp:ImageButton ID="ImageButton1" ImageUrl='<%#bind("logo") %>' OnCommand="ImageButton1_Command"
                CommandArgument='<%# bind("techid") %>' runat="server" style="border-radius:120px;" Height="120px" Width="120px" class="images" CssClass="grid" />
            <br />
        </ItemTemplate>
        
    </asp:DataList>
</asp:Content>
