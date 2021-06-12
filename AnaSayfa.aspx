<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="AnaSayfa.aspx.cs" Inherits="AnaSayfa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            font-size: large;
        }
        .auto-style4 {
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <table class="auto-style1" style="width: 100%">
                <tr>
                    <td style="background-color: #FFFFFF">
                       
                        <a href="YemekDetay.aspx?Yemekid=<%# Eval("Yemekid") %>">
                        
                        <asp:Label ID="Label3" runat="server" style="font-weight: 700; font-size: x-large; color: #FF0066;" Text='<%# Eval("YemekAd") %>'></asp:Label>
                    </a>


                    </td>
                </tr>
                <tr>
                    <td>&nbsp;<strong><span class="auto-style3">Malzemeler:</span></strong>&nbsp;&nbsp;
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;<strong><span class="auto-style3">Yemek Tarifi</span></strong>:&nbsp;
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekTarifi") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;<strong><span class="auto-style3">Eklenme Tarihi:</span><span class="auto-style4">&nbsp; </span></strong>
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                        &nbsp;&nbsp; - <strong><em><span class="auto-style3">&nbsp;</span></em><span class="auto-style3"><em>Puan:</em></span></strong> <strong><em>
                        <asp:Label ID="Label7" runat="server" CssClass="auto-style3" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                        <span class="auto-style3">&nbsp;&nbsp; </span></em></strong>&nbsp;&nbsp; </td>
                </tr>
                <tr>
                    <td style="border-bottom-style: groove; border-bottom-width: thick; border-bottom-color: #800080">&nbsp;</td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>

