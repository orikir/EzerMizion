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
            string sql = "SELECT donBoneMarrow.donCode, donBoneMarrow.donId, donStatus.donStatus, donBoneMarrow.bloodType, donBoneMarrow.donDate, donBoneMarrow.firstName, donBoneMarrow.lastName, donBoneMarrow.phoneNum, donBoneMarrow.birthday FROM donStatus INNER JOIN donBoneMarrow ON donStatus.statusCode = donBoneMarrow.donStatus";
            return d.excuteQuery(sql);
        }
        public DataSet byBlood(string b)
        {//return the donation's table
            string sql = String.Format("SELECT * FROM donBoneMarrow WHERE bloodType='{0}'", b) ;
            return d.excuteQuery(sql);
        }
        public bool insertNewDon(string fn, string ln, string pn, DateTime bd, string bt, int ds1, string id)
        {//return true after the new donor has added
            string sql = String.Format("INSERT INTO donBoneMarrow (firstName, lastName, phoneNum, birthday, bloodType, donStatus, donId )  VALUES ('{0}','{1}','{2}',#{3}#,'{4}',{5},'{6}')",fn, ln,pn,bd,bt,ds1,id);
            DataSet ds = d.excuteQuery(sql);
            return true;
        }
        public void updateStatus(string id, int status)
        {//update soldier status according to what his last status
            string sql = string.Format("UPDATE donBoneMarrow SET  donBoneMarrow.donStatus = {0}, donBoneMarrow.donDate=#{1}# WHERE donBoneMarrow.donId ='{2}'", status,DateTime.Today, id);
            d.excuteQuery(sql);
        }
        public bool isIN(string id)
        {//return true if he is bone marrow donor
            string sql = String.Format("SELECT donId FROM donBoneMarrow WHERE donId='{0}'", id);
            return d.excuteQuery(sql).Tables[0].Rows.Count != 0;

        }
        public int donated()
        {//return number of donors
            string sql = String.Format("SELECT donId FROM donBoneMarrow WHERE donStatus={0}", int.Parse("3"));
            return d.excuteQuery(sql).Tables[0].Rows.Count;

        }
        public int potential()
        {//return number of potential donors
            string sql = String.Format("SELECT donId FROM donBoneMarrow WHERE donStatus={0} OR donStatus={1}" , int.Parse("1"), int.Parse("2"));
            return d.excuteQuery(sql).Tables[0].Rows.Count ;

        }

    }
}