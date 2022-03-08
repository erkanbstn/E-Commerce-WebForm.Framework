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
    public partial class Urunler : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["ID"]);

            if (id == 0)
            {
                OleDbDataAdapter ad = new OleDbDataAdapter("Select * from TUrun", Baglanti.db);
                DataTable t = new DataTable();
                ad.Fill(t);
                Repeater1.DataSource = t;
                Repeater1.DataBind();
            }
            else
            {
                OleDbCommand komut = new OleDbCommand("Select * from TUrun where Kategori=@p1", Baglanti.db);
                komut.Parameters.AddWithValue("@p1", id);
                OleDbDataAdapter ad = new OleDbDataAdapter(komut);
                DataTable t = new DataTable();
                ad.Fill(t);
                Repeater1.DataSource = t;
                Repeater1.DataBind();
                Baglanti.db.Close();
            }

            OleDbDataAdapter ad2 = new OleDbDataAdapter("Select * from TKategori", Baglanti.db);
            DataTable t2 = new DataTable();
            ad2.Fill(t2);
            Repeater2.DataSource = t2;
            Repeater2.DataBind();
        }
    }
}