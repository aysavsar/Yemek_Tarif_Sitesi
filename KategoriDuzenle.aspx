<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="KategoriDuzenle.aspx.cs" Inherits="KategoriDuzenle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style3 {
        text-align: right;
    }
    .auto-style4 {
        font-weight: bold;
    }
    .auto-style5 {
        text-align: left;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="auto-style1">
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3"><strong>KATEGORİ AD:</strong></td>
        <td class="auto-style5">
            <asp:TextBox  style="text-align:left;" ID="TextBox1" runat="server" CssClass="auto-style3"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style3"><strong>ADET:</strong></td>
        <td class="auto-style5">
            <asp:TextBox style="text-align:left;" ID="TextBox2" runat="server" CssClass="auto-style3"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style3"><strong>RESİM&nbsp;</strong></td>
        <td class="auto-style5">
            <asp:FileUpload ID="FileUpload1" runat="server" CssClass="auto-style3" />
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td><strong>
            <asp:Button ID="Button1" runat="server" CssClass="auto-style4" Text="Güncelle" OnClick="Button1_Click" style="height: 26px" />
            </strong></td>
    </tr>
</table>
</asp:Content>