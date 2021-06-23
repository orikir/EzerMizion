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
            try
            {
                if (DateTime.Parse(birthDay.Text) >= (DateTime.Now))
                    message.Text = "תאריך לא חוקי";
                else
                {
                    message.Text = "";
                    if (!(ul.newUser(id.Text, first_name.Text, last_name.Text, DateTime.Parse(birthDay.Text), phone_num.Text, user_name.Text)))
                        alarm_lable.Text = "המשתמש קיים";
                    else
                    {
                        alarm_lable.Text = "הרישום בוצע בצלחה!";
                        Session["uId"] = id.Text;
                        Session["uName"] = ul.getName(id.Text);
                        if (ul.isManager(id.Text))
                        {
                            Session["uType"] = "manager";
                            Response.Redirect("HomeP.aspx");
                        }
                        else
                        {
                            Session["uType"] = "ordinary";
                            Response.Redirect("HomeP.aspx");
                        }
                    }
                }
            }
            catch
            {
                alarm_lable.Text = "שגיאה-נסו שנית";
            }
            
        }
    }
}