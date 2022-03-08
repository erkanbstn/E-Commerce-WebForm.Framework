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
    public partial class UrunEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnEkle_Click(object sender, EventArgs e)
        {
            OleDbCommand komut = new OleDbCommand("Insert into TUrun (Urun,Fiyat,Resim,Kategori) values (@p1,@p2,@p3,@p4)", Baglanti.db);
            if (komut.Connection.State != System.Data.ConnectionState.Open)
            {
                komut.Connection.Open();
            }
            komut.Parameters.AddWithValue("@p1", TxtUrun.Text);
            komut.Parameters.AddWithValue("@p2", TxtFiyat.Text);
            komut.Parameters.AddWithValue("@p3", TxtResim.Text);
            komut.Parameters.AddWithValue("@p4", TxtKategori.Text);
            komut.ExecuteNonQuery();
            Baglanti.db.Close();
            Response.Redirect("AdminUrunler.aspx");
        }
    }
}