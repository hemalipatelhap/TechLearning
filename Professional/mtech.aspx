<%@ Page Title="" Language="C#" MasterPageFile="~/Professional/MasterPage.master"
    AutoEventWireup="true" CodeFile="mtech.aspx.cs" Inherits="Professional_mtech" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <br />
    <br />
    <asp:Label ID="Label1" runat="server" Text="Manage Technology"  Width="100%" CssClass="title1"></asp:Label>
    <br />
    <br/>
    <asp:Label ID="lblmsg" runat="server" Font-Size="Large" ForeColor="Red"></asp:Label>
    <br />
    <asp:GridView ID="GridView1" runat="server" GridLines="Both" AutoGenerateColumns="False"
        DataKeyNames="techid" HorizontalAlign="Center" CellPadding="2" CellSpacing="7"  BorderColor="white" BackColor="Transparent"
        CssClass="gv" BorderStyle="Solid" BorderWidth="2px">
        <Columns>
            <asp:TemplateField HeaderText="Name" HeaderStyle-HorizontalAlign="Center" HeaderStyle-CssClass="header" HeaderStyle-Width="200px">
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" ForeColor="white" Font-size="20px" CssClass="grid" Text='<%# bind("techname") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle HorizontalAlign="Center" CssClass="header"></HeaderStyle>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Logo" HeaderStyle-CssClass="header">
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server"  style="border-radius:120px;" Height="120px"  ImageUrl='<%# bind("logo") %>'
                        Width="120px" class="images" CssClass="grid" />
                </ItemTemplate>
                <HeaderStyle CssClass="header"></HeaderStyle>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="View Detail" HeaderStyle-CssClass="header">
                <ItemTemplate>
                    <asp:ImageButton ID="ImageButton3" runat="server" style="border-radius:25px;" CssClass="grid" CommandArgument='<%# bind("techid") %>'
                        Height="65px" ImageUrl="~/viewdetail.png" OnCommand="ImageButton3_Command" Width="120px"
                        class="images" />
                </ItemTemplate>
                <HeaderStyle CssClass="header"></HeaderStyle>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Edit" HeaderStyle-CssClass="header" FooterStyle-HorizontalAlign="Center"
                HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                <ItemTemplate>
                    <asp:ImageButton ID="ImageButton1" runat="server"  CssClass="grid" CommandArgument='<%# bind("techid") %>'
                        Height="80px" ImageUrl="~/edit.png" OnCommand="ImageButton1_Command" Width="120px"
                        class="images" />
                </ItemTemplate>
                <FooterStyle HorizontalAlign="Center"></FooterStyle>
                <HeaderStyle HorizontalAlign="Center" CssClass="header"></HeaderStyle>
                <ItemStyle HorizontalAlign="Center"></ItemStyle>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Delete" HeaderStyle-CssClass="header">
                <ItemTemplate>
                    <asp:ImageButton ID="ImageButton2" runat="server" CommandArgument='<%# bind("techid") %>'
                        Height="50px" ImageUrl="~/delete.png" OnClientClick="if (!confirm('Are you sure you want delete?')) return false;"
                        OnCommand="ImageButton2_Command" Width="100px" ImageAlign="Middle" CssClass="grid" />
                </ItemTemplate>
                <HeaderStyle CssClass="header"></HeaderStyle>
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
    <br/>

</asp:Content>
