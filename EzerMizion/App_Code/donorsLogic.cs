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
            string sql = String.Format("SELECT users.firstName, users.lastName, donors.donCode, donors.id, donors.Sum, donors.donDate, organizations.orgName FROM organizations INNER JOIN(users INNER JOIN donors ON users.id = donors.id) ON organizations.orgCode = donors.orgCode WHERE donors.id ='{0}'", id);
            return d.excuteQuery(sql);
        }
        public DataSet allDonations()
        {//return the donation's table
            string sql = "SELECT users.firstName, users.lastName, donors.donCode, donors.id, donors.Sum, donors.donDate, organizations.orgName FROM organizations INNER JOIN(users INNER JOIN donors ON users.id = donors.id) ON organizations.orgCode = donors.orgCode";
            return d.excuteQuery(sql);
        }
        /*public DataSet allDonAccDate(DateTime donDate)
        {
            string sql = String.Format(" SELECT * FROM donors WERE donDate ='{0}'", donDate);
            return d.excuteQuery(sql);
        }*/
    }
}