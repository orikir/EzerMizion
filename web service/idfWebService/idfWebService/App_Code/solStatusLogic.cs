using EzerMizion.App_Code;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace idfWebService.App_Code
{
    public class solStatusLogic
    {
        DAL d = new DAL();
        public DataSet getStatus(string id)
        {//return donation status of the soldier with the current id
            string sql = String.Format("SELECT solStatus.donStatus FROM solStatus WHERE solStatus.id ='{0}'", id);
            return d.excuteQuery(sql);
        }
        public void updateStatus(string id, string status)
        {//update soldier status according to what his last status
            string sql = string.Format("UPDATE solStatus SET solStatus.donStatus = '{0}' WHERE solStatus.id ='{1}'", status, id);
            d.excuteQuery(sql);
        }
    }
}