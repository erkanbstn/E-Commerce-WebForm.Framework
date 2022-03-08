<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSayfa.Master" AutoEventWireup="true" CodeBehind="AnaAdmin.aspx.cs" Inherits="AlisVerisSitesi.AnaAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <h3>Kategori Listesi</h3>
    <br />
    <br />
    <table class="table table-bordered">
        <tr>
            <th>ID</th>
            <th>Kategori</th>
            <th>Sil</th>
            <th>Güncelle</th>
        </tr>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
                    <td><%#Eval("ID")%></td>
                    <td><%#Eval("Kategori")%></td>
                    <td>
                        <asp:HyperLink ID="HyperLink1" NavigateUrl='<%#"KategoriSil.aspx?ID="+Eval("ID")%>' runat="server" CssClass="btn btn-primary">Sil</asp:HyperLink></td>
                    <td>
                        <asp:HyperLink ID="HyperLink2" NavigateUrl='<%#"KategoriGuncelle.aspx?ID="+Eval("ID")%>' runat="server" CssClass="btn btn-primary">Güncelle</asp:HyperLink></td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </table>
    <hr />
    <a href="KategoriEkle.aspx" class="btn btn-danger">Yeni Kategori Ekle</a>
</asp:Content>
