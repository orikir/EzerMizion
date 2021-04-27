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
        public DataSet selectSol(string id, bool b)
        {//select fit soldier(healthe and new)
            if (!b)//אם החייל עוד לא במאגר
            {
                if (dl.isHealthy(id))
                {
                    return sl.soldierDetails(id);
                }
                else
                {
                    ssl.updateStatus(id, 4);//סימון החייל בצה"ל כלא כשיר
                    return null;//אין צורך בהוספתו למאגר
                }
                    
            }
            return null;
        }

        [WebMethod]
        public void updateSol(string id, int st)
        {//update soldier status
            ssl.updateStatus(id, st);

        }
        [WebMethod]
        public int numOfSol()
        {//return the number of soldiers
            return sl.numOfSol();
        }
        [WebMethod]
        public string getId(int i)
        {//return id of a soldier
            string id = sl.getId(i);
            return id;
        }
        [WebMethod]
        public int getStatus(string id)
        {//return donation status of the soldier with the current id
            int status = Int32.Parse( ssl.getStatus(id).Tables[0].Rows[0].ItemArray.GetValue(0).ToString());
            return status;
        }

    }
}
