﻿<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSayfa.Master" AutoEventWireup="true" CodeBehind="UrunGuncelle.aspx.cs" Inherits="AlisVerisSitesi.UrunGuncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <h2 style="color: red; margin-left: 20px">ÜRÜN GÜNCELLE</h2>
    <br />
    <form runat="server" style="margin-left: 20px" class="form-group">
        <br />
        <div>
            <asp:Label for="TxtID" Style="color: red" runat="server" Text="Ürün ID"></asp:Label>
            <br />
            <br />
            <asp:TextBox ID="TxtID" required="" runat="server" CssClass="form-control" placeholder="ID Giriniz"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Label for="TxtUrun" Style="color: red" runat="server" Text="Ürün Adı"></asp:Label>
            <br />
            <br />
            <asp:TextBox ID="TxtUrun" required="" runat="server" CssClass="form-control" placeholder="Ürün Giriniz"></asp:TextBox>
        </div>
        <br />
         <div>
            <asp:Label for="TxtFiyat" Style="color: red" runat="server" Text="Fiyat"></asp:Label>
            <br />
            <br />
            <asp:TextBox ID="TxtFiyat" required="" runat="server" CssClass="form-control" placeholder="Fiyat Giriniz"></asp:TextBox>
        </div>
        <br />
          <div>
            <asp:Label for="TxtResim" Style="color: red" runat="server" Text="Resim"></asp:Label>
            <br />
            <br />
            <asp:TextBox ID="TxtResim" required="" runat="server" CssClass="form-control" placeholder="Resim Giriniz"></asp:TextBox>
        </div>
        <br />
         <div>
            <asp:Label for="TxtKategori" Style="color: red" runat="server" Text="Kategori"></asp:Label>
            <br />
            <br />
            <asp:TextBox ID="TxtKategori" required="" runat="server" CssClass="form-control" placeholder="Kategori Giriniz"></asp:TextBox>
        </div>
        <br />
        <asp:Button ID="BtnGuncelle" runat="server" Text="Ürün Bilgilerini Kaydet" CssClass="btn btn-warning" OnClick="BtnGuncelle_Click" />
    </form>
    <br />
</asp:Content>
