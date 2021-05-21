using EzerMizion.App_Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EzerMizion
{
    public partial class donHistory : System.Web.UI.Page
    {
        donorsLogic dl = new donorsLogic();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Session["uType"].Equals("ordinary"))
                Response.Redirect("HomeP.aspx");
            GridView2.DataSource = dl.donHistory(Session["uId"].ToString());
            GridView2.DataBind();
        }


        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}