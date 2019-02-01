<%@ Page Title="" Language="C#" MasterPageFile="~/Professional/MasterPage.master"
    AutoEventWireup="true" CodeFile="followers.aspx.cs" Inherits="Professional_followers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <br />
    <asp:Label ID="Label2" runat="server"></asp:Label>
    <asp:Label ID="lbltitle" runat="server" Text="Followers" CssClass="title1" Width="100%"></asp:Label>
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" GridLines="both" CssClass="gv" AutoGenerateColumns="False"
        DataKeyNames="studentid" HorizontalAlign="Center" CellPadding="2" CellSpacing="7" BorderColor="white" BackColor="Transparent"
         BorderStyle="Solid" BorderWidth="2px">
        <Columns>
            <asp:TemplateField HeaderText="Photo" HeaderStyle-HorizontalAlign="Center" HeaderStyle-CssClass="header" HeaderStyle-Width="200px">
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" style="border-radius:120px;" Height="120px" CssClass="grid" ImageUrl='<%# bind("photo") %>'
                        Width="120px" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Username" HeaderStyle-HorizontalAlign="Center" HeaderStyle-CssClass="header" HeaderStyle-Width="200px">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" CommandArgument='<%# bind("studentid") %>'  ForeColor="white" Font-size="20px" CssClass="grid" OnCommand="LinkButton1_Command"
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
