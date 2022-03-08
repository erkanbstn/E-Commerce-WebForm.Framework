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
    public partial class KullaniciGuncelle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TxtID.Enabled = false;
            if (!Page.IsPostBack)
            {
                int id = Convert.ToByte(Request.QueryString["ID"]);
                OleDbCommand komut = new OleDbCommand("Select * from TAdmin where ID=@p1", Baglanti.db);
                if (komut.Connection.State != System.Data.ConnectionState.Open)
                {
                    komut.Connection.Open();
                }
                komut.Parameters.AddWithValue("@p1", id);
                OleDbDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    TxtID.Text = dr[0].ToString();
                    TxtKullanici.Text = dr[1].ToString();
                    TxtSifre.Text = dr[2].ToString();
                    TxtRol.Text = dr[3].ToString();
                }
                dr.Close();
                Baglanti.db.Close();
            }
        }

        protected void BtnGuncelle_Click(object sender, EventArgs e)
        {
            int id = Convert.ToByte(Request.QueryString["ID"]);
            OleDbCommand komut = new OleDbCommand("Update TAdmin Set Kullanici=@p2,Sifre=@p3,Rol=@p4 where ID=@p1", Baglanti.db);
            if (komut.Connection.State != System.Data.ConnectionState.Open)
            {
                komut.Connection.Open();
            }
            komut.Parameters.AddWithValue("@p1", id);
            komut.Parameters.AddWithValue("@p2", TxtKullanici.Text);
            komut.Parameters.AddWithValue("@p3", TxtSifre.Text);
            komut.Parameters.AddWithValue("@p4", TxtRol.Text);
            komut.ExecuteNonQuery();
            Baglanti.db.Close();
            Response.Redirect("AdminKullanicilar.aspx");
        }
    }
}