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
        branchesLogic bl = new branchesLogic();
        public DataSet allProducts()
        {
            string sql = " SELECT products.proCode, products.proName, products.isInStock, products.quantity, branches.branchName, products.proPhoto, products.proPrice FROM branches INNER JOIN products ON branches.branchCode = products.branchCode";
            return d.excuteQuery(sql);
        }
        public DataSet oneProduct(int proCode)
        {
            string sql = string.Format(" SELECT  proName, proPhoto, proPrice FROM products WHERE proCode={0}", proCode);
            return d.excuteQuery(sql);
        }
        public void updatePro(double price, int proCode)
        {//update product price according to what the user entered
            string sql = string.Format(("UPDATE products SET proPrice={0} WHERE proCode={1}"), price, proCode);
            d.excuteQuery(sql);
        }
        public bool getDifference(string userId)
        {//return the differece between how many products in stock to how many the customer wants
            string sql = String.Format("SELECT products.quantity-cart.amount AS stock FROM products INNER JOIN cart ON products.proCode=cart.proCode WHERE cart.userId ='{0}'", userId);
            for (int i=0; i< d.excuteQuery(sql).Tables[0].Rows.Count; i++)
            {
                if (Int32.Parse(d.excuteQuery(sql).Tables[0].Rows[i].ItemArray.GetValue(0).ToString()) < 0)
                    return false;
            }
            return true;
        }
        public void updateAmount(string uId)
        {//update product amount
            string sql = string.Format(("UPDATE products INNER JOIN cart ON products.proCode = cart.proCode SET products.quantity =  products.quantity-cart.amount WHERE cart.userId='{0}'"), uId);
            d.excuteQuery(sql);
        }
        public void deletePro(string proCode)
        {//delete product
            string sql = string.Format(("DELETE * FROM products WHERE proCode={0}"), proCode);
            d.excuteQuery(sql);
        }
        public bool newPro(string proName, string quantity, double price, string branchName, string photo)
        {//creating new product and adding it to the product's table
            {
                if (!isExsist(proName, branchName))
                {
                    string sql = String.Format("INSERT INTO products (proName,quantity,proPrice,branchCode, proPhoto) VALUES('{0}', '{1}', '{2}', '{3}','{4}')", proName, quantity, price, bl.getBranchCode(branchName), photo);
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
            string sql = String.Format("SELECT branchCode FROM products WHERE branchCode ='{0}' AND proName ='{1}' ", bl.getBranchCode(branchName), name);
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
        public string getProCode(string proName)
        {//return the code product of this name
            string sql = String.Format("SELECT proCode FROM products WHERE proName ='{0}'", proName);
            DataSet ds = d.excuteQuery(sql);
            string s = ds.Tables[0].Rows[0].ItemArray.GetValue(0).ToString();
            return s;
        }
    }
}