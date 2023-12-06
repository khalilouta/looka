using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projet_De_Fin_Detude
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Init(object sender, EventArgs e)
        {
            Master.btnsearsh.Click += ButtonSearch_Click;
        }
        protected void ButtonSearch_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AllProduct.aspx?PName=" + Master.txtSEARCH.Text);
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}