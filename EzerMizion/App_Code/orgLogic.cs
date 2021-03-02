using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace EzerMizion.App_Code
{

    public class orgLogic
    {
        DAL d = new DAL();
        public DataSet getOrgsName()
        {
            string sql = String.Format("SELECT orgName FROM organizations");
            DataSet ds = d.excuteQuery(sql);
            return ds;
        }
    }
}