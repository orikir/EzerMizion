using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace EzerMizion.App_Code
{
    public class usersLogic
    {
        DAL dal = new DAL();

        public bool newUser(string id, string firstName, string LastName, DateTime birthDay, string phoneNum ,string userName)
        {
            {
               //if(!checkId(id))
               //{
                    string sql = String.Format("INSERT INTO users (id, firstName, LastName, birthDay, phoneNum, usName) VALUES('{0}', '{1}', '{2}', '{3}','{4}','{5}')", id, firstName, LastName, birthDay, phoneNum, userName);
                    DataSet ds = dal.excuteQuery(sql);
                    return true;
               // }
              // else
                //{
                  //  return false;
              // }
                

            } 
        }
        public bool checkId (string id)
        {
            string sql = String.Format("SELECT id FROM users WHERE users.id ='{0}'", id);
            if (dal.excuteQuery(sql)==null )
                return false;
            else
                return true;
        }
    }
}