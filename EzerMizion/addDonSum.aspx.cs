using EzerMizion.App_Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EzerMizion
{
    public partial class addDonSum : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!(Session["uType"].Equals("manager") || Session["uType"].Equals("ordinary")))
                Response.Redirect("HomeP.aspx");
        }

        protected void bdika_Click(object sender, EventArgs e)
        {
            if (!dSum.Text.Equals(""))
            {
                dSum.Text = (Double.Parse(dSum.Text) + 180).ToString();
            }
            else
                dSum.Text = "180";


        }

        protected void lego_Click(object sender, EventArgs e)
        {
            if (!dSum.Text.Equals(""))
            {
                dSum.Text = (Double.Parse(dSum.Text) + 250).ToString();
            }
            else
                dSum.Text = "250";
            
        }

        protected void wish_Click(object sender, EventArgs e)
        {
            if (!dSum.Text.Equals( ""))
            {
                dSum.Text = (Double.Parse(dSum.Text) + 540).ToString();
            }
            else
                dSum.Text = "540";
            
        }
        protected void minus_Click(object sender, EventArgs e)
        {
            if (dSum.Text.Equals(""))
            {
                dSum.Text = "0";
            }
            double sum = Double.Parse(dSum.Text);
            if (sum % 10 != 0 )
                sum = 0;
            else
                sum /= 2;
            dSum.Text = (sum).ToString();
        }
        protected void plus_Click(object sender, EventArgs e)
        {
            if (dSum.Text.Equals(""))
            {
                dSum.Text = "0";
            }
            dSum.Text = (Double.Parse(dSum.Text) * 2).ToString();
        }
        protected void continue_Click(object sender, EventArgs e)
        {
            if (!dSum.Text.Equals("0"))
                Response.Redirect("addDonPInfo.aspx?dSum=" + dSum.Text);
        }
    }
}