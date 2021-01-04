using EzerMizion.App_Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EzerMizion
{
    public partial class AddDonor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!(Session["uType"].Equals("ordinary")))
                Response.Redirect("HomeP.aspx");
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            donorsLogic dl = new donorsLogic();
            {
                if (dl.newDonor(id.Text, orgName.Text, double.Parse(dSum.Text), DateTime.Today))
                    alarm_lable.Text = "התרומה התקבלה בהצלחה";
                else
                    alarm_lable.Text = "יש להתחבר לפני ביצוע תרומה";
            }
        }

        protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            orgName.Text = orgName.SelectedValue;
        }
    }
}