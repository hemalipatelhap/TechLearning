<%@ Page Title="" Language="C#" MasterPageFile="~/Professional/MasterPage.master"
    AutoEventWireup="true" CodeFile="vtech.aspx.cs" Inherits="Professional_vtech" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
<br />
<br />
    <asp:Label ID="Label1" runat="server" Text="View Technology Details" 
        CssClass="title1" Width="100%"></asp:Label>
    <br />
    <br />
    <br />
    <asp:Label ID="lblmsg" runat="server"></asp:Label>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="techid"
        DefaultMode="ReadOnly" CssClass="dv"  Backcolor="transparent" forecolor="white" GridLines="both">
        <Fields>
            
            <asp:TemplateField HeaderText="Technology Name" HeaderStyle-CssClass="header">
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# bind("techname") %>' 
                        CssClass="itemtp"></asp:Label>
                </ItemTemplate>

<HeaderStyle CssClass="header"></HeaderStyle>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Description" HeaderStyle-CssClass="header">
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# bind("description") %>' CssClass="itemtp" ></asp:Label>
                </ItemTemplate>

<HeaderStyle CssClass="header"></HeaderStyle>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Username" HeaderStyle-CssClass="header">
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# bind("username") %>' CssClass="itemtp"></asp:Label>
                </ItemTemplate>

<HeaderStyle CssClass="header"></HeaderStyle>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Logo" HeaderStyle-CssClass="header">
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" Height="120px" ImageUrl='<%# bind("logo") %>' CssClass="imgs"
                        Width="120px" />
                </ItemTemplate>

<HeaderStyle CssClass="header"></HeaderStyle>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Created Date" HeaderStyle-CssClass="header">
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# bind("createdate") %>' CssClass="itemtp"></asp:Label>
                </ItemTemplate>

<HeaderStyle CssClass="header"></HeaderStyle>
            </asp:TemplateField>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Edit" CssClass="btn-primary" />
                    &nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Cancel" CssClass="btn-primary" />
                    <br>
                    </br>
                </ItemTemplate>
            </asp:TemplateField>
        </Fields>
    </asp:DetailsView>
   
</asp:Content>
