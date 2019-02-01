<%@ Page Title="" Language="C#" MasterPageFile="~/Professional/MasterPage.master"
    AutoEventWireup="true" CodeFile="ucontent.aspx.cs" Inherits="Professional_ucontent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
<br />
    <asp:Label ID="Label1" runat="server" Text="Update Content Details" CssClass="title1" Width="100%"></asp:Label>
    <asp:Label ID="lblmsg" runat="server"></asp:Label><br /><br />
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="contentid"
        DefaultMode="Edit" CssClass="dv" Backcolor="transparent" forecolor="white" GridLines="both">
        <Fields>
            <asp:TemplateField HeaderText="Technology Name" HeaderStyle-CssClass="header">
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true"  CssClass="tb">
                    </asp:DropDownList>
                </EditItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Content Name" HeaderStyle-CssClass="header">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# bind("contentname") %>' CssClass="tb"></asp:TextBox>
                </EditItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Syntax" HeaderStyle-CssClass="header">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Rows="6" Text='<%# bind("description") %>' CssClass="tb"
                        TextMode="MultiLine"></asp:TextBox>
                </EditItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Description" HeaderStyle-CssClass="header">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Rows="6" Text='<%# bind("longdesc") %>' CssClass="tb"
                        TextMode="MultiLine" Width="250px"></asp:TextBox>
                </EditItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Example" HeaderStyle-CssClass="header">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Rows="6" Text='<%# bind("otehrdesc") %>' CssClass="tb"
                        TextMode="MultiLine" Width="250px"></asp:TextBox>
                </EditItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="UserName" HeaderStyle-CssClass="header">
                <EditItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# bind("username") %>' CssClass="itemtp"></asp:Label>
                </EditItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Created Date" HeaderStyle-CssClass="header">
                <EditItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# bind("createdate") %>' CssClass="itemtp"></asp:Label>
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
