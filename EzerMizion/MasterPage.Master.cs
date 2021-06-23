using EzerMizion.App_Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EzerMizion
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        usersLogic ul = new usersLogic();
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Session["uName"].ToString() + " שלום ";
            if (Session["uId"]!=null && ul.isManager(Session["uId"].ToString()))
            {
                Button1.Visible = true;
                if (Session["uType"] == "ordinary")
                {
                    Button1.Text = "החלף פרופיל למנהל";
                }
                else
                {
                        Button1.Text = "החלף פרופיל למשתמש רגיל";
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Session["uType"] == "ordinary")
            {
                Session["uType"] = "manager";
            }
            else
                Session["uType"] = "ordinary";
            Response.Redirect("HomeP.aspx");
        }
    }
}