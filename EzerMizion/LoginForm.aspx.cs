using EzerMizion.App_Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EzerMizion
{
    public partial class LoginForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void loggin_Click(object sender, EventArgs e)
        {
            usersLogic ul = new usersLogic();
            if (!(ul.isUser(id.Text, us_name.Text)))
               Label1.Text = "user name or id are wrong";
            else
                Label1.Text = "you have successfully loggin";
        }
    }
}