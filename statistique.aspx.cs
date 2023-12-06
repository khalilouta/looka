using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;

namespace Projet_De_Fin_Detude
{
    public partial class WebForm20 : System.Web.UI.Page
    {
        public static SqlConnection OCN1 = new SqlConnection(@"Data source = DESKTOP-R5K6EHP\SQLEXPRESS ; Initial Catalog = pfe2021 ; Integrated Security = true;");
        public static SqlDataReader ODR1;
        public static SqlCommand OCMD1 = new SqlCommand();
        public static SqlCommand OCMD2 = new SqlCommand();
        public static SqlCommand OCMD3 = new SqlCommand();
        public static SqlDataAdapter ODA1 = new SqlDataAdapter();
        public static DataSet ODS1 = new DataSet();
        public static SqlCommandBuilder BC;
        protected void Page_Load(object sender, EventArgs e)
        {

            OCN1.Open();
            OCMD1.CommandText = "select count(client.id) from client";
            OCMD1.Connection = OCN1;
            int var1 = (int)OCMD1.ExecuteScalar();
            Label2.Text = var1.ToString();

            OCMD2.CommandText = "select count(commande.NUM) from commande";
            OCMD2.Connection = OCN1;
            int var2 = (int)OCMD2.ExecuteScalar();
            Label4.Text = var2.ToString();

            OCMD3.CommandText = "select count(Product.IDP) from Product";
            OCMD3.Connection = OCN1;
            int var3 = (int)OCMD3.ExecuteScalar();
            Label6.Text = var3.ToString();

            OCN1.Close();

            if (!IsPostBack)
            {
                OCN1.Open();
                OCMD1.CommandText = "select * from Arch_Product ";
                OCMD1.Connection = OCN1;
                ODR1 = OCMD1.ExecuteReader();

                DataTable ODT1 = new DataTable();
                ODT1.Load(ODR1);
                GridView1.DataSource = ODT1;
                GridView1.DataBind();
                ODR1.Close();
                OCN1.Close();
            }
            if (!IsPostBack)
            {
                OCN1.Open();
                OCMD2.CommandText = "select * from Arch_Blog ";
                OCMD2.Connection = OCN1;
                ODR1 = OCMD2.ExecuteReader();

                DataTable ODT1 = new DataTable();
                ODT1.Load(ODR1);
                GridView2.DataSource = ODT1;
                GridView2.DataBind();
                ODR1.Close();
                OCN1.Close();
            }
        }
    }
}