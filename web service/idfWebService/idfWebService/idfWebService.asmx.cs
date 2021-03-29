﻿using idfWebService.App_Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace idfWebService
{
    /// <summary>
    /// Summary description for idfWebService
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class idfWebService : System.Web.Services.WebService
    {
        diseasesLogic dl = new diseasesLogic();
        solStatusLogic ssl = new solStatusLogic();
        soldiersLogic sl = new soldiersLogic();
        [WebMethod]
        public string HelloWorld()
        {
            return "Hello World";
        }
        [WebMethod]
        public void selectSol(string id, DateTime newD)
        {//select fit soldier(healthe and new)
            DateTime d = sl.getEnlistmentDate(id);
            if (d > newD)
                if (dl.isHealthy(id))
                {
                    sl.soldierDetails(id);
                }
        }
        [WebMethod]
        public void updateSol(string id)
        {//update soldier status
            string status = ssl.getStatus(id).Tables[0].Rows[0].ItemArray.GetValue(0).ToString();
            if (status.Equals("תורם פוטנציאלי"))
            {
                ssl.updateStatus(id, "נמצא מתאים");
            }
            else
                ssl.updateStatus(id, "תרם");
        }
    }
}
