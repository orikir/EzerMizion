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
        public void updatePro(double price, string id)
        {
            string sql = string.Format(("UPDATE products SET proPrice={0} WHERE proCode={1}"), price, id);
            d.excuteQuery(sql);
        }
        public bool newPro(string proName, string quantity , double id, string branchName)
        {
            {
                if (!checkProName(proName))
                {
                    string sql = String.Format("INSERT INTO products (proName,quantity,proPrice) VALUES('{0}', '{1}', '{2}')", proName, quantity, id);
                    DataSet ds = d.excuteQuery(sql);
                    return true;
                }
                else
                {
                    return false;
                }
            }
        }
        public bool isExsist(string name)
        {
            if (checkProName(name))
                return true;
            else
                return false;
        }
        public bool checkBranchName(string branchName)
        {
            string sql = String.Format("SELECT branchName FROM branches WHERE branchName ='{0}'", branchName);
            return d.excuteQuery(sql).Tables[0].Rows.Count != 0;
        }
        //public string getBranchCode(string branchName)
        //{
            //string sql = String.Format("SELECT branchCode FROM branches WHERE branchName ='{0}'", branchName);
            //return d.excuteQuery(sql).Tables[0].Rows.Cast<string>;
        //}
        public bool checkProName(string name)
        {
            string sql = String.Format("SELECT proName FROM products WHERE proName ='{0}' ", name);
            return d.excuteQuery(sql).Tables[0].Rows.Count != 0;
        }
        
    }
}