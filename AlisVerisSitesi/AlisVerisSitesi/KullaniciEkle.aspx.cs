using AlisVerisSitesi.Model;
using System;
using System.Collections.Generic;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AlisVerisSitesi
{
    public partial class KullaniciEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnEkle_Click(object sender, EventArgs e)
        {
            OleDbCommand komut = new OleDbCommand("Insert into TAdmin (Kullanici,Sifre,Rol) values (@p1,@p2,@p3)", Baglanti.db);
            if (komut.Connection.State != System.Data.ConnectionState.Open)
            {
                komut.Connection.Open();
            }
            komut.Parameters.AddWithValue("@p1", TxtKullanici.Text);
            komut.Parameters.AddWithValue("@p2", TxtSifre.Text);
            komut.Parameters.AddWithValue("@p3", TxtRol.Text);
            komut.ExecuteNonQuery();
            Baglanti.db.Close();
            Response.Redirect("AdminKullanicilar.aspx");
        }
    }
}