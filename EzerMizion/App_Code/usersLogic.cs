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

        public bool newUser(string id, string firstName, string LastName, DateTime birthDay, string phoneNum, string userName)
        {
            {
                if (!checkId(id) && !checkUserName(userName))//במידה ושם המשתמש ותעודת הזהות לא תפוסים
                {
                    string sql = String.Format("INSERT INTO users (id, firstName, LastName, birthDay, phoneNum, usName) VALUES('{0}', '{1}', '{2}', '{3}','{4}','{5}')", id, firstName, LastName, birthDay, phoneNum, userName);
                    DataSet ds = dal.excuteQuery(sql);
                    return true;
                }
                else
                {
                    return false;
                }
            }
        }
        public bool isUser(string id, string name)
        {//השיטה תבדוק האם המשתמש שמור במערכת
            string sql = String.Format("SELECT usName FROM users WHERE users.usName ='{0}' AND users.id='{1}'", name, id);//בדיקה האם שם המשתמש תואם את תעודת הזהות
            return dal.excuteQuery(sql).Tables[0].Rows.Count != 0;
        }
        public bool isManager(string id)
        {//מקבלת תעודת זהות מחזירה אמת אם המשתמש מנהל ושקר אחרת
            string sql = String.Format("SELECT isManager FROM users WHERE(((users.isManager) = True) AND((users.id) ='{0}'))", id);
            return dal.excuteQuery(sql).Tables[0].Rows.Count != 0;
        }
        public bool checkId(string id)
        {//מקבלת תעודת זהות מחזירה אמת אם קיימת במערכת ושקר אחרת
            string sql = String.Format("SELECT id FROM users WHERE users.id ='{0}'", id);
            return dal.excuteQuery(sql).Tables[0].Rows.Count != 0;
        }
        public bool checkUserName(string name)
        {//מקבלת שם משתמש מחזירה אמת אם קיים במערכת ושקר אחרת
            string sql = String.Format("SELECT usName FROM users WHERE users.usName ='{0}' ", name);
            return dal.excuteQuery(sql).Tables[0].Rows.Count != 0;
        }
    }
}