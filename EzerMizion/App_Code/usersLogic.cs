using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EzerMizion.App_Code
{
    public class usersLogic
    {
        DAL dal = new DAL();

        public void newUser(string id, string firstName, string LastName, DateTime birthDay, string phoneNum ,string userName)
        {
            {
                string sql = "INSERT INTO users(id, firstName, LastName, birthDay, phoneNum, userName ) VALUES('" + id + "','" + firstName + "','" + LastName + "','" + birthDay + "','" + phoneNum + "','" + userName + "'";
                string sql1 = String.Format("INSERT INTO users (id, firstName, LastName, birthDay, phoneNum, userName) VALUES('{0}', '{0}', '{0}', '{0}','{0}','{0}') ");
                dal.excuteQuery(sql);
            } 
        }
    }
}