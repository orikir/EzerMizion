﻿using System;
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
            string sql = String.Format("SELECT * FROM donorsWHERE donors.id ='{0}'", id);
            return d.excuteQuery(sql);
        }
        public DataSet allDonations()
        {//return the donation's table
            string sql = " SELECT donors.*, users.firstName, users.lastName FROM users INNER JOIN donors ON users.id = donors.id";
            return d.excuteQuery(sql);
        }
        /*public DataSet allDonAccDate(DateTime donDate)
        {
            string sql = String.Format(" SELECT * FROM donors WERE donDate ='{0}'", donDate);
            return d.excuteQuery(sql);
        }*/
    }
}