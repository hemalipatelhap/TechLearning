<%@ Page Title="" Language="C#" MasterPageFile="~/User/MasterPage.master" AutoEventWireup="true"
    CodeFile="umyaccount.aspx.cs" Inherits="User_umyaccount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server"><br />
    <asp:Label ID="Label1" runat="server" Text="Update MyAccount" CssClass="title1" Width="100%"></asp:Label>
    <asp:Label ID="lblmsg" runat="server"></asp:Label><br /><br />
    <asp:DetailsView ID="DetailsView1" runat="server" DefaultMode="Edit" AutoGenerateRows="False"
        CssClass="dv" Backcolor="transparent" forecolor="white" GridLines="both">
        <Fields>
            <asp:TemplateField HeaderText="username" HeaderStyle-CssClass="header">
                <EditItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# bind("username") %>' CssClass="itemtp"></asp:Label>
                </EditItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Name" HeaderStyle-CssClass="header">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# bind("name") %>' CssClass="tb"></asp:TextBox>
                </EditItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="education" HeaderStyle-CssClass="header">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# bind("education") %>' CssClass="tb"></asp:TextBox>
                </EditItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="address" HeaderStyle-CssClass="header">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# bind("address") %>' CssClass="tb"></asp:TextBox>
                </EditItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="emailid" HeaderStyle-CssClass="header">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# bind("emailid") %>' CssClass="tb"></asp:TextBox>
                </EditItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="contactno" HeaderStyle-CssClass="header">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# bind("contactno") %>' CssClass="tb"></asp:TextBox>
                </EditItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Photo" HeaderStyle-CssClass="header">
                <EditItemTemplate>
                    <asp:Image ID="Image1" runat="server" Height="120px" ImageUrl='<%# bind("photo") %>' CssClass="imgs"
                        Width="120px" border-radius="120px"/>
                    <br />
                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="itemtp"/>
                </EditItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Update Account"
                        CssClass="btn-primary" />
                </ItemTemplate>
            </asp:TemplateField>
        </Fields>
    </asp:DetailsView>
</asp:Content>
