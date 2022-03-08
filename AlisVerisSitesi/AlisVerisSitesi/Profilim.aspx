<%@ Page Title="" Language="C#" MasterPageFile="~/AnaSayfa.Master" AutoEventWireup="true" CodeBehind="Profilim.aspx.cs" Inherits="AlisVerisSitesi.Profilim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <h2 style="margin: 15px">Profilim</h2>
    <br />
    <div style="margin-left: 15px">
        <asp:Label for="TxtAd" runat="server" Text="Profil Bilgileri"></asp:Label>
        <br />
        <br />
        <asp:TextBox ID="TxtAd" required="" runat="server" CssClass="form-control" enabled="false"></asp:TextBox>
    </div>
    <br />
    <div style="margin-left: 15px">
        <asp:Label for="TxtParola" runat="server" Text="Parola Bilgileri"></asp:Label>
        <br />
        <br />
        <asp:TextBox ID="TxtParola" required="" runat="server" CssClass="form-control" enabled="false"></asp:TextBox>
    </div>
    <br />
    <br />
</asp:Content>
