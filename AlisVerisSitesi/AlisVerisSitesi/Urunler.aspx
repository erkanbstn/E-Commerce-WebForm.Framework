<%@ Page Title="" Language="C#" MasterPageFile="~/AnaSayfa.Master" AutoEventWireup="true" CodeBehind="Urunler.aspx.cs" Inherits="AlisVerisSitesi.Urunler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid mb-5">
        <div class="row border-top px-xl-5">
            <div class="col-lg-3 d-none d-lg-block">
                <a class="btn shadow-none d-flex align-items-center justify-content-between bg-primary text-white w-100" data-toggle="collapse" href="#navbar-vertical" style="height: 65px; margin-top: -1px; padding: 0 30px;">
                    <h6 class="m-0">Kategoriler</h6>
                    <i class="fa fa-angle-down text-dark"></i>
                </a>
                <nav class="collapse show navbar navbar-vertical navbar-light align-items-start p-0 border border-top-0 border-bottom-0" id="navbar-vertical">
                    <div class="navbar-nav w-100 overflow-hidden" style="height: 410px">
                        <a href="Urunler.aspx?ID=0" class="nav-item nav-link">Hepsi</a>
                        <asp:Repeater ID="Repeater2" runat="server">
                            <ItemTemplate>
                                <a href="<%#"Urunler.aspx?ID="+Eval("ID")%>" class="nav-item nav-link"><%#Eval("Kategori")%></a>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </nav>
            </div>
            <div class="col-lg-9">
                <div class="container-fluid pt-5">
                    <div class="text-center mb-4">
                        <h2 class="section-title px-5"><span class="px-2">Ürünler</span></h2>
                    </div>
                    <div class="row px-xl-5 pb-3">
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
                                                <h6>$<%#Eval("Fiyat")%></h6>
                                            </div>
                                        </div>
                                        <div class="card-footer d-flex justify-content-between bg-light border">
                                            <a href="EShopper/<%#Eval("Resim")%>" class="btn btn-sm text-dark p-0"><i class="fas fa-eye text-primary mr-1"></i>Görüntüle</a>
                                            <asp:HyperLink ID="HyperLink1" NavigateUrl='<%#"SepeteEkle.aspx?ID="+Eval("ID")%>' runat="server" CssClass="btn btn-sm text-dark p-0">Sepete Ekle<i class="fas fa-shopping-cart text-primary mr-1"></i></asp:HyperLink></td>

                                        </div>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
