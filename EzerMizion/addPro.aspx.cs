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
            //if (!(pl.checkBranchName(branchName.Text)))
            //    alarm_lable.Text = "שם הסניף שהזנת שגוי";
            //else
            {
                if (!pl.newPro(proName.Text, quantity.Text, double.Parse(proPrice.Text), branchName.Text))
                    alarm_lable.Text = "המוצר קיים";
                else
                    alarm_lable.Text = "המוצר נוסף בהצלחה";
            }
        }

        protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            branchName.Text = branchName.SelectedValue;
        }
    }
}
//                                    <asp:TextBox ID="branchName" runat="server" class="form-control" placeholder="שם סניף *" value=""></asp:TextBox>
