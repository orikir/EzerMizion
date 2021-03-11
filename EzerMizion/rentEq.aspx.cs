using EzerMizion.App_Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EzerMizion
{
    public partial class rentEq : System.Web.UI.Page
    {
        productsLogic pl = new productsLogic();
        cartLogic cl = new cartLogic();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if ((Session["uType"].Equals("manager") || Session["uType"].Equals("ordinary")))
                {
                    Repeater1.DataSource = pl.allProducts();
                    Repeater1.DataBind();
                }
                else
                    Response.Redirect("HomeP.aspx");

            }

        }
        protected void addTcart_Click(object sender, EventArgs e)
        {
            string proCode = ((sender as Button).CommandName).ToString();
            cl.intoCart( Int32.Parse(proCode), Session["uId"].ToString());
            //Response.Redirect("shoppingCart.aspx?pCode=" + proCode);
            //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('המוצר נוסף בהצלחה!')", true);
            

        }
    }
}