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
<<<<<<< HEAD
               DataSet ds=pl.____ //זימון השאילתה
               שם הפקד.text = Tables[0].rows[0][שם השדה].ToString(); //הצבת הנתונים בפקדים
=======
<<<<<<< HEAD
                //if (! pCode.Equals(" "))
                {
                    Repeater1.DataSource = pl.oneProduct(1);
                    Repeater1.DataBind();
                    //totalP.Text =pl.pTotal( Double.Parse(pPrice.Text), Int32.Parse(qty.Text));
                }
=======
               DataSet ds=pl.____ //זימון השאילתה
               שם הפקד.text = Tables[0].rows[0][שם השדה].ToString(); //הצבת הנתונים בפקדים
>>>>>>> 77b2f0e7cbadfacf5b25e3b35f55c69b49c5c40d
>>>>>>> parent of c2e0402... Revert "t"
            }
          */
        }
    }
}