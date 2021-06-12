<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="TarifOnerDetay.aspx.cs" Inherits="TarifOnerDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style4 {
        width: 143px;
    }
    .auto-style5 {
        font-weight: bold;
        text-align: right;
        width: 143px;
    }
    .auto-style6 {
        width: 293px;
    }
    .auto-style7 {
        width: 143px;
        text-align: right;
    }
    .auto-style8 {
        font-weight: bold;
    }
    .auto-style9 {
        width: 293px;
        text-align: center;
    }
    .auto-style10 {
        width: 293px;
        text-align: left;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:Panel ID="Panel1" runat="server">
    <table class="auto-style2">
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">Tarif Ad:&nbsp;</td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox1" runat="server" Height="20px" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Tarif Malzemeler:</td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox2" runat="server" Height="20px" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Tarif Yapılışı:</td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox3" runat="server" Height="100px" TextMode="MultiLine" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7"><strong>Tarif Resim:</strong></td>
            <td class="auto-style6">
                <asp:FileUpload ID="FileUpload1" runat="server" Width="200px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style7"><strong>Tarif Öneren:</strong></td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox4" runat="server" Height="20px" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7"><strong>Öneren Mail:</strong></td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox5" runat="server" Height="20px" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7"><strong>Kategori:</strong></td>
            <td class="auto-style10">
                <asp:DropDownList ID="DropDownList1" runat="server" Width="200px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style9"><strong>
                <asp:Button ID="Button2" runat="server" CssClass="auto-style8" OnClick="Button2_Click" Text="ONAYLA" Width="150px" />
                </strong></td>
        </tr>
    </table>
</asp:Panel>
</asp:Content>


