<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSayfa.Master" AutoEventWireup="true" CodeBehind="KategoriGuncelle.aspx.cs" Inherits="AlisVerisSitesi.KategoriGuncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <br />
    <h2 style="color: red; margin-left: 20px">KATEGORİ GÜNCELLE</h2>
    <br />
    <form runat="server" style="margin-left: 20px" class="form-group">
        <br />
        <div>
            <asp:Label for="TxtID" Style="color: red" runat="server" Text="Kategori ID"></asp:Label>
            <br />
            <br />
            <asp:TextBox ID="TxtID" required="" runat="server" CssClass="form-control" placeholder="ID Giriniz"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Label for="TxtKategori" Style="color: red" runat="server" Text="Kategori Adı"></asp:Label>
            <br />
            <br />
            <asp:TextBox ID="TxtKategori" required="" runat="server" CssClass="form-control" placeholder="Kategori Giriniz"></asp:TextBox>
        </div>
        <br />
        <asp:Button ID="BtnGuncelle" runat="server" Text="Kategori Bilgilerini Kaydet" CssClass="btn btn-warning" OnClick="BtnGuncelle_Click" />
    </form>
    <br />
</asp:Content>
