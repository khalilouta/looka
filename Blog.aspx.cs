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
    public partial class WebForm9 : System.Web.UI.Page
    {
        public static SqlConnection OCN1 = new SqlConnection(@"Data source = DESKTOP-R5K6EHP\SQLEXPRESS ; Initial Catalog = pfe2021 ; Integrated Security = true;");
        public static SqlDataReader ODR1;
        public static SqlCommand OCMD1 = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {
            OCN1.Open();
            OCMD1.Connection = OCN1;
            OCMD1.CommandText = "select * from blog ";
            ODR1 = OCMD1.ExecuteReader();

            while (ODR1.Read())
            {
                Panel card = new Panel();
                card.CssClass = "card";
                Image image = new Image();
                image.CssClass = "card-img-top";
                Byte[] bite = (byte[])ODR1[0];
                string str = Convert.ToBase64String(bite);
                image.ImageUrl = "data:Image/png;base64," + str;
                card.Controls.Add(image);
                Panel card_body = new Panel();
                card_body.CssClass = "card-body";
                card.Controls.Add(card_body);
                Panel list_inline = new Panel();
                list_inline.CssClass = "list-inline";
                card_body.Controls.Add(list_inline);
                HyperLink list_inline_item = new HyperLink();
                list_inline_item.CssClass = "list-inline-item";
                list_inline_item.Text = "By Admin";
                list_inline.Controls.Add(list_inline_item);
                Label lbl1 = new Label();
                lbl1.CssClass = "mt-4";
                lbl1.Text = ODR1[1].ToString();
                lbl1.Style.Add("display", "block");
                lbl1.Style.Add("color", "white");
                lbl1.Style.Add("font-size", "23px");
                lbl1.Style.Add("font-weight", "bold");
                card_body.Controls.Add(lbl1);
                //label lbl2 = new label();
                //lbl2.text = odr1[2].tostring();
                //card_body.controls.add(lbl2);
                HyperLink btn_btn_light_btn_ecomm = new HyperLink();
                btn_btn_light_btn_ecomm.CssClass = "btn btn-light btn-ecomm";
                btn_btn_light_btn_ecomm.Text = "Read More";
                btn_btn_light_btn_ecomm.Style.Add("display", "block");
                btn_btn_light_btn_ecomm.Style.Add("width", "15%");
                btn_btn_light_btn_ecomm.Style.Add("margin-top", "2%");
                btn_btn_light_btn_ecomm.NavigateUrl = "Detaillsblog.aspx?id=" + ODR1[3];
                card_body.Controls.Add(btn_btn_light_btn_ecomm);
                Panel1.Controls.Add(card);
            }
            OCN1.Close();
        }
    }
}