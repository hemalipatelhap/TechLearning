<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true"
    CodeFile="verifyprof.aspx.cs" Inherits="Admin_verifyprof" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Label ID="Label1" runat="server" Text="&nbsp;&nbsp;&nbsp;&nbsp;Professional Details" 
        CssClass="title1" Width="100%"></asp:Label>
    <asp:Label ID="lblmsg" runat="server"></asp:Label>
    <div style="margin:0 auto;display:table;">
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DefaultMode="ReadOnly"
        CssClass="dv" BorderColor="darkblue"
        CellPadding="3"  HorizontalAlign="Center" Backcolor="transparent" forecolor="midnightblue" GridLines="both">
        <Fields>
            <asp:TemplateField HeaderText="Name" HeaderStyle-CssClass="header">
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" CssClass="itemtp" Text='<%# bind("name") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Userame" HeaderStyle-CssClass="header">
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" CssClass="itemtp" Text='<%# bind("username") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Education" HeaderStyle-CssClass="header">
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" CssClass="itemtp" Text='<%# bind("education") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Education Certificate" HeaderStyle-CssClass="header">
                <ItemTemplate>
                    <asp:ImageButton ID="ImageButton1" style="border:1px solid grey" height="200px" CssClass="itemtp" OnClientClick="document.forms[0].target = '_blank';" OnCommand="ImageButton1_Command" runat="server" ImageUrl='<%# bind("educationcertificate") %>'
                        Width="200px" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Address" HeaderStyle-CssClass="header">
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" CssClass="itemtp" Text='<%# bind("address") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Email Id" HeaderStyle-CssClass="header">
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" CssClass="itemtp" Text='<%# bind("emailid") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Contact No." HeaderStyle-CssClass="header">
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" CssClass="itemtp" Text='<%# bind("contactno") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Photo" HeaderStyle-CssClass="header">
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" Height="120px" CssClass="imgs" ImageUrl='<%# bind("photo") %>'
                        Width="120px" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:Button ID="Button1" CssClass="button2" runat="server" OnClick="Button1_Click" Text="Verify" />
                    <asp:Button ID="Button2" CssClass="button2" runat="server" OnClick="Button2_Click" Text="Back" />
                </ItemTemplate>
            </asp:TemplateField>
        </Fields>
    </asp:DetailsView>
    </div>
</asp:Content>
