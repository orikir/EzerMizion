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
                    string pCode = Request.QueryString["pCode"];
                    if (pCode != null)
                    {
                        Repeater1.DataSource = pl.oneProduct(Int32.Parse(pCode));
                        Repeater1.DataBind();
                    }
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
            RepeaterItem item = (sender as ListBox).NamingContainer as RepeaterItem;
            DropDownList d = item.FindControl("DDL") as DropDownList;
            ListBox q = item.FindControl("quan") as ListBox;
            if (!IsCallback && (!IsPostBack))
            {
                for (int a = 1; a <= 30; a++)
                {
                    q.Items.Insert(a, a.ToString());
                }
            }
            if (q.SelectedItem != null)
            {
                string pPrice = (item.FindControl("pPrice") as Label).Text;
                Label totalP = item.FindControl("totalP") as Label;
                if (q.SelectedItem.Text.Equals(" בחר כמות"))
                {
                    totalP.Text = "";
                }
                else
                {
                    if (totalP != null)
                    {
                        totalP.Text = (pl.pTotal(Double.Parse(pPrice), Int32.Parse(q.SelectedValue))).ToString();
                    }
                }
            }
        }
    }
}