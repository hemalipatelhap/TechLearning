<%@ Page Title="" Language="C#" MasterPageFile="~/User/MasterPage.master" AutoEventWireup="true"
    CodeFile="viewcontent.aspx.cs" Inherits="User_viewcontent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <br />
    <asp:Label ID="Label1" class="title1" runat="server" Text="Technology :" Width="100%"></asp:Label>
    &nbsp;<br />
    <br />
    <asp:GridView ID="GridView1" runat="server" GridLines="both" AutoGenerateColumns="False"
        HorizontalAlign="Center" CellPadding="2" CellSpacing="7"  BorderColor="white" BackColor="Transparent"
        CssClass="gv" BorderStyle="Solid" BorderWidth="2px">
        <Columns>
            <asp:TemplateField HeaderText="Contents" HeaderStyle-HorizontalAlign="Center" HeaderStyle-CssClass="header" HeaderStyle-Width="200px">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# bind("contentid") %>'
                       ForeColor="white" Font-size="20px" CssClass="grid"  OnCommand="LinkButton1_Command" Text='<%# bind("contentname") %>'></asp:LinkButton>
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
    <br /><br />
    <asp:Label ID="Label2" Text="Books to Refer" runat="server" class="title1" Width="100%"></asp:Label><br />
    <br />
    <asp:GridView ID="GridView2" runat="server" GridLines="both" AutoGenerateColumns="False"
        DataKeyNames="bookid" HorizontalAlign="Center" CellPadding="2" CellSpacing="7"  BorderColor="white" BackColor="Transparent"
        CssClass="gv" BorderStyle="Solid" BorderWidth="2px">
        <Columns>
            <asp:TemplateField HeaderText="Book name" HeaderStyle-HorizontalAlign="Center" HeaderStyle-CssClass="header" HeaderStyle-Width="200px">
                <ItemTemplate>
                    <asp:Label ID="lblbname" runat="server" ForeColor="white" Font-size="20px" CssClass="grid" Text='<%# bind("bookname") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Author" HeaderStyle-HorizontalAlign="Center" HeaderStyle-CssClass="header" HeaderStyle-Width="200px">
                <ItemTemplate>
                    <asp:Label ID="lblauthir" runat="server" ForeColor="white" Font-size="20px" CssClass="grid" Text='<%# bind("author") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Average Rating" HeaderStyle-HorizontalAlign="Center" HeaderStyle-CssClass="header" HeaderStyle-Width="200px">
                <ItemTemplate>
                    <asp:Label ID="lblavg" runat="server" ForeColor="white" Font-size="20px" CssClass="grid" Text='<%# bind("avg") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="View Detail" HeaderStyle-HorizontalAlign="Center" HeaderStyle-CssClass="header" HeaderStyle-Width="200px">
                <ItemTemplate>
                    <asp:ImageButton ID="ImageButton3" runat="server" style="border-radius:25px;" CssClass="grid" CommandArgument='<%# bind("bookid") %>'
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
