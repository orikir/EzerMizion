using EzerMizion.App_Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EzerMizion
{

    public partial class payment : System.Web.UI.Page
    {
        ordersLogic ol = new ordersLogic();
        productsLogic pl = new productsLogic();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack && (Session["uType"].Equals("ordinary")))
            {
                for (int a = 1; a <= 12; a++)
                {
                    Month.Items.Insert(a, a.ToString());
                }
                for (int a = DateTime.Now.Year; a <= 2030; a++)
                {
                    Year.Items.Add(new ListItem(a.ToString(), a.ToString()));
                }

            }
            else
            {
                if (!(Session["uType"].Equals("ordinary")))
                    Response.Redirect("HomeP.aspx");
            }
        }
        protected void Year_SelectedIndexChanged(object sender, EventArgs e)
        {
            Year.Text = Year.SelectedValue;
        }

        protected void Month_SelectedIndexChanged(object sender, EventArgs e)
        {
            Month.Text = Month.SelectedValue;
        }

        protected void submit_Click(object sender, EventArgs e)
        { 
            cartLogic cl = new cartLogic();
            if(pl.getDifference(Session["uId"].ToString()))
            {
                ol.toOrder(Session["uId"].ToString(), cardNum.Text, Month.Text, Year.Text, ownerId.Text, cardCvv.Text, DateTime.Now);
                ol.toOP(Session["uId"].ToString());
                pl.updateAmount(Session["uId"].ToString());
                cl.deleteAllCart(Session["uId"].ToString());
                Label5.Text = "ההזמנה בוצעה בהצלחה";
            }
            else
            {
                Label5.Text = "לא כל הפריטים במלאי-לא ניתן לבצע הזמנה";
            }
        }
    }
}