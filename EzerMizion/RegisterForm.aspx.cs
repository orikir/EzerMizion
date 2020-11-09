using EzerMizion.App_Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EzerMizion
{
    public partial class RegisterForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            usersLogic ul = new usersLogic();
           if(!(ul.newUser(id.Text, first_name.Text, last_name.Text, DateTime.Parse(birthDay.Text), phone_num.Text, user_name.Text)))
                Console.WriteLine("this id is unavailable");

        }
    }
}