using EzerMizion.App_Code;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace idfWebService.App_Code
{
    public class soldiersLogic
    {
        DAL d = new DAL();
        public DataSet soldierDetails(string id)
        {//return details of the soldier of the current id
            string sql = String.Format("SELECT soldiers.firstName, soldiers.lastName, soldiers.phoneNum, soldiers.birthday, soldiers.bloodType FROM soldiers WHERE soldiers.id ='{0}'", id);
            return d.excuteQuery(sql);
        }
        
    }
}