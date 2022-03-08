using System;
using System.Collections.Generic;
using System.Data.OleDb;
using System.Linq;
using System.Web;

namespace AlisVerisSitesi.Model
{
    public class Baglanti
    {
        public static OleDbConnection db = new OleDbConnection(@"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\Geo\Desktop\Alisveris.mdb");

        public static string Kullanici { get; set; }
        public static string Rol { get; set; }
        public static int Urun { get; set; }

    }
}