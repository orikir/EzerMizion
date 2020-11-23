using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace EzerMizion.App_Code
{
    public class productsLogic
    {
        DAL d = new DAL();
        
        public DataSet allProducts()
        {
            string sql = " SELECT * FROM products";
            return d.excuteQuery(sql);
        }
        public void updatePro( double price, string id)
        {
            string sql = string.Format(("UPDATE products SET proPrice={0} WHERE proCode={1}"), price, id);
            d.excuteQuery(sql);
        }
        public bool newPro(string proName, bool isInStock, string quantity, string bCode, string proPhoto, string proPrice)
        {
            {
                if (!isExsist(proName, bCode))
                {
                    string sql = String.Format("INSERT INTO productss (proName,isInStock,quantity,branchCode,proPhoto,proPrice) VALUES('{0}', '{1}', '{2}', '{3}','{4}','{5}')", proName, isInStock, quantity, bCode, proPhoto, proPrice);
                    DataSet ds = d.excuteQuery(sql);
                    return true;
                }
                else
                {
                    return false;
                }
            }
        }
        public bool isExsist(string name, string bCode)
        {
            if (checkProName(name)&& checkBranchCode(bCode))
                return true;
            else
                return false;
        }
        public bool checkBranchCode(string bCode)
        {
            string sql = String.Format("SELECT branchCode FROM products WHERE branchCode ='{0}'", bCode);
            return d.excuteQuery(sql).Tables[0].Rows.Count != 0;
        }
        public bool checkProName(string name)
        {
            string sql = String.Format("SELECT proName FROM products WHERE proName ='{0}'", name);
            return d.excuteQuery(sql).Tables[0].Rows.Count != 0;
        }
    }
}