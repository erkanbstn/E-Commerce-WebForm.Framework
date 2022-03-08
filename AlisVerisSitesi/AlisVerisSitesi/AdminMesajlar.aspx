<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSayfa.Master" AutoEventWireup="true" CodeBehind="AdminMesajlar.aspx.cs" Inherits="AlisVerisSitesi.AdminMesajlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <h3>Mesaj Listesi</h3>
    <br />
    <br />
    <table class="table table-bordered">
        <tr>
            <th>ID</th>
            <th>Email</th>
            <th>Mesaj</th>
            <th>Sil</th>
        </tr>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
                    <td><%#Eval("ID")%></td>
                    <td><%#Eval("Email")%></td>
                    <td><%#Eval("Mesaj")%></td>
                    <td>
                        <asp:HyperLink ID="HyperLink1" NavigateUrl='<%#"MesajSil.aspx?ID="+Eval("ID")%>' runat="server" CssClass="btn btn-primary">Sil</asp:HyperLink></td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </table>
    <hr />
</asp:Content>
