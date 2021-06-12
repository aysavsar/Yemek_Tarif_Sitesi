<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="TarifOner.aspx.cs" Inherits="TarifOner" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style3 {
        height: 26px;
    }
    .auto-style4 {
        height: 26px;
        text-align: right;
        font-weight: bold;
    }
    .auto-style5 {
        text-align: right;
        font-weight: bold;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style5">Tarif Ad:</td>
        <td style="margin-left: 40px">
            <asp:TextBox ID="TxtTarifAd" runat="server" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">Malzemeler:</td>
        <td style="margin-left: 40px">
            <asp:TextBox ID="TxtMalzemeler" runat="server" Height="80px" TextMode="MultiLine" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">Yapılış:</td>
        <td class="auto-style3" style="margin-left: 40px">
            <asp:TextBox ID="TxtYapılış" runat="server" Height="150px" TextMode="MultiLine" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">Resim:</td>
        <td style="margin-left: 40px">
            <asp:FileUpload ID="FileUpload1" runat="server" Width="250px" />
        </td>
    </tr>
    <tr>
        <td class="auto-style5">Tarif Öneren:</td>
        <td style="margin-left: 40px">
            <asp:TextBox ID="TxtTarifÖneren" runat="server" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">Mail Adresi:</td>
        <td class="auto-style3" style="margin-left: 40px">
            <asp:TextBox ID="TxtMailAdresi" runat="server" TextMode="Email" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style3" style="margin-left: 40px">
            <asp:Button ID="BtnTarifOner" runat="server" BackColor="#9900CC" style="font-weight: 700; font-style: italic" Text="Tarif Öner" Width="150px" OnClick="BtnTarifOner_Click" />
        </td>
    </tr>
</table>
</asp:Content>

