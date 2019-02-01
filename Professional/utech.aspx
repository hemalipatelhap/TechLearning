<%@ Page Title="" Language="C#" MasterPageFile="~/Professional/MasterPage.master"
    AutoEventWireup="true" CodeFile="utech.aspx.cs" Inherits="Professional_utech" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
<br />
    <asp:Label ID="Label1" runat="server" Text="Update Technology Details" CssClass="title1" Width="100%"></asp:Label>
    <br /><br />
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="techid"
        DefaultMode="Edit" CssClass="dv" Backcolor="transparent" forecolor="white" GridLines="both">
        <Fields>
            <asp:TemplateField HeaderText="Technology Name" HeaderStyle-CssClass="header">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# bind("techname") %>' CssClass="tb"></asp:TextBox>
                </EditItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Description" HeaderStyle-CssClass="header">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Rows="6" Text='<%# bind("description") %>' CssClass="tb"
                        TextMode="MultiLine" Width="250px"></asp:TextBox>
                </EditItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="UserName" HeaderStyle-CssClass="header">
                <EditItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# bind("username") %>' CssClass="itemtp"></asp:Label>
                </EditItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Logo" HeaderStyle-CssClass="header">
                <EditItemTemplate>
                    <asp:Image ID="Image1" runat="server" Height="120px" ImageUrl='<%# bind("logo") %>' CssClass="imgs"
                        Width="120px" />
                    <br />
                    <asp:FileUpload ID="FileUpload1" runat="server" HeaderStyle-CssClass="header"/>
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
