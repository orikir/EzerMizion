using EzerMizion.App_Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EzerMizion
{
    public partial class addPro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            productsLogic pl = new productsLogic();
            //if (!(pl.checkBranchCode(branchCode.Text)))
            //  alarm_lable.Text = "קוד סניף שגוי";
            //else
            // {
            if (!pl.newPro(proName.Text, quantity.Text, double.Parse(proPrice.Text)))
                alarm_lable.Text = "המוצר קיים";
            else
                alarm_lable.Text = "המוצר נוסף בהצלחה";
            // }
        }
    }
}