using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace Projet_De_Fin_Detude
{
    public partial class authentification_admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (FormsAuthentication.Authenticate(TextBox1.Text, TextBox2.Text))
            {
                FormsAuthentication.RedirectFromLoginPage(TextBox1.Text, CheckBox1.Checked);
            }
            else
            {
                Label1.Text = "Non Trouve";
            }
        }
    }
}