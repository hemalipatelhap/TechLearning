<%@ Page Title="" Language="C#" MasterPageFile="~/Professional/MasterPage.master"
    AutoEventWireup="true" CodeFile="ubook.aspx.cs" Inherits="Professional_ubook" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

<br />
    <asp:Label ID="Label1" runat="server" Text="Update Book Details" CssClass="title1" Width="100%"></asp:Label>
    <br />
    <br />
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="bookid"
        DefaultMode="Edit" CssClass="dv" BorderStyle="None" Backcolor="transparent" forecolor="white" GridLines="both">
        <Fields>
            <asp:TemplateField HeaderText="Book ID" HeaderStyle-CssClass="header">
                <EditItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# bind("bookid") %>' CssClass="tb"></asp:Label>
                </EditItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Technology Name" HeaderStyle-CssClass="header">
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownList1" CssClass="tb" runat="server" AutoPostBack="true">
                    </asp:DropDownList>
                </EditItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Book Name" HeaderStyle-CssClass="header">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# bind("bookname") %>' CssClass="tb"></asp:TextBox>
                </EditItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Author" HeaderStyle-CssClass="header">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# bind("author") %>' CssClass="tb"></asp:TextBox>
                </EditItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Publisher" HeaderStyle-CssClass="header">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# bind("publisher") %>' CssClass="tb"></asp:TextBox>
                </EditItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Price" HeaderStyle-CssClass="header">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# bind("price") %>' CssClass="tb"></asp:TextBox>
                </EditItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="UserName" HeaderStyle-CssClass="header">
                <EditItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# bind("username") %>' CssClass="tb"></asp:Label>
                </EditItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Created Date" HeaderStyle-CssClass="header">
                <EditItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# bind("createdate") %>' CssClass="tb"></asp:Label>
                </EditItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <EditItemTemplate>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Update" CssClass="btn-primary" />
                    &nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Cancel" CssClass="btn-primary" />
                </EditItemTemplate>
            </asp:TemplateField>
        </Fields>
    </asp:DetailsView>
   
</asp:Content>
