<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GirisYap.aspx.cs" Inherits="AlisVerisSitesi.GirisYap" %>

<!doctype html>
<html lang="en">
<head>
    <title>Giriş Yap</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

    <link rel="stylesheet" href="Login09/css/style.css">
</head>
<body>
    <section class="ftco-section">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-6 text-center mb-5">
                    <h2 class="heading-section">Alışveriş Sistemi Giriş</h2>
                </div>
            </div>
            <div class="row justify-content-center">
                <div class="col-md-6 col-lg-4">
                    <div class="login-wrap py-5">
                        <div class="img d-flex align-items-center justify-content-center" style="background-image: url(Login09/images/bg.jpg);"></div>
                        <p class="text-center">Kullanıcı Adı ve Şifrenizle Sisteme Giriş Yapabilirsiniz</p>
                        <form runat="server" class="login-form">
                            <div class="form-group">
                                <div class="icon d-flex align-items-center justify-content-center"><span class="fa fa-user"></span></div>
                                <asp:TextBox ID="TextBox1" class="form-control" runat="server" required placeholder="Kullanıcı Adı"> </asp:TextBox>
                            </div>
                            <div class="form-group">
                                <div class="icon d-flex align-items-center justify-content-center"><span class="fa fa-lock"></span></div>
                                <asp:TextBox ID="TextBox2" class="form-control" type="password" runat="server" required placeholder="Şifre"> </asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:Button ID="Button1" runat="server" class="btn form-control btn-primary rounded submit px-3" Text="Giriş Yap" OnClick="Button1_Click" />
                            </div>
                        </form>
                        <div class="w-100 text-center mt-4 text">
                            <p class="mb-0">Hesabınız Yok mu?</p>
                            <a href="KayitOl.aspx">Kayıt Ol</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <script src="Login09/js/jquery.min.js"></script>
    <script src="Login09/js/popper.js"></script>
    <script src="Login09/js/bootstrap.min.js"></script>
    <script src="Login09/js/main.js"></script>

</body>
</html>


