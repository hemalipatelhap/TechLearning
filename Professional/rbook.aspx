<%@ Page Title="" Language="C#" MasterPageFile="~/Professional/MasterPage.master"
    AutoEventWireup="true" CodeFile="rbook.aspx.cs" Inherits="Professional_rbook" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <br />
    <asp:Label class="title1" ID="lbltitle" runat="server" Text="Report Book" Width="100%"></asp:Label>
    <br /><br /><br />
    <asp:GridView ID="GridView1" runat="server" GridLines="both" CssClass="gv" AutoGenerateColumns="False"
        DataKeyNames="techid" HorizontalAlign="Center" CellPadding="2" CellSpacing="7" BorderColor="white" BackColor="Transparent"
        BorderStyle="Solid" BorderWidth="2px">
        <Columns>
            <asp:TemplateField HeaderText="Technology Name" HeaderStyle-HorizontalAlign="Center" HeaderStyle-CssClass="header" HeaderStyle-Width="200px">
                <ItemTemplate>
                <br />
                    <asp:Label ID="lbltechid" ForeColor="white" Font-size="20px"  CssClass="grid" runat="server" Text='<%# bind("techname") %>'></asp:Label>
                 <br />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Book name" HeaderStyle-HorizontalAlign="Center" HeaderStyle-CssClass="header" HeaderStyle-Width="200px">
                <ItemTemplate>
                 <br />
                    <asp:Label ID="lblbname" ForeColor="white" Font-size="20px" CssClass="grid" runat="server" Text='<%# bind("bookname") %>'></asp:Label>
                 <br />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Author" HeaderStyle-HorizontalAlign="Center" HeaderStyle-CssClass="header" HeaderStyle-Width="200px">
                <ItemTemplate>
                 <br />
                    <asp:Label ID="lblauthir" ForeColor="white" Font-size="20px" CssClass="grid" runat="server" Text='<%# bind("author") %>'></asp:Label>
                 <br />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Publisher" HeaderStyle-HorizontalAlign="Center" HeaderStyle-CssClass="header" HeaderStyle-Width="200px">
                <ItemTemplate>
                 <br />
                    <asp:Label ID="lblpub" ForeColor="white" Font-size="20px" CssClass="grid" runat="server" Text='<%# bind("publisher") %>'></asp:Label>
                 <br />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Price" HeaderStyle-HorizontalAlign="Center" HeaderStyle-CssClass="header" HeaderStyle-Width="200px">
                <ItemTemplate>
                 <br />
                    <asp:Label ID="lblprice" ForeColor="white" Font-size="20px" CssClass="grid" runat="server" Text='<%# bind("price") %>'></asp:Label>
                 <br />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Username" HeaderStyle-HorizontalAlign="Center" HeaderStyle-CssClass="header" HeaderStyle-Width="200px">
                <ItemTemplate>
                <br />
                    <asp:Label ID="lbluname" ForeColor="white" Font-size="20px" CssClass="grid" runat="server" Text='<%# bind("username") %>'></asp:Label>
                <br />
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
