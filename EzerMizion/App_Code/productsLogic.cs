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
    }
}