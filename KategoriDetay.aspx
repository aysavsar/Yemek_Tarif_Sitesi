<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="KategoriDetay.aspx.cs" Inherits="KategoriDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList2" runat="server">
    <ItemTemplate>
        <table class="auto-style2">
            <tr>
                <td style="color: #FF6699; background-color: #FFFF99">
                    <a href="YemekDetay.aspx?Yemekid=<%#Eval("Yemekid") %>">
                    <asp:Label ID="Label5" runat="server" style="font-weight: 700; font-size: x-large; color:#CC0099; background-color: #FFFF99" Text='<%# Eval("YemekAd") %>'></asp:Label>
                    </a></td>
            </tr>
            <tr>
                <td>&nbsp;<strong>Malzemeler</strong>:<asp:Label ID="Label6" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                        &nbsp;</td>
            </tr>
            <tr>
                <td><strong>Yemek Tarif</strong>i:<asp:Label ID="Label7" runat="server" Text='<%# Eval("YemekTarifi") %>'></asp:Label>
                        &nbsp;</td>
            </tr>
            <tr>
                <td><strong>Eklenme Tarihi</strong>:<asp:Label ID="Label8" runat="server" style="color: #FFFFFF" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                        &nbsp;- <strong style="font-style: italic">Puan: </strong>
                    <asp:Label ID="Label9" runat="server" style="font-style: italic; color: #FFFFFF;" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="border-bottom-style: groove; border-bottom-width: thick; border-bottom-color: #333333">&nbsp;</td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
</asp:Content>
