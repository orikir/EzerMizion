using EzerMizion.App_Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EzerMizion
{
    public partial class addDonSumaspx : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void bdika_Click(object sender, EventArgs e)
        {
            dSum.Text = (Double.Parse(dSum.Text) + 180).ToString();

        }

        protected void lego_Click(object sender, EventArgs e)
        {
            dSum.Text = (Double.Parse(dSum.Text) + 250).ToString();
        }

        protected void wish_Click(object sender, EventArgs e)
        {
            dSum.Text = (Double.Parse(dSum.Text) + 540).ToString();
        }
        protected void minus_Click(object sender, EventArgs e)
        {
            double sum = Double.Parse(dSum.Text);
            if (sum % 10 != 0)
                sum = 0;
            else
                sum /= 2;
            dSum.Text = (sum).ToString();
        }

        protected void plus_Click(object sender, EventArgs e)
        {
            dSum.Text = (Double.Parse(dSum.Text) * 2).ToString();
        }
        protected void submit_Click(object sender, EventArgs e)
        {
            donorsLogic dl = new donorsLogic();
            {/*
                if (dl.newDonor(id.Text, orgName.Text, double.Parse(dSum.Text), DateTime.Today))
                    alarm_lable.Text = "התרומה התקבלה בהצלחה";
                else
                    alarm_lable.Text = "יש להתחבר לפני ביצוע תרומה";
            }*/
            }
        }

        protected void continue_Click(object sender, EventArgs e)
        {
            Response.Redirect("addDonPInfo.aspx?dSum"+ dSum.Text);
        }
    }
}