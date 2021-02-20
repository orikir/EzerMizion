using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EzerMizion
{
    //cartLogic cl = new cartLogic();
    public partial class payment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
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
        }
        protected void Year_SelectedIndexChanged(object sender, EventArgs e)
        {
            Year.Text = Year.SelectedValue;
        }

        protected void Month_SelectedIndexChanged(object sender, EventArgs e)
        {
            Month.Text = Month.SelectedValue;
        }

        protected void submit_Click(object sender, EventArgs e)
        {

        }
    }
}