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
        cartLogic cl = new cartLogic();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if ((Session["uType"].Equals("manager") || Session["uType"].Equals("ordinary")))
                {
                    {
                        Repeater1.DataSource = cl.getCart(Session["uId"].ToString());
                        Repeater1.DataBind();
                        cartSum.Text = cl.sumCart(Session["uId"].ToString());
                    }
                }
            }
            
        }

        protected void delete_Click(object sender, EventArgs e)
        {
            string proCode = ((sender as Button).CommandName).ToString();
            cl.deleteFromCart(Int32.Parse(proCode), Session["uId"].ToString());
            Repeater1.DataSource = cl.getCart(Session["uId"].ToString());
            Repeater1.DataBind();
            cartSum.Text = cl.sumCart(Session["uId"].ToString());
        }

        protected void minus_Click(object sender, EventArgs e)
        {
            RepeaterItem item = (sender as Button).NamingContainer as RepeaterItem;
            string quan = (item.FindControl("quantity") as Label).Text;
            string proCode = (item.FindControl("proCode") as Label).Text;
            string s = (item.FindControl("stock") as Label).Text;
            string label1 = (item.FindControl("Label1") as Label).Text;
            if (Int32.Parse(s) >0)
            {
                label1 = "";
                Label2.Text = "";
            }
            if (Int32.Parse(quan)>1)
            {
                cl.updateAmount(-1,Int32.Parse(proCode), Session["uId"].ToString());
            }
            else 
            {//when the amount is 1, and the user click on minus the amount become 0
                cl.deleteFromCart(Int32.Parse(proCode), Session["uId"].ToString());
            }
            cartSum.Text = cl.sumCart(Session["uId"].ToString());
            Repeater1.DataSource = cl.getCart(Session["uId"].ToString());
            Repeater1.DataBind();
        }

        protected void plus_Click(object sender, EventArgs e)
        {
            RepeaterItem item = (sender as Button).NamingContainer as RepeaterItem;
            string proCode = (item.FindControl("proCode") as Label).Text;
            string s = (item.FindControl("stock") as Label).Text;
            string label1 = (item.FindControl("Label1") as Label).Text;
            if (Int32.Parse(s) < 2)
            {
                label1 = "אין מספיק מוצרים במלאי";
                Label2.Text = "לא ניתן להמשיך לביצוע הזמנה";
            }
            else
            {
                Label2.Text = " ";
                cl.updateAmount(1, Int32.Parse(proCode), Session["uId"].ToString());
            }

            Repeater1.DataSource = cl.getCart(Session["uId"].ToString());
            Repeater1.DataBind();
            cartSum.Text = cl.sumCart(Session["uId"].ToString());

        }

        protected void checkout_Click(object sender, EventArgs e)
        {
            
            if (!Label2.Text.Equals("לא ניתן להמשיך לביצוע הזמנה"))
            {
                Response.Redirect("payment.aspx");
            }
            
            //Response.Redirect("payment.aspx?uId=" + Session["uId"].ToString());
        }
    }
}