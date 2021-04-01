using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace EzerMizion.App_Code
{
    public class donBMLogic
    {
        DAL d = new DAL();
        public DataSet allDonations()
        {//return the donation's table
            string sql = "SELECT * FROM donBoneMarrow";
            return d.excuteQuery(sql);
        }
        public DataSet byBlood(string b)
        {//return the donation's table
            string sql = String.Format("SELECT * FROM donBoneMarrow WHERE bloodType='{0}'", b) ;
            return d.excuteQuery(sql);
        }
        public bool insertNewDon(string fn, string ln, string pn, DateTime bd, string bt, string ds1, string id)
        {
            string sql = String.Format("INSERT INTO donBoneMarrow (firstName, lastName, phoneNum, birthday, bloodType, donStatus, donId )  VALUES ('{0}','{1}','{2}',#{3}#,'{4}','{5}','{6}')",fn, ln,pn,bd,bt,ds1,id);
            DataSet ds = d.excuteQuery(sql);
            return true;
        }
        public void updateStatus(string id, string status)
        {//update soldier status according to what his last status
            string sql = string.Format("UPDATE donBoneMarrow SET donBoneMarrow.donStatus = '{0}' WHERE donBoneMarrow.donId ='{1}'", status, id);
            d.excuteQuery(sql);
        }
    }
}