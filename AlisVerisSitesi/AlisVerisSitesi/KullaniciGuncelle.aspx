<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSayfa.Master" AutoEventWireup="true" CodeBehind="KullaniciGuncelle.aspx.cs" Inherits="AlisVerisSitesi.KullaniciGuncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <h2 style="color: red; margin-left: 20px">KULLANICI EKLE</h2>
    <br />
    <form runat="server" style="margin-left: 20px" class="form-group">
         <br />
        <div>
            <asp:Label for="TxtID" Style="color: red" runat="server" Text="ID "></asp:Label>
            <br />
            <br />
            <asp:TextBox ID="TxtID" required="" runat="server" CssClass="form-control" placeholder="ID Giriniz"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Label for="TxtKullanici" Style="color: red" runat="server" Text="Kullanici Adı"></asp:Label>
            <br />
            <br />
            <asp:TextBox ID="TxtKullanici" required="" runat="server" CssClass="form-control" placeholder="Kullanici Giriniz"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Label for="TxtSifre" Style="color: red" runat="server" Text="Sifre"></asp:Label>
            <br />
            <br />
            <asp:TextBox ID="TxtSifre" required="" runat="server" CssClass="form-control" placeholder="Sifre Giriniz"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Label for="TxtRol" Style="color: red" runat="server" Text="Rol"></asp:Label>
            <br />
            <br />
            <asp:TextBox ID="TxtRol" required="" runat="server" CssClass="form-control" placeholder="Rol Giriniz"></asp:TextBox>
        </div>
        <br />
        <asp:Button ID="BtnGuncelle" runat="server" Text="Kullanici Bilgilerini Kaydet" CssClass="btn btn-warning" OnClick="BtnGuncelle_Click" />
    </form>
    <br />
</asp:Content>
