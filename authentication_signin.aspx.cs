using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Projet_De_Fin_Detude
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection OCN1 = new SqlConnection(@"Data source = DESKTOP-R5K6EHP\SQLEXPRESS ; Initial Catalog = pfe2021; Integrated Security = true;");
            SqlDataAdapter ODA1 = new SqlDataAdapter("select * from signup where email ='" + inputEmailAddress.Text + "' and mdps = '" + inputChoosePassword.Text + "'", OCN1);
            DataTable ODT1 = new DataTable();
            ODA1.Fill(ODT1);
            if (ODT1.Rows.Count == 1)
            {
                Session["username"] = inputEmailAddress.Text;
                Label1.Text = "Login Successful!";
                Label1.ForeColor = System.Drawing.Color.White;

                Response.Redirect("~/Home(index).aspx");
            }
            else
            {
                Label1.Text = "Login Unsuccessful!";
                Label1.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}