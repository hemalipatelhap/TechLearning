<%@ Page Title="" Language="C#" MasterPageFile="~/Professional/MasterPage.master"
    AutoEventWireup="true" CodeFile="mcontent.aspx.cs" Inherits="Professional_mcontent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <br />
    <asp:Label ID="Label1" runat="server" Text="Manage Content" CssClass="title1" Width="100%"></asp:Label>
    <br />
    <asp:Label ID="lblmsg" runat="server" Font-Size="Large" ForeColor="Red"></asp:Label>
    <br />
    <asp:GridView ID="GridView1" runat="server" DataKeyNames="contentid" GridLines="both"
        AutoGenerateColumns="False" HorizontalAlign="Center" CellPadding="2" CellSpacing="7"  BorderColor="white"
        CssClass="gv" BorderStyle="Solid" BorderWidth="2px">
        <Columns>
            <asp:TemplateField HeaderText="TechName" HeaderStyle-CssClass="header" FooterStyle-HorizontalAlign="Center"
                HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" ForeColor="white" Font-size="20px" CssClass="grid" Text='<%# bind("techname") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="ContentName" HeaderStyle-CssClass="header" FooterStyle-HorizontalAlign="Center"
                HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" ForeColor="white" Font-size="20px" CssClass="grid" Text='<%# bind("contentname") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="View Detail" HeaderStyle-CssClass="header" FooterStyle-HorizontalAlign="Center"
                HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                <ItemTemplate>
                    <asp:ImageButton ID="ImageButton3" runat="server" CssClass="grid" CommandArgument='<%# bind("contentid") %>'
                        style="border-radius:25px;" Height="65px"  Width="120px" ImageUrl="~/viewdetail.png" OnCommand="ImageButton3_Command"/>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Edit" HeaderStyle-CssClass="header" FooterStyle-HorizontalAlign="Center"
                HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                <ItemTemplate>
                    <asp:ImageButton ID="ImageButton1" runat="server" CssClass="grid" CommandArgument='<%# bind("contentid") %>'
                        Height="80px" ImageUrl="~/edit.png" OnCommand="ImageButton1_Command" Width="120px"
                        class="images" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Delete" HeaderStyle-CssClass="header" FooterStyle-HorizontalAlign="Center"
                HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                <ItemTemplate>
                    <asp:ImageButton ID="ImageButton2" runat="server" CommandArgument='<%# bind("contentid") %>'
                        ImageUrl="~/delete.png" OnClientClick="if (!confirm('Are you sure you want delete?')) return false;"
                        OnCommand="ImageButton2_Command" Height="50px" Width="100px" ImageAlign="Middle" CssClass="grid"  />
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
