<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Yorumlar.aspx.cs" Inherits="Yorumlar" %>

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
            text-align: right;
        }
         
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" Style="background-color: #CCCCCC">
        <table class="auto-style1">
            <tr>
                <td class="auto-style4">
                    <asp:Button ID="Button2" runat="server" Height="30px" Style="font-weight: 700" Text="+" Width="30px" CssClass="auto-style6" OnClick="Button2_Click" />
                </td>
                <td class="auto-style5">
                    <asp:Button ID="Button3" runat="server" Height="30px" Style="font-weight: 700" Text="-" Width="29px" CssClass="auto-style6" OnClick="Button3_Click" />
                </td>
                <td>ONAYLANAN YORUM&nbsp; LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>


    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="446px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style3">
                            <asp:Label ID="Label1" runat="server" Style="font-size: large" Text='<%# Eval("Yorum_ad_soyad") %>'></asp:Label>
                        </td>
                        <td class="auto-style7">
                        <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/ikonlar/delete.png" Width="30px" />
                        </td>
                        <td style="text-align: right">
                       <a href="YorumDetay.aspx?Yorumid=<%#Eval("Yorumid")%>">  <asp:Image ID="Image4" runat="server" Height="30px" ImageUrl="~/ikonlar/update.jpg" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
     <asp:Panel ID= "Panel3" runat="server" Style="background-color: #CCCCCC; margin-top:15px;" >
        <table class="auto-style1">
            <tr>
                <td class="auto-style4">
                    <asp:Button ID="Button1" runat="server" Height="30px" Style="font-weight: 700" Text="+" Width="30px" CssClass="auto-style6" OnClick="Button1_Click"  />
                </td>
                <td class="auto-style5">
                    <asp:Button ID="Button4" runat="server" Height="30px" Style="font-weight: 700" Text="-" Width="29px" CssClass="auto-style6" OnClick="Button4_Click"  />
                </td>
                <td>ONAYSIZ YORUM&nbsp; LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>

     <asp:Panel ID="Panel4" runat="server">
        <asp:DataList ID="DataList2" runat="server" Width="446px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style3">
                            <asp:Label ID="Label1" runat="server" Style="font-size: large" Text='<%# Eval("Yorum_ad_soyad") %>'></asp:Label>
                        </td>
                        <td class="auto-style7">
                         <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/ikonlar/delete.png" Width="30px" />
                        </td>
                        <td style="text-align: right">
                    <a href="YorumDetay.aspx?Yorumid=<%#Eval("Yorumid")%>"><asp:Image ID="Image4" runat="server" Height="30px" ImageUrl="~/ikonlar/update.jpg" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>
