using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EzerMizion
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["uType"].Equals("manager"))
            {
                Label3.Text = "רשימת תרומות";
                Label4.Text = "רשימת מוצרים";
                Label2.Visible = false;
                Label5.Visible = false;
                Label6.Visible = false;

            }
            if (Session["uType"].Equals("ordinary"))
            {
                Label2.Text = "השכרת מוצרים";
                Label5.Text = "היסטורית תרומות";
                Label6.Text = "עגלת קניות";
            }
        }
    }
}