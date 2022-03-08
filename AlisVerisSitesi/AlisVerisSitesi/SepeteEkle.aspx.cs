using AlisVerisSitesi.Model;
using System;
using System.Collections.Generic;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace AlisVerisSitesi
{
    public partial class SepeteEkle : System.Web.UI.Page
    {
        public int fiyat;
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["ID"]);
            int kullanici = Convert.ToInt32(Session["ID"]);
            OleDbCommand komut2 = new OleDbCommand("Select * from TUrun Where ID=@p1", Baglanti.db);
            if (komut2.Connection.State != ConnectionState.Open)
            {
                komut2.Connection.Open();
            }
            komut2.Parameters.AddWithValue("@p1", id);
            OleDbDataReader dr = komut2.ExecuteReader();
            while (dr.Read())
            {
                fiyat = Convert.ToInt32(dr[2]);
            }
            dr.Close();
            Baglanti.db.Close();

            OleDbCommand komut = new OleDbCommand("Insert into TSepet (Urun,Musteri,Fiyat) values (@p1,@p2,@p3)", Baglanti.db);
            if (komut.Connection.State != ConnectionState.Open)
            {
                komut.Connection.Open();
            }
            komut.Parameters.AddWithValue("@p1",id);
            komut.Parameters.AddWithValue("@p2",kullanici);
            komut.Parameters.AddWithValue("@p3",fiyat);
            komut.ExecuteNonQuery();
            Baglanti.db.Close();
            Response.Redirect("Urunler.aspx");
        }
    }
}