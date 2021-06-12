<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="HakkimizdaAdmin.aspx.cs" Inherits="HakkimizdaAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style4 {
            width: 38px;
        }
        .auto-style6 {
            font-size: x-large;
        }
        
        .auto-style5 {
            width: 39px;
        }
         
        .auto-style7 {
        margin-left: 120px;
    }
    .auto-style8 {
        margin-bottom: 0px;
    }
    .auto-style9 {
        font-weight: bold;
        font-size: large;
    }
    .auto-style10 {
        text-align: center;
        margin-left: 120px;
    }
         
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" Style="background-color: #CCCCCC">
        <table class="auto-style1">
            <tr>
                <td class="auto-style4">
                    <asp:Button ID="Button2" runat="server" Height="30px" Style="font-weight: 700" Text="+" Width="30px" CssClass="auto-style6" OnClick="Button2_Click"  />
                </td>
                <td class="auto-style5">
                    <asp:Button ID="Button3" runat="server" Height="30px" Style="font-weight: 700" Text="-" Width="29px" CssClass="auto-style6" OnClick="Button3_Click" />
                </td>
                <td>HAKKIMIZDA&nbsp; </td>
            </tr>
        </table>
    </asp:Panel>

    <asp:Panel ID="Panel2" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style8" Height="200px" Width="435px" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style10"><strong>
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style9" Text="Güncelle" Width="200px" OnClick="Button4_Click" />
                    </strong></td>
            </tr>
        </table>
</asp:Panel>
</asp:Content>

