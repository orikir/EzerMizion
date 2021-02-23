using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EzerMizion
{
    public partial class addDonPInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
            }
        }
        protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            orgName.Text = orgName.SelectedValue;
        }
        protected void continue_Click(object sender, EventArgs e)
        {
            Response.Redirect("addDonPInfo.aspx");
        }
    }
}