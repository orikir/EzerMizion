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
            RepeaterItem item = (sender as Button).NamingContainer as RepeaterItem;
            string s = (item.FindControl("stock") as Label).Text;
            string proCode = ((sender as Button).CommandName).ToString();
            if (Int32.Parse(s) > -1)
            {
                Label2.Text = " ";
            }
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
            Label lab = (item.FindControl("Label1") as Label);
            if (Int32.Parse(s) > 0)
            {
                Label2.Text = " ";
                lab.Text = "";
            }
            if (Int32.Parse(quan) > 1)
            {
                cl.updateAmount(-1, Int32.Parse(proCode), Session["uId"].ToString());
            }
            else
            {//when the amount is 1, and the user click on minus the amount become 0
                cl.deleteFromCart(Int32.Parse(proCode), Session["uId"].ToString());
                Label2.Text = " ";
                lab.Text = " ";
            }
            cartSum.Text = cl.sumCart(Session["uId"].ToString());
            Repeater1.DataSource = cl.getCart(Session["uId"].ToString());
            Repeater1.DataBind();
        }

        protected void plus_Click(object sender, EventArgs e)
        {
            RepeaterItem item = (sender as Button).NamingContainer as RepeaterItem;
            string proCode = (item.FindControl("proCode") as Label).Text;
            string proName = (item.FindControl("proName") as Label).Text;
            string s = (item.FindControl("stock") as Label).Text;
            Label lab = (item.FindControl("Label1") as Label);
            if (Int32.Parse(s) <= 1)
            {
                Label2.Text = " אין מספיק במלאי מסוג המוצר: " + proName + " -על מנת להמשיך הסר/הורד מכמות המוצר ";
                lab.Text = "אין במלאי";

            }
            else
            {
                Label2.Text = " ";
                lab.Text = "";
                cl.updateAmount(1, Int32.Parse(proCode), Session["uId"].ToString());
            }

            Repeater1.DataSource = cl.getCart(Session["uId"].ToString());
            Repeater1.DataBind();
            cartSum.Text = cl.sumCart(Session["uId"].ToString());

        }

        protected void checkout_Click(object sender, EventArgs e)
        {

            if (cartSum.Text != null && checkStock())
            {
                Response.Redirect("payment.aspx");
            }

        }

        public bool checkStock()
        {
            bool tf1 = true;
            foreach (RepeaterItem item in Repeater1.Items)
            {
                string proCode = (item.FindControl("proCode") as Label).Text;
                string s = (item.FindControl("stock") as Label).Text;
                Label lab = (item.FindControl("Label1") as Label);
                if (Int32.Parse(s) <= 1)
                {
                    lab.Text = "אין במלאי";
                    tf1 = false;
                }

            }
            return tf1;

        }

    }
}
