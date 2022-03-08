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
    public partial class AnaSayfa : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                int id = Convert.ToInt32(Session["ID"]);
                if (id > 0)
                {
                    BtnGiris.Enabled = false;
                    BtnGiris.Visible = false;
                    BtnKayit.Enabled = false;
                    BtnKayit.Visible = false;
                }
            }
            catch (Exception)
            {
                Response.Redirect("GirisYap.aspx");
            }
        }


        protected void BtnKayit_Click(object sender, EventArgs e)
        {
            Response.Redirect("KayitOl.aspx");
        }

        protected void BtnGiris_Click(object sender, EventArgs e)
        {
            Response.Redirect("GirisYap.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            OleDbCommand komut = new OleDbCommand("Insert into TMesaj (Email,Mesaj) values (@p1,@p2)",Baglanti.db);
            if (komut.Connection.State != System.Data.ConnectionState.Open)
            {
                komut.Connection.Open();
            }
            komut.Parameters.AddWithValue("@p1", TxtEmail.Text);
            komut.Parameters.AddWithValue("@p2", TxtMesaj.Text);
            komut.ExecuteNonQuery();
            Baglanti.db.Close();
        }
    }
}