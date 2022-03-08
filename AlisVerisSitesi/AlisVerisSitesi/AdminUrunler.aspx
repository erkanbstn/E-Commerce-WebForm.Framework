<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSayfa.Master" AutoEventWireup="true" CodeBehind="AdminUrunler.aspx.cs" Inherits="AlisVerisSitesi.AdminUrunler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <h3>Ürün Listesi</h3>
    <br />
    <br />
    <table class="table table-bordered">
        <tr>
            <th>ID</th>
            <th>Ürün</th>
            <th>Fiyat</th>
            <th>Kategori</th>
            <th>Resim</th>
            <th>Sil</th>
            <th>Güncelle</th>
        </tr>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
                    <td><%#Eval("ID")%></td>
                    <td><%#Eval("Urun")%></td>
                    <td><%#Eval("Fiyat")%></td>
                    <td><%#Eval("Kategori")%></td>
                    <td><%#Eval("Resim")%></td>
                    <td>
                        <asp:HyperLink ID="HyperLink1" NavigateUrl='<%#"UrunSil.aspx?ID="+Eval("ID")%>' runat="server" CssClass="btn btn-primary">Sil</asp:HyperLink></td>
                    <td>
                        <asp:HyperLink ID="HyperLink2" NavigateUrl='<%#"UrunGuncelle.aspx?ID="+Eval("ID")%>' runat="server" CssClass="btn btn-primary">Güncelle</asp:HyperLink></td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </table>
    <hr />
    <a href="UrunEkle.aspx" class="btn btn-danger">Yeni Ürün Ekle</a>
</asp:Content>
