<%@ Page Title="" Language="C#" MasterPageFile="~/Professional/MasterPage.master"
    AutoEventWireup="true" CodeFile="vcon.aspx.cs" Inherits="Professional_vcon" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
<br/>
    <asp:Label ID="Label1" runat="server" Text="View Content Details" CssClass="title1" Width="100%"></asp:Label>
    <asp:Label ID="lblmsg" runat="server"></asp:Label>
    <br/>
    <br/>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="contentid"
        DefaultMode="ReadOnly" CssClass="dv" Backcolor="transparent" forecolor="white" GridLines="both" >
        <Fields>
            <asp:TemplateField HeaderText="Technology Name" HeaderStyle-CssClass="header">
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# bind("techname") %>' CssClass="itemtp"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Content Name" HeaderStyle-CssClass="header">
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# bind("contentname") %>' CssClass="itemtp"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Syntax" HeaderStyle-CssClass="header">
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# bind("description") %>' CssClass="itemtp"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Description" HeaderStyle-CssClass="header">
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# bind("longdesc") %>' CssClass="itemtp"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Example" HeaderStyle-CssClass="header">
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# bind("otehrdesc") %>' CssClass="itemtp"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="UserName" HeaderStyle-CssClass="header">
                <ItemTemplate>
                    <asp:Label ID="Label8" runat="server" Text='<%# bind("username") %>' CssClass="itemtp"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Created Date" HeaderStyle-CssClass="header">
                <ItemTemplate>
                    <asp:Label ID="Label9" runat="server" Text='<%# bind("createdate") %>' CssClass="itemtp"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Back" CssClass="btn-primary" />
                </ItemTemplate>
            </asp:TemplateField>
        </Fields>
    </asp:DetailsView>
</asp:Content>
