using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using System.Configuration;

namespace Projet_De_Fin_Detude
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        public static SqlConnection OCN1 = new SqlConnection(@"Data source = DESKTOP-R5K6EHP\SQLEXPRESS ; Initial Catalog = pfe2021 ; Integrated Security = true;");
        public static SqlDataReader ODR1;



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

            OCN1.Open();
            string query;
            if (Request.QueryString["PName"] != null)
            {
                query = "select Product.IDP , Product.PName, Product.prix,Product.Discription,Product.Delivery,Product.img,Categorie.Nomcat from Product inner join Categorie on Categorie.IDCat = Product.categorie where PName like '%" + Request.QueryString["PName"] + "%'";
            }
            else
            {
                query = "select Product.IDP , Product.PName, Product.prix,Product.Discription,Product.Delivery,Product.img,Categorie.Nomcat  from Product inner join Categorie on Categorie.IDCat = Product.categorie";
            }

            SqlCommand OCMD1 = new SqlCommand(query, OCN1);
            //OCMD1.CommandType = CommandType.StoredProcedure;


            ODR1 = OCMD1.ExecuteReader();

            while (ODR1.Read())
            {


                Panel col = new Panel();
                col.CssClass = "col";
                Panel card_rounded = new Panel();
                card_rounded.CssClass = "card rounded-0 product-card";
                Panel card_header = new Panel();
                card_header.CssClass = "card-header bg-transparent border-bottom-0";
                Panel d_flex = new Panel();
                d_flex.CssClass = "d-flex align-items-center justify-content-end gap-3";
                card_header.Controls.Add(d_flex);
                card_rounded.Controls.Add(card_header);
                ImageButton imgp1 = new ImageButton();
                Byte[] bite = (byte[])ODR1["img"];
                string strim = Convert.ToBase64String(bite);
                imgp1.CssClass = "card-img-top";
                imgp1.ImageUrl = "data:Image/png;base64," + strim;
                imgp1.PostBackUrl = "ProductDetaills.aspx?id=" + ODR1[0];
                card_rounded.Controls.Add(imgp1);
                Panel card_body = new Panel();
                card_body.CssClass = "card-body";
                Panel product_info = new Panel();
                product_info.CssClass = "product-info";
                Label lb1 = new Label();
                lb1.Style.Add("display", "block");
                lb1.CssClass = "product-catergory font-13 mb-1 ";
                lb1.Text = ODR1[6].ToString();
                product_info.Controls.Add(lb1);
                Label lbl2 = new Label();
                lbl2.Style.Add("color", "white");
                lbl2.Style.Add("font-weight", "bold");
                lbl2.CssClass = "product-name mb-2 ";
                lbl2.Text = ODR1[1].ToString();
                product_info.Controls.Add(lbl2);
                Panel d_flex2 = new Panel();
                d_flex2.CssClass = "d-flex align-items-center";
                Panel mb_1 = new Panel();
                mb_1.CssClass = "mb-1 product-price";
                Label lb3 = new Label();
                lb3.CssClass = "me-1 text-decoration-line-through";
                lb3.Text = "$80.00";
                mb_1.Controls.Add(lb3);
                Label lb4 = new Label();
                lb4.CssClass = " text - white fs - 5";
                lb4.Text = "$" + ODR1[2].ToString(); ;
                mb_1.Controls.Add(lb4);
                d_flex2.Controls.Add(mb_1);
                Panel cursor = new Panel();
                cursor.CssClass = "cursor-pointer ms-auto";
                //Label str1 = new Label();
                //str1.CssClass = "bx bxs-star text-white";
                //cursor.Controls.Add(str1);
                //Label str2 = new Label();
                //str2.CssClass = "bx bxs-star text-white";
                //cursor.Controls.Add(str2);
                //Label str3 = new Label();
                //str3.CssClass = "bx bxs-star text-white";
                //cursor.Controls.Add(str3);
                //Label str4 = new Label();
                //str4.CssClass = "bx bxs-star text-white";
                //cursor.Controls.Add(str4);
                //Label str5 = new Label();
                //str5.CssClass = "bx bxs-star text-white";
                //cursor.Controls.Add(str5);
                d_flex2.Controls.Add(cursor);
                product_info.Controls.Add(d_flex2);
                Panel product_action = new Panel();
                product_action.CssClass = "product-action mt-2";
                Panel d_grid = new Panel();
                d_grid.CssClass = "d-grid gap-2";
                HyperLink hpl1 = new HyperLink();
                hpl1.CssClass = "btn btn-light btn-ecomm";
                hpl1.Text = "View Product";
                hpl1.NavigateUrl = "ProductDetaills.aspx?id=" + ODR1[0];
                d_grid.Controls.Add(hpl1);
                product_action.Controls.Add(d_grid);
                product_info.Controls.Add(product_action);
                card_body.Controls.Add(product_info);
                card_rounded.Controls.Add(card_body);
                col.Controls.Add(card_rounded);
                Panel2.Controls.Add(col);

            }

            OCN1.Close();
        }

    }
}