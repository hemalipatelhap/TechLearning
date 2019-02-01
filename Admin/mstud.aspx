﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true"
    CodeFile="mstud.aspx.cs" Inherits="Admin_mstud" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Label ID="Label1" runat="server" Text="&nbsp;&nbsp;&nbsp;&nbsp;Manage Student" CssClass="title1" 
        Width="100%"></asp:Label>
    <br />
    <asp:Label ID="Label2" runat="server" Width="34%" Height="16px"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server" CssClass="tb" Width="250px"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" CssClass="button2" Text="Search" OnClick="Button1_Click" />
    <br />
    <br />
    <div style="margin:0 auto;display:table;">
    <asp:GridView ID="GridView1" runat="server" GridLines="both" AutoGenerateColumns="False"
        HorizontalAlign="Center" CellPadding="2" CellSpacing="7"  BorderColor="midnightblue" BackColor="Transparent"
        CssClass="gv" BorderStyle="Solid" BorderWidth="2px">
        
        <Columns>
            <asp:TemplateField HeaderText="Photo"  HeaderStyle-CssClass="header1" FooterStyle-HorizontalAlign="Center"
                HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" style="border-radius:120px;" Height="120px" ImageUrl='<%# bind("photo") %>'
                        Width="120px" class="images" CssClass="grid"/>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Name"  HeaderStyle-CssClass="header1" FooterStyle-HorizontalAlign="Center"
                HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server"  ForeColor="blue" Font-size="20px" CssClass="grid" Text='<%# bind("username") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="View Detail"  HeaderStyle-CssClass="header1" FooterStyle-HorizontalAlign="Center"
                HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                <ItemTemplate>
                    <asp:ImageButton ID="ImageButton3" runat="server"  style="border-radius:25px;" CssClass="grid" CommandArgument='<%# bind("studentid") %>'
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
    </div>
</asp:Content>
