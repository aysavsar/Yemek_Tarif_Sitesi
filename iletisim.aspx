<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="iletisim.aspx.cs" Inherits="iletisim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style2 {
        width: 100%;
    }
    .auto-style3 {
        font-weight: bold;
        text-align: right;
        width: 141px;
    }
    .auto-style4 {
        font-size: x-large;
        font-weight: 700;
        font-style: italic;
    }
    .auto-style5 {
        font-size: x-large;
        font-weight: 700;
        font-style: italic;
        color: #000000;
        text-align: center;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style2">
    <tr>
        <td class="auto-style5" colspan="2">MESAJ PANELİ</td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">Ad Soyad:</td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">Mail Adresiniz:</td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">Konu:</td>
        <td>
            <asp:TextBox ID="TextBox3" runat="server" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">Mesaj:</td>
        <td>
            <asp:TextBox ID="TextBox4" runat="server" CssClass="tb5" Height="150px" TextMode="MultiLine"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" Font-Bold="True" Text="Gönder" Width="215px" CssClass="fb8" OnClick="Button1_Click" />
        </td>
    </tr>
</table>
</asp:Content>


