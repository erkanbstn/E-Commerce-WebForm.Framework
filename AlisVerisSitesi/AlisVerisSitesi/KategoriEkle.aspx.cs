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
    public partial class KategoriEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnEkle_Click(object sender, EventArgs e)
        {
            OleDbCommand komut = new OleDbCommand("Insert into TKategori (Kategori ) values (@p1)",Baglanti.db);
            if (komut.Connection.State != System.Data.ConnectionState.Open)
            {
                komut.Connection.Open();
            }
            komut.Parameters.AddWithValue("@p1", TxtKategori.Text);
            komut.ExecuteNonQuery();
            Baglanti.db.Close();
            Response.Redirect("AnaAdmin.aspx");
        }
    }
}