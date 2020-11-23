﻿using System;
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
        public bool newPro(string proName, string quantity, string bCode, string proPhoto)
        {
            {
                if (!isExsist(proName, bCode))
                {
                    string sql = String.Format("INSERT INTO products (proName,quantity,branchCode,proPhoto) VALUES('{0}', '{1}', '{2}', '{3}')", proName, quantity, bCode, proPhoto);
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
            if (checkBranchCode(bCode) && checkProName(name, bCode))
                return true;
            else
                return false;
        }
        public bool checkBranchCode(string bCode)
        {
            string sql = String.Format("SELECT branchCode FROM branches WHERE branchCode ='{0}'", bCode);
            return d.excuteQuery(sql).Tables[0].Rows.Count != 0;
        }
        public bool checkProName(string name, string bCode)
        {
            string sql = String.Format("SELECT proName FROM products WHERE proName ='{0}' AND branchCode ='{1}' ", name, bCode);
            return d.excuteQuery(sql).Tables[0].Rows.Count != 0;
        }
    }
}