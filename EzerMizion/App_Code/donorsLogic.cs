using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace EzerMizion.App_Code
{
    public class donorsLogic

    {
        DAL d = new DAL();
        public DataSet donHistory (string id)
        {
            string sql = String.Format("SELECT * FROM donors WHERE donors.id ='{0}'", id);
            return d.excuteQuery(sql);
        }
        public DataSet allDonations()
        {
            string sql = " SELECT * FROM donors";
            return d.excuteQuery(sql);
        }
    }
}