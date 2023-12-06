using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;


namespace Projet_De_Fin_Detude
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        public static SqlConnection OCN1 = new SqlConnection(@"Data source = DESKTOP-R5K6EHP\SQLEXPRESS ; Initial Catalog = pfe2021 ; Integrated Security = true;");
        public static SqlDataReader ODR1;
        public static SqlCommand OCMD = new SqlCommand();
        public static SqlCommand OCMD1 = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {
            //Label1.Text = Request.QueryString["id"].ToString();
            OCN1.Open();
            OCMD.CommandText = ("select * from Product where IDP='" + Request.QueryString["id"] + "'");
            OCMD.Connection = OCN1;
            ODR1 = OCMD.ExecuteReader();
            while (ODR1.Read())
            {
                Title7.InnerText = ODR1[1].ToString();
                PName.InnerText = ODR1[1].ToString();
                prix.InnerText = "$" + ODR1[2].ToString();
                HiddenField1.Value = ODR1[2].ToString();
                Byte[] bite = (byte[])ODR1[5];
                string str = Convert.ToBase64String(bite);
                img1.Src = "data:Image/png;base64," + str;
                ID.InnerText = ODR1[0].ToString();
                DLVRY.InnerText = ODR1[4].ToString();
            }
            OCN1.Close();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["PName"] = PName.InnerText;
            Session["Price"] = prix.InnerText;
            Session["IDP"] = ID.InnerText;
            Session["Quantit"] = DropDownList1.SelectedValue;
            Session["Size"] = DropDownList2.SelectedValue;
            Session["totale"] = (Convert.ToInt32(DropDownList1.SelectedValue)) * (Convert.ToInt32(HiddenField1.Value));

            Response.Redirect("~/ChekoutDettaills.aspx");
        }
    }
}
