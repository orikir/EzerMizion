using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace EzerMizion
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            Application["countVisits"] = 0;
        }

        protected void Session_Start(object sender, EventArgs e)
        {
            Application.Lock();
            {
                Application["countVisits"] = (int)(Application["countVisits"]) + 1;
                Session["uId"] = null;
                Session["uName"] = "אורח";
                Session["uType"] = "no";
            }
            Application.UnLock();
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {
            Session["uId"] = null;
            Session["uType"] = "no";
            Session["uName"] = "אורח";
        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}