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
    public partial class Site1 : System.Web.UI.MasterPage
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                Label1.Text = "Logged in as  " + Session["username"].ToString();
                HyperLink1.Visible = false;
                Button1.Visible = true;
            }
            else
            {
                Label1.Text = "Hello you can login here...";
                HyperLink1.Visible = true;
                Button1.Visible = false;
            }
            Label1.Style.Add("margin", "8px");
            //Label1.Style.Add("margin-left", "10px");

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("~/Home(index).aspx");
            //Label1.Text = "You Have Logged Out Successfuly...";
        }

        public TextBox txtSEARCH
        {
            get
            {
                return this.txtsearch;
            }
        }
        public LinkButton btnsearsh
        {
            get
            {
                return btnsearch;
            }
        }


    }
}