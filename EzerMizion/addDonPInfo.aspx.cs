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
    public partial class addDonPInfo : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!(Session["uType"].Equals("manager") || Session["uType"].Equals("ordinary")))
                Response.Redirect("HomeP.aspx");
            if (!IsPostBack )
            {//הכנסת ערכים לרשימות חודש ושנה בתוקף כרטיס
                for (int i = 1; i <= 12; i++)
                {
                    Month.Items.Insert(i, i.ToString());
                }
                for (int i = DateTime.Now.Year; i <= DateTime.Now.Year + 10; i++)
                {
                    Year.Items.Add(new ListItem(i.ToString(), i.ToString()));
                }
            }
        }
        protected void continue_Click(object sender, EventArgs e)
        {
            string dSum = Request.QueryString["dSum"];
            donorsLogic dl = new donorsLogic();
            {
                //בדיקת תוקף כרטיס
                if (Year.Text.Equals("בחר שנה") || Month.Text.Equals("בחר חודש"))
                {
                    alarm_lable.Text = "לא הוכנס תוקף-לא ניתן לבצע תרומה";
                }
                else
                {
                    if (Int32.Parse(Year.Text) < Int32.Parse(DateTime.Now.Year.ToString()))
                    {//אם השנה הנוכחית אחרי שנה שהוכנסה 
                        alarm_lable.Text = "כרטיס לא בתוקף-לא ניתן לבצע תרומה";
                    }
                    else
                    {
                        if ((Int32.Parse(Year.Text) == Int32.Parse(DateTime.Now.Year.ToString())) && (Int32.Parse(Month.Text) <= Int32.Parse(DateTime.Now.Month.ToString())))
                        {//אם אותה שנה אבל חודש נוכחי מאוחר מחודש שהוכנס
                            alarm_lable.Text = "כרטיס לא בתוקף-לא ניתן לבצע תרומה";
                        }
                        else
                        {
                            if (dl.newDonor2(id.Text, selectOrg.Text, double.Parse(dSum), DateTime.Today, cardNum.Text, Month.Text, Year.Text, ownerId.Text, cardCvv.Text))
                                alarm_lable.Text = "התרומה התקבלה בהצלחה";
                            else
                                alarm_lable.Text = "יש להירשם לפני ביצוע תרומה";
                        }
                    }
                }

            }
            
        }
        protected void Year_SelectedIndexChanged(object sender, EventArgs e)
        {
            Year.Text = Year.SelectedValue;
        }

        protected void Month_SelectedIndexChanged(object sender, EventArgs e)
        {
            Month.Text = Month.SelectedValue;
        }

        protected void selectOrg_SelectedIndexChanged(object sender, EventArgs e)
        {
            selectOrg.Text = selectOrg.SelectedValue;
        }
    }
}