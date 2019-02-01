<%@ Page Title="" Language="C#" MasterPageFile="~/Professional/MasterPage.master"
    AutoEventWireup="true" CodeFile="rtech.aspx.cs" Inherits="Professional_rtech" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <br />
    <asp:Label ID="Label1" runat="server" Text="Report Technology" CssClass="title1" Width="100%"></asp:Label>
    <br />
    <br /><br />
    <asp:GridView ID="GridView1" runat="server" GridLines="both" AutoGenerateColumns="False"
        HorizontalAlign="Center" CellPadding="2" CellSpacing="7" BorderColor="white" BackColor="Transparent"
        CssClass="gv" BorderStyle="Solid" BorderWidth="2px">
        <Columns>
        
            <asp:TemplateField HeaderText="Name" HeaderStyle-CssClass="header" FooterStyle-HorizontalAlign="Center"
                HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                <ItemTemplate>
                
                    <asp:Label ID="Label3" runat="server" ForeColor="white" Font-size="20px" CssClass="grid" Text='<%# bind("techname") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Description" HeaderStyle-CssClass="header" FooterStyle-HorizontalAlign="Center"
                HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" ForeColor="white" Font-size="20px" CssClass="grid" Text='<%# bind("description") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Username" HeaderStyle-CssClass="header" FooterStyle-HorizontalAlign="Center"
                HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" ForeColor="white" Font-size="20px" CssClass="grid" Text='<%# bind("username") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="LOGO" HeaderStyle-CssClass="header" FooterStyle-HorizontalAlign="Center"
                HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" Width="120px" style="border-radius:120px;" Height="120px" CssClass="grid" ImageUrl='<%# bind("logo") %>'
                         />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Created Date" HeaderStyle-CssClass="header" FooterStyle-HorizontalAlign="Center"
                HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" ForeColor="white" Font-size="20px" CssClass="grid" Text='<%# bind("createdate") %>'></asp:Label>
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
