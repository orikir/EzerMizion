using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EzerMizion
{
    public partial class donChart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!(Session["uType"].Equals("manager") || Session["uType"].Equals("ordinary")))
                Response.Redirect("HomeP.aspx");
            Chart1.ChartAreas[0].AxisY.Minimum = 0;
            Chart1.ChartAreas[0].AxisY.Maximum = 5000;
            //Chart1.ChartAreas[0].AxisX.Minimum = 0;
            //Chart1.ChartAreas[0].AxisX.Maximum = 10;

        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void Chart1_Load(object sender, EventArgs e)
        {

        }
    }
}