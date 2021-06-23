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
        public DataSet donHistory(string id)
        {//return all details of the donations of the current id
            string sql = String.Format("SELECT users.firstName, users.lastName, donors.donCode, donors.id, donors.donSum, donors.donDate, organizations.orgName FROM organizations INNER JOIN(users INNER JOIN donors ON users.id = donors.id) ON organizations.orgCode = donors.orgCode WHERE donors.id ='{0}'", id);
            return d.excuteQuery(sql);
        }
        public DataSet allDonations()
        {//return the donation's table
            string sql = "SELECT users.firstName, users.lastName, donors.donCode, donors.id, donors.donSum, donors.donDate, organizations.orgName FROM organizations INNER JOIN(users INNER JOIN donors ON users.id = donors.id) ON organizations.orgCode = donors.orgCode";
            return d.excuteQuery(sql);
        }
        public DataSet getByDate(DateTime s, DateTime f)
        {//מחזירה רשימת תרומות שהתבצעו בטווח התאריכים שהתקבל
            string sql = String.Format(" SELECT users.firstName, users.lastName, donors.donCode, donors.id, donors.donSum, donors.donDate, organizations.orgName FROM organizations INNER JOIN(users INNER JOIN donors ON users.id = donors.id) ON organizations.orgCode = donors.orgCode WHERE(((([donors]![donDate]))>=#{0}#) AND((([donors]![donDate]))<=#{1}#))", s, f);
            return d.excuteQuery(sql);
        }

        public bool newDonor2(string id, string orgName, double dSum, DateTime donDate, string cardNum, string cardMonth, string cardYear, string ownerId, string cardCode)
        {//creating new donor and adding it to the donor's table
            if (checkId(id))
            {
                string sql = String.Format("INSERT INTO donors (id, orgCode,donSum, donDate, cardNum, cardMonth, cardYear, ownerId, cardCode) VALUES ('{0}', '{1}', '{2}', #{3}#, '{4}', '{5}', '{6}', '{7}', '{8}') ", id, getOrgCode(orgName), dSum, donDate, cardNum, cardMonth, cardYear, ownerId, cardCode);
                d.excuteQuery(sql);
                return true;
            }
            else
                return false;
            
        }

        public bool checkId(string id)
        {//מקבלת תעודת זהות מחזירה אמת אם קיימת במערכת ושקר אחרת
            string sql = String.Format("SELECT id FROM users WHERE users.id ='{0}'", id);
            return d.excuteQuery(sql).Tables[0].Rows.Count != 0;
        }
        public string getOrgCode(string orgName)
        {//return the code branch of this branch name
            string sql = String.Format("SELECT orgCode FROM organizations WHERE orgName ='{0}'", orgName);
            DataSet ds = d.excuteQuery(sql);
            string s = ds.Tables[0].Rows[0].ItemArray.GetValue(0).ToString();
            return s;
        }
    }
}