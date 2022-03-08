﻿<%@ Page Title="" Language="C#" MasterPageFile="~/AnaSayfa.Master" AutoEventWireup="true" CodeBehind="Sepetim.aspx.cs" Inherits="AlisVerisSitesi.Sepetim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Sepetimdeki Ürünler</h1>
    <br />
    <asp:Repeater ID="Repeater1" runat="server">
        <ItemTemplate>
            <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                <div class="card product-item border-0 mb-4">
                    <div class="card-header product-img position-relative overflow-hidden bg-transparent border p-0">
                        <img class="img-fluid w-100" src="EShopper/<%#Eval("Resim")%>" alt="">
                    </div>
                    <div class="card-body border-left border-right text-center p-0 pt-4 pb-3">
                        <h6 class="text-truncate mb-3"><%#Eval("Urun")%></h6>
                        <div class="d-flex justify-content-center">
                            <h6>1 Adet</h6>
                        </div>
                    </div>
                    <div class="card-footer d-flex justify-content-between bg-light border">
                        <a href="EShopper/<%#Eval("Resim")%>" class="btn btn-sm text-dark p-0"><i class="fas fa-eye text-primary mr-1"></i>Görüntüle</a>
                    </div>
                </div>
            </div>
        </ItemTemplate>
    </asp:Repeater>
</asp:Content>
