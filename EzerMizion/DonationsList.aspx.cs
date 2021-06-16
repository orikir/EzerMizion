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
        protected void byDate(object sender, EventArgs e)
        {//הצגת תרומות לפי טווח  תאריכים
            if (TextBox1.Text!=null && TextBox2.Text!=null)
            {
                if (DateTime.Parse(TextBox2.Text) >= (DateTime.Now)|| DateTime.Parse(TextBox1.Text) > DateTime.Parse(TextBox2.Text))
                    Label2.Text = "טווח התאריכים לא חוקי";
                else
                {
                    Label2.Text = "";
                    GridView1.DataSource = dl.getByDate((DateTime.Parse(TextBox1.Text)), (DateTime.Parse(TextBox2.Text)));
                    GridView1.DataBind();
                }
                
            }
        }
    }
}