using EzerMizion.App_Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EzerMizion
{

    public partial class payment : System.Web.UI.Page
    {
        ordersLogic ol = new ordersLogic();
        productsLogic pl = new productsLogic();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack && (Session["uType"].Equals("ordinary")))
            {//הכנסת ערכים לרשימות חודש ושנה בתוקף כרטיס
                for (int i = 1; i <= 12; i++)
                {
                    Month.Items.Insert(i, i.ToString());
                }
                for (int i = DateTime.Now.Year; i <= DateTime.Now.Year+10; i++)
                {
                    Year.Items.Add(new ListItem(i.ToString(), i.ToString()));
                }

            }
            else
            {
                if (!(Session["uType"].Equals("ordinary")))
                    Response.Redirect("HomeP.aspx");
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

        protected void submit_Click(object sender, EventArgs e)
        {
            cartLogic cl = new cartLogic();
            if (!pl.getDifference(Session["uId"].ToString()))
            {
                Label5.Text = "לא כל הפריטים במלאי-לא ניתן לבצע הזמנה";
            }
            else
            {//בדיקת תוקף כרטיס
                if(Year.Text.Equals("בחר שנה")|| Month.Text.Equals("בחר חודש"))
                {
                    Label5.Text = "לא הוכנס תוקף-לא ניתן לבצע הזמנה";
                }
                else
                {
                    if (Int32.Parse(Year.Text) < Int32.Parse(DateTime.Now.Year.ToString()))
                    {//אם השנה הנוכחית אחרי שנה שהוכנסה 
                        Label5.Text = "כרטיס לא בתוקף-לא ניתן לבצע הזמנה";
                    }
                    else
                    {
                        if ((Int32.Parse(Year.Text) == Int32.Parse(DateTime.Now.Year.ToString())) && (Int32.Parse(Month.Text) <= Int32.Parse(DateTime.Now.Month.ToString())))
                        {//אם אותה שנה אבל חודש נוכחי מאוחר מחודש שהוכנס
                            Label5.Text = "כרטיס לא בתוקף-לא ניתן לבצע הזמנה";
                        }
                        else
                        {//אם התאריך שהוכנס אחרי תאריך נוכחי-כרטיס בתוקף 
                            ol.toOrder(Session["uId"].ToString(), cardNum.Text, Month.Text, Year.Text, ownerId.Text, cardCvv.Text, DateTime.Now);
                            ol.toOP(Session["uId"].ToString());
                            pl.updateAmount(Session["uId"].ToString());
                            cl.deleteAllCart(Session["uId"].ToString());
                            Label5.Text = "ההזמנה בוצעה בהצלחה";
                        }
                    }
                }

            }
            
        }
    }
}