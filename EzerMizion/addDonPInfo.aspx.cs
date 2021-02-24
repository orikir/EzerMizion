using EzerMizion.App_Code;
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
            
                if (!IsPostBack )
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
                {/*
                    if (!(Session["uType"].Equals("ordinary")))
                        Response.Redirect("HomeP.aspx");
                */}
            
        }
        protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            orgName.Text = orgName.SelectedValue;
        }
        protected void continue_Click(object sender, EventArgs e)
        {
            string dSum = Request.QueryString["dSum"];
            donorsLogic dl = new donorsLogic();
            {
                if (dl.newDonor(id.Text, orgName.Text, double.Parse(dSum), DateTime.Today))
                    alarm_lable.Text = "התרומה התקבלה בהצלחה";
                else
                    alarm_lable.Text = "יש להתחבר לפני ביצוע תרומה";
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
    }
}