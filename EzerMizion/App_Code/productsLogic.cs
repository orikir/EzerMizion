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
    }
}