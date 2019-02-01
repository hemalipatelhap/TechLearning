<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true"
    CodeFile="aumyaccount.aspx.cs" Inherits="Admin_aumyaccount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

                <asp:Label ID="Label1" runat="server" Text="&nbsp;&nbsp;&nbsp;&nbsp;Update MyAccount" CssClass="title1" 
                    Width="100%"></asp:Label>
            
                <asp:Label ID="lblmsg" runat="server"></asp:Label>
          
                        <div style="margin:0 auto;display:table;">
                            <asp:DetailsView ID="DetailsView1" runat="server" DefaultMode="Edit" AutoGenerateRows="False"
                                CssClass="dv" BorderColor="darkblue" CellPadding="3"  HorizontalAlign="Center" Backcolor="transparent" forecolor="midnightblue" GridLines="both">
                                <Fields>
                                    <asp:TemplateField HeaderText="Name" HeaderStyle-CssClass="header">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox1" runat="server" CssClass="tb" Text='<%# bind("name") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="username" HeaderStyle-CssClass="header">
                                        <EditItemTemplate>
                                            <asp:Label ID="Label3" runat="server" CssClass="itemtp"  Text='<%# bind("username") %>'></asp:Label>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="emailid" HeaderStyle-CssClass="header">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox3" runat="server" CssClass="tb" Text='<%# bind("emailid") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Photo" HeaderStyle-CssClass="header">
                                        <EditItemTemplate>
                                            <asp:Image ID="Image1" runat="server" Height="120px" CssClass="imgs" ImageUrl='<%# bind("photo") %>'
                                                Width="120px" />
                                            <br />
                                            <asp:FileUpload ID="FileUpload1" runat="server" />
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Update Account" Width="150px" CssClass="button2" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Fields>
                            </asp:DetailsView>
                            </div>
                        
</asp:Content>
