<%@ Page Title="" Language="C#" MasterPageFile="~/Professional/MasterPage.master"
    AutoEventWireup="true" CodeFile="rcontent.aspx.cs" Inherits="Professional_rcontent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <br />
    <asp:Label class="title1" ID="lbltitle" runat="server" Text="Report Content" Width="100%"></asp:Label>
    <br />
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" GridLines="both" CssClass="gv" AutoGenerateColumns="False"
        DataKeyNames="techid" HorizontalAlign="Center" CellPadding="2" CellSpacing="7" BorderColor="white" BackColor="Transparent"
         BorderStyle="Solid" BorderWidth="2px">
        <Columns>
            <asp:TemplateField HeaderText="TechnologyID" HeaderStyle-CssClass="header" FooterStyle-HorizontalAlign="Center"
                HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                <ItemTemplate>
                    <asp:Label ID="lbltechid" runat="server" ForeColor="white" Font-size="20px" CssClass="grid" Text='<%# bind("techname") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Contentname" HeaderStyle-CssClass="header" FooterStyle-HorizontalAlign="Center"
                HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                <ItemTemplate>
                    <asp:Label ID="lblcname" runat="server" ForeColor="white" Font-size="20px" CssClass="grid" Text='<%# bind("contentname") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="View Detail" HeaderStyle-CssClass="header" FooterStyle-HorizontalAlign="Center"
                HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" >
                <ItemTemplate>
                    <asp:ImageButton ID="ImageButton3" runat="server" style="border-radius:25px;" CssClass="grid" CommandArgument='<%# bind("contentid") %>'
                        Height="65px" ImageUrl="~/viewdetail.png" OnCommand="ImageButton3_Command" Width="120px" />
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
