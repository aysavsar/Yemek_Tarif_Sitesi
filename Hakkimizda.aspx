<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="Hakkimizda.aspx.cs" Inherits="Hakkimizda" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="auto-style3">
        HAKKIMIZDA</p>
    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <asp:Label ID="Label3" runat="server" Text='<%# Eval("metin") %>'></asp:Label>
            <br />
        </ItemTemplate>
    </asp:DataList>

    <asp:Image ID="Image1" runat="server" EnableViewState="False" Height="121px" ImageUrl="~/resimler/blog.jpg" Width="447px" />
</asp:Content>

