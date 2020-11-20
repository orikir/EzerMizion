using EzerMizion.App_Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EzerMizion
{
    public partial class DonationsList : System.Web.UI.Page
    {
        donorsLogic dl = new donorsLogic();
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((Session["uType"].Equals("manager")))
            {
                GridView1.DataSource = dl.allDonations();
                GridView1.DataBind();
            }
            else
                Response.Redirect("HomeP.aspx");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}