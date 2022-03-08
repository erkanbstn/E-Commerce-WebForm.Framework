<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSayfa.Master" AutoEventWireup="true" CodeBehind="AdminKullanicilar.aspx.cs" Inherits="AlisVerisSitesi.AdminKullanicilar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <h3>Kullanıcı Listesi</h3>
    <br />
    <br />
    <table class="table table-bordered">
        <tr>
            <th>ID</th>
            <th>Kullanıcı</th>
            <th>Şifre</th>
            <th>Sil</th>
            <th>Güncelle</th>
        </tr>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
                    <td><%#Eval("ID")%></td>
                    <td><%#Eval("Kullanici")%></td>
                    <td><%#Eval("Sifre")%></td>
                    <td>
                        <asp:HyperLink ID="HyperLink1" NavigateUrl='<%#"KullaniciSil.aspx?ID="+Eval("ID")%>' runat="server" CssClass="btn btn-primary">Sil</asp:HyperLink></td>
                    <td>
                        <asp:HyperLink ID="HyperLink2" NavigateUrl='<%#"KullaniciGuncelle.aspx?ID="+Eval("ID")%>' runat="server" CssClass="btn btn-primary">Güncelle</asp:HyperLink></td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </table>
    <hr />
    <a href="KullaniciEkle.aspx" class="btn btn-danger">Yeni Kullanıcı Ekle</a>
</asp:Content>
