<%@ Page Title="" Language="C#" MasterPageFile="~/User/MasterPage.master" AutoEventWireup="true"
    CodeFile="professional.aspx.cs" Inherits="User_professional" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <br />
    <asp:Label ID="Label1" runat="server" Text="Professionals" CssClass="title1" Width="100%"></asp:Label>
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Width="37%" Height="16px"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server" CssClass="tb" Width="250px"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" CssClass="btn-primary" Text="Search" OnClick="Button1_Click" /><br />
    <br />
    <asp:GridView ID="GridView1" runat="server" GridLines="both"
        AutoGenerateColumns="False" DataKeyNames="profid" HorizontalAlign="Center" CellPadding="2" CellSpacing="7"  BorderColor="white" BackColor="Transparent"
        CssClass="gv" BorderStyle="Solid" BorderWidth="2px">
        <Columns>
            <asp:TemplateField HeaderText="Photo" HeaderStyle-HorizontalAlign="Center" HeaderStyle-CssClass="header" HeaderStyle-Width="200px">
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" style="border-radius:120px;" Height="120px" ImageUrl='<%# bind("photo") %>'
                        Width="120px" class="images" CssClass="grid" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Name" HeaderStyle-HorizontalAlign="Center" HeaderStyle-CssClass="header" HeaderStyle-Width="200px">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" ForeColor="white" Font-size="20px" CssClass="grid" CommandArgument='<%# bind("profid") %>' OnCommand="LinkButton1_Command"
                        Text='<%# bind("username") %>' runat="server"></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <EditRowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
        <EmptyDataRowStyle HorizontalAlign="Center" />
        <FooterStyle BackColor="transparent" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="transparent" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" HorizontalAlign="Center" />
        <SortedAscendingHeaderStyle BackColor="#0000A9" HorizontalAlign="Center" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" HorizontalAlign="Center" />
        <SortedDescendingHeaderStyle BackColor="#000065" HorizontalAlign="Center" />
    </asp:GridView>
</asp:Content>
