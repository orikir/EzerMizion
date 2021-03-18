using EzerMizion.App_Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace idfWebService.App_Code
{
    public class diseasesLogic
    {
        DAL d = new DAL();
        public bool isSick(string id)
        {//return true if the soldier has diseases which make him unable to donate
            string sql = String.Format("SELECT dAs.solId FROM dAs WHERE dAs.solId ='{0}'", id);
            return (d.excuteQuery(sql).Tables[0].Rows.Count!= 0);
        }
    }
}