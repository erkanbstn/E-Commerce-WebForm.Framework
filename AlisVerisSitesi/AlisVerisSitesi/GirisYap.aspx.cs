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
    public partial class GirisYap : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                OleDbCommand komut = new OleDbCommand("Select * from TAdmin where Kullanici=@p1 and Sifre=@p2", Baglanti.db);
                if (komut.Connection.State != System.Data.ConnectionState.Open)
                {
                    komut.Connection.Open();
                }
                komut.Parameters.AddWithValue("@p1", TextBox1.Text);
                komut.Parameters.AddWithValue("@p2", TextBox2.Text);
                OleDbDataReader dr = komut.ExecuteReader();
                if (dr.Read())
                {
                    Session["Kullanici"] = dr[1].ToString();
                    Session["ID"] = dr[0].ToString();
                    Session["Rol"] = dr[3].ToString();
                    if (dr[3].ToString() == "Admin")
                    {
                        Response.Redirect("AnaAdmin.aspx");
                    }
                    else
                    {
                        Response.Redirect("Ana.aspx");
                    }
                }
                else
                {
                    Response.Write("<script>alert('Hatalı Kullanıcı Adı Veya Şifre')</script>");
                }
                dr.Close();
                Baglanti.db.Close();
            }
            catch (Exception)
            {

                Response.Write("<script>alert('Hatalı Kullanıcı Adı Veya Şifre')</script>");

            }
        }
    }
}