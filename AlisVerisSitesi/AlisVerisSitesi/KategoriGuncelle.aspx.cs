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
    public partial class KategoriGuncelle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TxtID.Enabled = false;
            if (!Page.IsPostBack)
            {
                int id = Convert.ToByte(Request.QueryString["ID"]);
                OleDbCommand komut = new OleDbCommand("Select * from TKategori where ID=@p1", Baglanti.db);
                if (komut.Connection.State != System.Data.ConnectionState.Open)
                {
                    komut.Connection.Open();
                }
                komut.Parameters.AddWithValue("@p1", id);
                OleDbDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    TxtID.Text = dr[0].ToString();
                    TxtKategori.Text = dr[1].ToString();
                }
                dr.Close();
                Baglanti.db.Close();
            }
        }

        protected void BtnGuncelle_Click(object sender, EventArgs e)
        {
            int id = Convert.ToByte(Request.QueryString["ID"]);
            OleDbCommand komut = new OleDbCommand("Update TKategori Set Kategori=@p2 where ID=@p1", Baglanti.db);
            if (komut.Connection.State != System.Data.ConnectionState.Open)
            {
                komut.Connection.Open();
            }
            komut.Parameters.AddWithValue("@p1", id);
            komut.Parameters.AddWithValue("@p2", TxtKategori.Text);
            komut.ExecuteNonQuery();
            Baglanti.db.Close();
            Response.Redirect("AnaAdmin.aspx");

        }
    }
}