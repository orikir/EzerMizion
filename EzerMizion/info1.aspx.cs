using EzerMizion.App_Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EzerMizion
{
    public partial class info1 : System.Web.UI.Page
    {
        donBMLogic dbm = new donBMLogic();
        protected void Page_Load(object sender, EventArgs e)
        {
            Label4.Text =dbm.donated().ToString();
            Label5.Text = dbm.potential().ToString();
        }
    }
}