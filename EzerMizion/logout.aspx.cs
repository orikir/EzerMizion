using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EzerMizion
{
    public partial class logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {//מחיקת ערכי המשתנים הגלובליים לשם התנתקות
            Session.Abandon();
            Response.Redirect("HomeP.aspx");
        }
    }
}