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
                Chart1.ChartAreas[0].AxisY.Minimum = 0;
                Chart1.ChartAreas[0].AxisY.Maximum = 7000;
                if (!IsPostBack)
                {
                    for (int a = 1; a <= 12; a++)
                    {
                        Month.Items.Insert(a, a.ToString());
                    }
                    for (int a =1990; a<= DateTime.Now.Year; a++)
                    {
                        Year.Items.Add(new ListItem(a.ToString(), a.ToString()));
                    }

                }

            }
            else
                Response.Redirect("HomeP.aspx");
        }
        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void Chart1_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }

        protected void donCh_Click(object sender, EventArgs e)
        {
            Response.Redirect("donChart.aspx");
        }

        protected void search(object sender, EventArgs e)
        {
            if(!Month.Text.Equals("בחר חודש ")&& !Year.Text.Equals(" בחר שנה"))
            {
                GridView2.DataSource = dl.getByMonthAndYear((Month.Text), Year.Text);
                GridView2.DataBind();
            }
            else
            {
                GridView2.DataSource = dl.getByMonthAndYear("0", "0");
                GridView2.DataBind();
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

        /*protected void click_Click(object sender, EventArgs e)
        {
            GridView1.DataSource = dl.allDonAccDate(DateTime.Parse(text1.Text));
            GridView1.DataBind();
        }*/
    }
}