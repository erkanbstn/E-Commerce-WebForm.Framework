using AlisVerisSitesi.Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AlisVerisSitesi
{
    public partial class Sepetim : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Session["ID"]);
            OleDbCommand komut = new OleDbCommand("Select Urun from TSepet where Musteri=@p1", Baglanti.db);
            if (komut.Connection.State != ConnectionState.Open)
            {
                komut.Connection.Open();
            }
            komut.Parameters.AddWithValue("@p1",id);
            OleDbDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                Baglanti.Urun = Convert.ToInt32(dr[0]);
            }
            dr.Close();
            Baglanti.db.Close();


            OleDbCommand komut2 = new OleDbCommand("Select * from TUrun where ID=@p1", Baglanti.db);
            if (komut2.Connection.State != ConnectionState.Open)
            {
                komut2.Connection.Open();
            }
            komut2.Parameters.AddWithValue("@p1", Baglanti.Urun);
            OleDbDataAdapter ad = new OleDbDataAdapter(komut2);
            DataTable d = new DataTable();
            ad.Fill(d);
            Repeater1.DataSource = d;
            Repeater1.DataBind();
            Baglanti.db.Close();
        }
    }
}