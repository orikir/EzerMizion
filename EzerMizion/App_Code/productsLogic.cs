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
<<<<<<< HEAD
<<<<<<< HEAD
=======
=======
>>>>>>> parent of 6cadc89... t
        public DataSet oneProduct(string proCode)
        {
            string sql = string.Format(" SELECT  proName, proPhoto, proPrice FROM products WHERE proCode='{0}'", proCode);
            return d.excuteQuery(sql);
        }
        public double pTotal (double pPrice, int qty)
        {
            double ptotal = pPrice * qty;
            return (ptotal);
        }
>>>>>>> parent of 6cadc89... t
        public void updatePro(double price, string proCode)
        {//update product price according to what the user entered
            string sql = string.Format(("UPDATE products SET proPrice={0} WHERE proCode={1}"), price, proCode);
            d.excuteQuery(sql);
        }
        public void deletePro(string proCode)
        {//delete product
            string sql = string.Format(("DELETE * FROM products WHERE proCode={0}"), proCode);
            d.excuteQuery(sql);
        }

        public bool newPro(string proName, string quantity, double price, string branchName)
        {//creating new product and adding it to the product's table
            {
                if (!isExsist(proName, branchName))
                {
                    string sql = String.Format("INSERT INTO products (proName,quantity,proPrice,branchCode) VALUES('{0}', '{1}', '{2}', '{3}')", proName, quantity, price, getBranchCode(branchName));
                    DataSet ds = d.excuteQuery(sql);
                    return true;
                }
                else
                {
                    return false;
                }
            }
        }
        public bool isExsist(string name, string branchName)
        {//check if the product is already exist
            string sql = String.Format("SELECT branchCode FROM products WHERE branchCode ='{0}' AND proName ='{1}' ", getBranchCode(branchName), name);
            return d.excuteQuery(sql).Tables[0].Rows.Count != 0;
        }
        public bool checkBranchName(string branchName)
        {//check if there is branch with this name
            string sql = String.Format("SELECT branchName FROM branches WHERE branchName ='{0}'", branchName);
            return d.excuteQuery(sql).Tables[0].Rows.Count != 0;
        }
        public string getBranchCode(string branchName)
        {//return the code branch of this branch name
            string sql = String.Format("SELECT branchCode FROM branches WHERE branchName ='{0}'", branchName);
            DataSet ds = d.excuteQuery(sql);
            string s = ds.Tables[0].Rows[0].ItemArray.GetValue(0).ToString();
            return s;
        }
        /*public bool checkProName(string name)
        {
            string sql = String.Format("SELECT proName FROM products WHERE proName ='{0}' ", name);
            return d.excuteQuery(sql).Tables[0].Rows.Count != 0;
        }*/
    }
}