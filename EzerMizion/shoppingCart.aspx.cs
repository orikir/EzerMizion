using EzerMizion.App_Code;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EzerMizion
{
    public partial class shoppingCart : System.Web.UI.Page
    {
        productsLogic pl = new productsLogic();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string pCode = Request.QueryString["pCode"];
                if (pCode != null)
                {
                    Repeater1.DataSource = pl.oneProduct(Int32.Parse(pCode));
                    Repeater1.DataBind();
                }
                
            }
            /* if(! IsPostBack)
              {
                  string pCode = Request.QueryString["pCode"];
                 DataSet ds=pl.____ //זימון השאילתה
                 שם הפקד.text = Tables[0].rows[0][שם השדה].ToString(); //הצבת הנתונים בפקדים
              }
            */
        }

        protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            /*RepeaterItem item = (sender as Button).NamingContainer as RepeaterItem;
                string pPrice = "Id: " + (item.FindControl("pPrice") as Label).Text;
                string qty = "Id: " + (item.FindControl("qty") as Label).Text;
                Label totalP = item.FindControl("totalP") as Label;
                    if (totalP != null)
                    {
                        totalP.Text =(string)(pl.pTotal(Double.Parse(pPrice), Int32.Parse(qty)));

                    }
            RepeaterItem item = (sender as ListBox).NamingContainer as RepeaterItem;
            string qty = "Id: " + (item.FindControl("qty") as Label).Text; 
            ListBox q = item.FindControl("quan") as ListBox;
            if (q != null)
                qty = q.SelectedValue;
            string pPrice = "Id: " + (item.FindControl("pPrice") as Label).Text;
            Label totalP = item.FindControl("totalP") as Label;
            if (totalP != null)
            {
                totalP.Text = (pl.pTotal(Double.Parse(pPrice), Int32.Parse(qty))).ToString();

            }*/
        }
    }
}