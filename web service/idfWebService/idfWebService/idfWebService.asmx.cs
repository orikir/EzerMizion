using idfWebService.App_Code;
using System;
using System.Collections.Generic;
using System.Data;
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
        public DataSet selectSol(string id, DateTime newD)
        {//select fit soldier(healthe and new)
            DateTime d = sl.getEnlistmentDate(id);
            if (d > newD)
            {
                if (dl.isHealthy(id))
                {
                    return sl.soldierDetails(id);
                }
                else 
                    return null;
            }
            return null;
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
        [WebMethod]
        public int numOfSol()
        {//return the number of soldiers
            return sl.numOfSol();
        }
        [WebMethod]
        public string getId(int i)
        {//return id of a soldier
            string id= sl.getId(i);
            return id;
        }
        [WebMethod]
        public string getStatus(string id)
        {//return donation status of the soldier with the current id
            string status = ssl.getStatus(id).Tables[0].Rows[0].ItemArray.GetValue(0).ToString();
            return status;
        }

    }
}
