using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace EzerMizion.App_Code
{
    public class ordersLogic
    {
        DAL d = new DAL();
        public bool toOrder(string userId, string cardNum, string cardMonth, string cardYear, string ownerId, string cardCode, DateTime orderDate)
        {//מכניסה את נתוני ההזמנה לטבלת הזמנות
            string sql = String.Format("INSERT INTO orders (userId,orderDate, cardNum, cardMonth, cardYear, ownerId, cardCode) VALUES('{0}', #{1}#, '{2}', '{3}', '{4}', '{5}', '{6}')", userId, orderDate, cardNum, cardMonth, cardYear, ownerId, cardCode);
            DataSet ds = d.excuteQuery(sql);
            return true;
        }
        public bool toOP(string userId)
        {//מכניסה את פירוט מוצרי ההזמנה לטבלת מוצרים-הזמנות
            string sql1 = String.Format("SELECT  MAX(orders.orderId) FROM orders WHERE orders.userId ='{0}'", userId);
            DataSet ds1 = d.excuteQuery(sql1);//שמירת קוד ההזמנה שהתבצעה מאוחר ביותר
            int x = Int32.Parse(ds1.Tables[0].Rows[0][0].ToString());
            string sql = String.Format("INSERT INTO ordersProducts ( orderId, proCode, amount )  SELECT {0}, cart.proCode, cart.amount FROM cart  WHERE cart.userId ='{1}'", x , userId);
            DataSet ds = d.excuteQuery(sql);
            return true;
        }
    }
}