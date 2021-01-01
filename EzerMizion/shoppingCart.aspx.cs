using EzerMizion.App_Code;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EzerMizion
{
    public partial class shoppingCart : System.Web.UI.Page
    {
        productsLogic pl = new productsLogic();
        protected void Page_Load(object sender, EventArgs e)
        {
          /* if(! IsPostBack)
            {
                string pCode = Request.QueryString["pCode"];
               DataSet ds=pl.____ //זימון השאילתה
               שם הפקד.text = Tables[0].rows[0][שם השדה].ToString(); //הצבת הנתונים בפקדים
            }
          */
        }
    }
}