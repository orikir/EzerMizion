using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace EzerMizion.App_Code
{
    public class cartLogic
    {
        DAL d = new DAL();
        public bool isInCart(int proCode, string userId)
        {//check if is already exist
            string sql = String.Format("SELECT cartCode FROM cart WHERE proCode={0} AND userId='{1}'", proCode, userId);
            return d.excuteQuery(sql).Tables[0].Rows.Count != 0;
        }
        public bool intoCart(int proCode, string userId)
        {//מכניסה את המוצר הנבחר ויוצרת שורה חדשה בטבלת עגלה
            if (!isInCart(proCode, userId))
            {//בדיקה האם המוצר קיים
                string sql = String.Format("INSERT INTO cart (userId,proCode, amount) VALUES('{0}', {1}, {2})", userId, proCode, 1);
                DataSet ds = d.excuteQuery(sql);
                return true;
            }
            else
            {//אם המוצר קיים, נוסיף לכמות הנוכחית
                updateAmount(1, proCode, userId);
                return true;
            }

        }
        public void deleteFromCart(int proCode, string userId)
        {//delete product
            string sql = string.Format(("DELETE * FROM cart WHERE proCode={0} AND userId='{1}'"), proCode, userId);
            d.excuteQuery(sql);
        }
        public void deleteAllCart( string userId)
        {//delete product
            string sql = string.Format(("DELETE * FROM cart WHERE  userId='{0}'"), userId);
            d.excuteQuery(sql);
        }
        public DataSet getCart(string userId)
        {//return the cart of the current user
            string sql = String.Format("SELECT cart.amount, cart.proCode , products.proName, products.proPhoto, products.proPrice, cart.amount*products.proPrice AS total FROM products INNER JOIN cart ON products.proCode=cart.proCode WHERE cart.userId ='{0}'", userId);
            return d.excuteQuery(sql);
        }
        public string sumCart(string userId)
        {//return the cart of the current user
            string sql = String.Format("SELECT Sum(cart.amount*products.proPrice) AS total FROM products INNER JOIN cart ON products.proCode=cart.proCode WHERE cart.userId ='{0}'", userId);
            return d.excuteQuery(sql).Tables[0].Rows[0].ItemArray.GetValue(0).ToString();
        }
        public void updateAmount(int pOm, int proCode, string uId)
        {//מעדכנת את כמות מוצר ספציפי בהתאם לערך אותו היא מקבלת
            string sql = string.Format(("UPDATE cart SET cart.amount=cart.amount+{0} WHERE cart.proCode={1} AND cart.userId='{2}'"), pOm, proCode, uId);
            d.excuteQuery(sql);
        }
    }
}