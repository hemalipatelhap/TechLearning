<%@ Page Title="" Language="C#" MasterPageFile="~/User/MasterPage.master" AutoEventWireup="true"
    CodeFile="following.aspx.cs" Inherits="User_following" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <br />
    <asp:Label ID="lbltitle" runat="server" Text="Following" CssClass="title1" Width="100%"></asp:Label>
    <br />
    <br />
    <asp:GridView ID="GridView1" AutoGenerateColumns="false" runat="server" 
        CellPadding="3" GridLines="both" HorizontalAlign="Center" BorderColor="white" BackColor="Transparent"
        CssClass="gv" BorderStyle="Solid" BorderWidth="2px">
        <Columns>
            <asp:TemplateField HeaderText="photo" HeaderStyle-CssClass="header">
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# bind("photo") %>' style="border-radius:65px;" Height="100px"
                        Width="120px" CssClass="grid"  />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Username"  HeaderStyle-HorizontalAlign="Center" HeaderStyle-CssClass="header" HeaderStyle-Width="200px">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" CommandArgument='<%# bind("profid") %>' OnCommand="LinkButton1_Command"
                        Text='<%# bind("username") %>' ForeColor="white" Font-size="20px" runat="server"></asp:LinkButton>
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
