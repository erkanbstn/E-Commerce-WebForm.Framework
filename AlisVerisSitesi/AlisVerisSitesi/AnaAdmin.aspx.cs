﻿using AlisVerisSitesi.Model;
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
    public partial class AnaAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            OleDbDataAdapter ad = new OleDbDataAdapter("Select * from TKategori",Baglanti.db);
            DataTable t = new DataTable();
            ad.Fill(t);
            Repeater1.DataSource = t;
            Repeater1.DataBind();

        }
    }
}