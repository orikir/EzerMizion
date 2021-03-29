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
        public int numOfSol()
        {//return the number of soldiers
            string sql = String.Format("SELECT soldiers.id FROM soldiers ");
            return (d.excuteQuery(sql).Tables[0].Rows.Count);
        }
        public DateTime getEnlistmentDate(string id)
        {//return the enlistment Date of a soldier
            string sql = String.Format("SELECT soldiers.enlistmentDate FROM soldiers WHERE soldiers.id ='{0}'", id);
            return DateTime.Parse(d.excuteQuery(sql).Tables[0].Rows[0].ItemArray.GetValue(0).ToString());
        }
        public string getId(int i)
        {//return id of a soldier
            string sql = String.Format("SELECT soldiers.id FROM soldiers");
            return (d.excuteQuery(sql).Tables[0].Rows[i].ItemArray.GetValue(0).ToString());
        }

    }
}