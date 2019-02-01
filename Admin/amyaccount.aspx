<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true"
    CodeFile="amyaccount.aspx.cs" Inherits="Admin_amyaccount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <br />
    <asp:Label ID="Label1" runat="server" Text="&nbsp;&nbsp;&nbsp;&nbsp;My Profile" CssClass="title1" 
        Width="100%"></asp:Label>
    <div style="margin:0 auto;display:table;">
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CssClass="dv" BorderColor="darkblue"
        CellPadding="3"  HorizontalAlign="Center" Backcolor="transparent" forecolor="midnightblue" GridLines="both">
       
        <Fields>
            <asp:TemplateField HeaderText="username" HeaderStyle-CssClass="header">
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" CssClass="itemtp" Text=' <%# bind("username") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="firstname" HeaderStyle-CssClass="header">
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" CssClass="itemtp" Text='<%# bind("name") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="emailid" HeaderStyle-CssClass="header">
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" CssClass="itemtp" Text='<%# bind("emailid") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="photo" HeaderStyle-CssClass="header">
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" Height="120px" CssClass="imgs" ImageUrl='<%# bind("photo") %>'
                        Width="120px" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:Button ID="Button1" CssClass="button2" Width="150px" runat="server" Text="Update Account" OnClick="Button1_Click" />
                </ItemTemplate>
            </asp:TemplateField>
        </Fields>
        
    </asp:DetailsView>
    </div>
</asp:Content>
