﻿using AlisVerisSitesi.Model;
using System;
using System.Collections.Generic;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AlisVerisSitesi
{
    public partial class UrunGuncelle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TxtID.Enabled = false;
            TxtKategori.Enabled = false;
            if (!Page.IsPostBack)
            {
                int id = Convert.ToByte(Request.QueryString["ID"]);
                OleDbCommand komut = new OleDbCommand("Select * from TUrun where ID=@p1", Baglanti.db);
                if (komut.Connection.State != System.Data.ConnectionState.Open)
                {
                    komut.Connection.Open();
                }
                komut.Parameters.AddWithValue("@p1", id);
                OleDbDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    TxtID.Text = dr[0].ToString();
                    TxtUrun.Text = dr[1].ToString();
                    TxtFiyat.Text = dr[2].ToString();
                    TxtResim.Text = dr[4].ToString();
                    TxtKategori.Text= dr[3].ToString();
                }
                dr.Close();
                Baglanti.db.Close();
            }
        }

        protected void BtnGuncelle_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["ID"]);
            OleDbCommand komut = new OleDbCommand("Update TUrun Set Urun=@p2,Fiyat=@p3,Resim=@p4 where ID=@p1", Baglanti.db);
            if (komut.Connection.State != System.Data.ConnectionState.Open)
            {
                komut.Connection.Open();
            }
            komut.Parameters.AddWithValue("@p1", id);
            komut.Parameters.AddWithValue("@p2", TxtUrun.Text);
            komut.Parameters.AddWithValue("@p3", int.Parse(TxtFiyat.Text));
            komut.Parameters.AddWithValue("@p4", TxtResim.Text);
            komut.ExecuteNonQuery();
            Baglanti.db.Close();
            Response.Redirect("AdminUrunler.aspx");
        }
    }
}