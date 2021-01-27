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
        public DataSet oneProduct(int proCode)
        {
            string sql = string.Format(" SELECT  proName, proPhoto, proPrice FROM products WHERE proCode={0}", proCode);
            return d.excuteQuery(sql);
        }
        public double pTotal (double pPrice, int qty)
        {
            double ptotal = pPrice * qty;
            return (ptotal);
        }
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
        public bool newPro(string proName, string quantity, double price, string branchName, string photo)
        {//creating new product and adding it to the product's table
            {
                if (!isExsist(proName, branchName))
                {
                    string sql = String.Format("INSERT INTO products (proName,quantity,proPrice,branchCode, proPhoto) VALUES('{0}', '{1}', '{2}', '{3}','{4}')", proName, quantity, price, getBranchCode(branchName), photo);
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
        public bool intoCart (string proCode, string userId)
        {//מכניסה את המוצר הנבחר ויוצרת שורה חדשה בטבלת עגלה
            string sql = String.Format("INSERT INTO cart (userId,proCode) VALUES('{0}', '{1}')", userId, proCode);
            DataSet ds = d.excuteQuery(sql);
            return true;
        }
        public DataSet getCart(string userId)
        {//return the cart of the current user
            string sql = String.Format("SELECT proCode FROM cart WHERE userId ='{0}'", userId);
            return d.excuteQuery(sql);
           
        }
    }
}