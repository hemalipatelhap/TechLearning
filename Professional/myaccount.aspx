﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Professional/MasterPage.master"
    AutoEventWireup="true" CodeFile="MyAccount.aspx.cs" Inherits="Professional_MyAccount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <br />
    <asp:Label ID="Label1" runat="server" Text="My Profile" CssClass="title1" Width="100%"></asp:Label>
    <asp:Label ID="lblmsg" runat="server"></asp:Label>
    <br/>
    <br/>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CssClass="dv"
        CellPadding="3"  HorizontalAlign="Center" Backcolor="transparent" forecolor="white" GridLines="both">
        <Fields>
            <asp:TemplateField HeaderText="username" HeaderStyle-CssClass="header">
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# bind("username") %>' CssClass="itemtp"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="firstname" HeaderStyle-CssClass="header">
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# bind("name") %>' CssClass="itemtp"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="education" HeaderStyle-CssClass="header">
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# bind("education") %>' CssClass="itemtp"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="address" HeaderStyle-CssClass="header">
                <ItemTemplate>
                    <asp:Label ID="Label9" runat="server" Text='<%# bind("address") %>' CssClass="itemtp"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="emailid" HeaderStyle-CssClass="header">
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# bind("emailid") %>' CssClass="itemtp"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="contactno" HeaderStyle-CssClass="header">
                <ItemTemplate>
                    <asp:Label ID="Label8" runat="server" Text='<%# bind("contactno") %>' CssClass="itemtp"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="photo" HeaderStyle-CssClass="header">
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" Height="120px" ImageUrl='<%# bind("photo") %>' CssClass="imgs"
                        Width="120px" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:Button ID="Button1" runat="server" Text="Update Account" OnClick="Button1_Click"
                        CssClass="btn-primary" />
                </ItemTemplate>
            </asp:TemplateField>
        </Fields>
        
    </asp:DetailsView>
</asp:Content>