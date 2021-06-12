<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="GununYemegi.aspx.cs" Inherits="GununYemegi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style4 {
        height: 9px;
    }
        .auto-style5 {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style4">
                <asp:DataList ID="DataList2" runat="server">
                    <ItemTemplate>
                        <table class="auto-style1">
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("YemekAd") %>'></asp:Label>
                                    <br />
                                    Malzemeler</td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                                    <br />
                                    Tarif</td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekTarifi") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td style="margin-left: 40px">
                                    <asp:Image ID="Image1" runat="server" Height="105px" Width="407px" ImageUrl="~/resimler/arnavut_cigeri.jpg" />
                                </td>
                            </tr>
                            <tr>
                                <td style="margin-left: 40px" class="auto-style5">Puan:
                                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                            </tr>
                            <tr>
                                <td style="margin-left: 40px">Tarih:
                                    <asp:Label ID="Label9" runat="server" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td style="margin-left: 40px">&nbsp;</td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </td>
        </tr>
    </table>
</asp:Content>










