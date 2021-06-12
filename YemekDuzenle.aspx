<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="YemekDuzenle.aspx.cs" Inherits="YemekDuzenle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            text-align: right;
        }
        .auto-style4 {
            text-align: right;
            font-size: large;
        }
        .auto-style6 {
            font-size: large;
            background-color: #993366;
        }
        .auto-style7 {
            text-align: left;
        }
        .auto-style8 {
            font-weight: bold;
            font-size: large;
            background-color: #CC6600;
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
            <td class="auto-style4"><strong>Yemek Ad:</strong></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4"><strong>Malzemeler:</strong></td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Height="100px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4"><strong>Tarif:</strong></td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Height="200px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4"><strong>Kategori:</strong></td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Width="250px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style3"><strong>Yemek Görüntü:</strong></td>
            <td class="auto-style7">
                <asp:FileUpload ID="FileUpload1" runat="server" Width="250px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style7"><strong>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style6"  Text="Güncelle" OnClick="Button1_Click" Width="250px" />
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style7"><strong>
                <asp:Button ID="Button3" runat="server" CssClass="auto-style8" OnClick="Button3_Click" Text="Günün Yemeği Seç" Width="250px" />
                </strong></td>
        </tr>
    </table>
</asp:Content>
