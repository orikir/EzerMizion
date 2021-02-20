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
                if ((Session["uType"].Equals("manager") || Session["uType"].Equals("ordinary")))
                {
                    //string pCode = Request.QueryString["pCode"];
                    //if (pCode != null)
                    {
                        //Repeater1.DataSource = pl.oneProduct(Int32.Parse(pCode));
                        Repeater1.DataSource = pl.getCart(Session["uId"].ToString());
                        Repeater1.DataBind();
                    }
                }
            }
        }

        protected void delete_Click(object sender, EventArgs e)
        {
            string proCode = ((sender as Button).CommandName).ToString();
            pl.deleteFromCart(Int32.Parse(proCode), Session["uId"].ToString());
            Repeater1.DataSource = pl.getCart(Session["uId"].ToString());
            Repeater1.DataBind();
        }

        protected void minus_Click(object sender, EventArgs e)
        {
            RepeaterItem item = (sender as Button).NamingContainer as RepeaterItem;
            string quan = (item.FindControl("quantity") as Label).Text;
            string proCode = (item.FindControl("proCode") as Label).Text;
            if (Int32.Parse(quan)>1)
            {
                pl.updateAmount(-1,Int32.Parse(proCode), Session["uId"].ToString());
            }
            else 
            {//when the amount is 1, and the user click on minus the amount become 0
                pl.deleteFromCart(Int32.Parse(proCode), Session["uId"].ToString());
            }
            Repeater1.DataSource = pl.getCart(Session["uId"].ToString());
            Repeater1.DataBind();
        }

        protected void plus_Click(object sender, EventArgs e)
        {
            RepeaterItem item = (sender as Button).NamingContainer as RepeaterItem;
            string quan = (item.FindControl("quantity") as Label).Text;
            string proCode = (item.FindControl("proCode") as Label).Text;
            if (Int32.Parse(quan)<30)
            {
                pl.updateAmount(1, Int32.Parse(proCode), Session["uId"].ToString());
            }
            //else
            {
                //הוראה:לא ניתן להזמין יותר מ10 מוצרים
            }
            
            Repeater1.DataSource = pl.getCart(Session["uId"].ToString());
            Repeater1.DataBind();
        }

        protected void checkout_Click(object sender, EventArgs e)
        {
            Response.Redirect("payment.aspx");
        }
    }
}