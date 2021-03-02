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
            string sql = String.Format("INSERT INTO ordersProducts ( proCode, amount, orderId ) SELECT cart.proCode, cart.amount, MAX(orders.orderId) FROM cart, orders WHERE cart.userId=orders.userId AND cart.userId ='{0}'", userId);
            DataSet ds = d.excuteQuery(sql);
            return true;
        }
    }
}