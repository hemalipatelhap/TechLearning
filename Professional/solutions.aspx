<%@ Page Title="" Language="C#" MasterPageFile="~/Professional/MasterPage.master"
    AutoEventWireup="true" CodeFile="solutions.aspx.cs" Inherits="Professional_solutions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <br />
    <asp:Label class="title1" ID="lbltitle" runat="server" Text="Queries" Width="100%"></asp:Label>
    <br /><br /><br />
    <asp:GridView ID="GridView1" runat="server" CssClass="gv" GridLines="both" AutoGenerateColumns="False"
        HorizontalAlign="Center" CellPadding="2" CellSpacing="7" BorderColor="white" BackColor="Transparent"
        BorderStyle="Solid" BorderWidth="2px" >
        <Columns>
            <asp:TemplateField HeaderText="TechName" HeaderStyle-HorizontalAlign="Center" HeaderStyle-CssClass="header" HeaderStyle-Width="200px">
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" ForeColor="white" Font-size="20px" CssClass="grid" Text='<%# bind("techname") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="ContentName" HeaderStyle-HorizontalAlign="Center" HeaderStyle-CssClass="header" HeaderStyle-Width="200px">
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" ForeColor="white" Font-size="20px" CssClass="grid" Text='<%# bind("contentname") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Queries" HeaderStyle-HorizontalAlign="Center" HeaderStyle-CssClass="header" HeaderStyle-Width="200px">
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" ForeColor="white" Font-size="20px" CssClass="grid" Text='<%# bind("description") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Give Solution" HeaderStyle-CssClass="header">
                <ItemTemplate>
                    <asp:ImageButton ID="ImageButton3" runat="server" style="border-radius:25px;" CssClass="grid" CommandArgument='<%# bind("queryid") %>'
                        Height="65px" ImageUrl="~/solution.jpg" OnCommand="ImageButton3_Command" Width="120px" />
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
