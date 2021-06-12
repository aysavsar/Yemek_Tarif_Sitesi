<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="YemekDetay.aspx.cs" Inherits="YemekDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 100%;
        }
    .auto-style3 {
        font-weight: bold;
        text-align: right;
    }
    .auto-style4 {
        width: 143px;
    }
    .auto-style5 {
        font-weight: bold;
        text-align: right;
        width: 143px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label5" runat="server" style="font-weight: 700; font-size: 32pt; color: #FFFFCC;" Text="Label"></asp:Label>
    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <table class="auto-style2">
                <tr>
                    <td>
                        <asp:Label ID="Label6" runat="server" style="font-size: x-large" Text='<%# Eval("Yorum_ad_soyad") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="border-bottom-style: inset; border-bottom-width: thin">
                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("Yorum_metni") %>'></asp:Label>
                        &nbsp;-
                        <asp:Label ID="Label8" runat="server" style="font-size: xx-small" Text='<%# Eval("Yorum_Tarih") %>'></asp:Label>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    <br />

    <div style="background-color: #EEA4A4">YORUM YAPMA PANELİ</div>
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style2">
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">Ad Soyad:&nbsp;</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="20px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Mail:</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="20px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Yorumunuz:</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="100px" TextMode="MultiLine" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Yorum Yap" Font-Bold="True" Font-Italic="True" OnClick="Button1_Click" Width="150px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

