<%@ Page Title="" Language="C#" MasterPageFile="~/Professional/MasterPage.master"
    AutoEventWireup="true" CodeFile="vstudent.aspx.cs" Inherits="Professional_vstudent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
<br/>
    <asp:Label ID="Label1" runat="server" Text="View Student Details" CssClass="title1" Width="100%"></asp:Label>
    <asp:Label ID="lblmsg" runat="server"></asp:Label>
    <br/>
    <br />
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="studentid"
        DefaultMode="ReadOnly" Height="228px" Width="650px"  CssClass="dv" Backcolor="transparent" forecolor="white" GridLines="both">
        <Fields>
            <asp:TemplateField HeaderText="Name" HeaderStyle-CssClass="header">
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# bind("username") %>' CssClass="itemtp"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="photo" HeaderStyle-CssClass="header">
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" Height="120px" ImageUrl='<%# bind("photo") %>' CssClass="imgs"
                        Width="120px" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Education" HeaderStyle-CssClass="header">
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# bind("education") %>' CssClass="itemtp"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Emailid" HeaderStyle-CssClass="header">
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# bind("emailid") %>' CssClass="itemtp"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Contact No" HeaderStyle-CssClass="header">
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# bind("contactno") %>' CssClass="itemtp"></asp:Label>
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
