<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Kategoriler.aspx.cs" Inherits="Kategoriler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style3 {
            width: 246px;
        }
        .auto-style4 {
            width: 38px;
        }
        .auto-style5 {
            width: 39px;
        }
         
        .auto-style6 {
            font-size: x-large;
        }
        .auto-style7 {
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <asp:Panel ID="Panel1" runat="server" Style="background-color: #CCCCCC">
        <table class="auto-style1">
            <tr>
                <td class="auto-style4">
                    <asp:Button ID="Button2" runat="server" Height="30px" Style="font-weight: 700" Text="+" Width="30px" CssClass="auto-style6" OnClick="Button2_Click" />
                </td>
                <td class="auto-style5">
                    <asp:Button ID="Button3" runat="server" Height="30px" Style="font-weight: 700" Text="-" Width="29px" CssClass="auto-style6" OnClick="Button3_Click" />
                </td>
                <td>KATEGORİ LİSTESİ</td>
            </tr>
        </table>

    </asp:Panel>

    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="446px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style3">
                            <asp:Label ID="Label1" runat="server" Style="font-size: large" Text='<%# Eval("Kategori_ad") %>'></asp:Label>
                        </td>
                        <td style="text-align: right">
                      <a href="Kategoriler.aspx?Kategoriid=<%#Eval("Kategori_id")%>&islem=sil">   <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/ikonlar/delete.png" Width="30px" /></a>
                        </td>
                        <td style="text-align: right">
                         <a href="KategoriDuzenle.aspx?Kategoriid=<%#Eval("Kategori_id")%>">  <asp:Image ID="Image4" runat="server" Height="30px" ImageUrl="~/ikonlar/update.jpg" Width="30px" /></a> 
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>

    <asp:Panel ID="Panel3" runat="server" Style="background-color: #CCCCCC; margin-top:15px;">
        <table class="auto-style1">
            <tr>
                <td class="auto-style4">
                    <asp:Button ID="Button1" runat="server" Height="30px" Style="font-weight: 700" Text="+" Width="30px" CssClass="auto-style6" OnClick="Button1_Click" />
                </td>
                <td class="auto-style5">
                    <asp:Button ID="Button4" runat="server" Height="30px" Style="font-weight: 700" Text="-" Width="29px" CssClass="auto-style6" OnClick="Button4_Click" />
                </td>
                <td>KATEGORİ EKLEME</td>
            </tr>
        </table>
 </asp:Panel>

    <asp:Panel ID="Panel4" runat="server">
        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>KATEGORİ AD:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="tb5"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>KATEGORİ İKON:</td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td><strong>
                    <asp:Button ID="Button5" runat="server" CssClass="fb8" Text="Ekle" OnClick="Button5_Click" />
                    </strong></td>
            </tr>
        </table>
    </asp:Panel>
  
</asp:Content>

