using EzerMizion.App_Code;
using System;
using System.Collections.Generic;
using System.IO;
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
            if(!(Session["uType"].Equals("manager")))
                Response.Redirect("HomeP.aspx");
        }

        protected void submit_Click(object sender, EventArgs e)
        {//הוספת מוצר
            productsLogic pl = new productsLogic();
            {
                try
                {
                    //שמירת שם התמונה
                    string imageName = photo.Text;
                    //מחזיר את הנתיב של התיקיה בשרת
                    string path = Server.MapPath(@"~/Photos/");
                    //בדיקה שקובץ התמונה שהמשתמש הזין לא קיים כבר במערכת 
                    if (!File.Exists(path + imageName))
                    {
                        alarm_lable.Text = "יש להעלות את התמונה קודם";
                    }
                    else
                    {
                        try
                        {
                            if ((Double.Parse(proPrice.Text) > 0) && (Int32.Parse(quantity.Text) >= 0))
                            {
                                alarm_lable.Text = "";
                                try
                                {
                                    if (!pl.newPro(proName.Text, quantity.Text, double.Parse(proPrice.Text), branchName.Text, photo.Text, proDesc.Text))
                                        alarm_lable.Text = "המוצר קיים";
                                    else
                                        alarm_lable.Text = "המוצר נוסף בהצלחה";
                                }
                                catch
                                {
                                    alarm_lable.Text = "שגיאה-לא ניתן להוסיף מוצר";
                                }
                            }
                            else
                                alarm_lable.Text = "לא כל הערכים המוכנסים תקינים";
                        }
                        catch
                        {
                            alarm_lable.Text = "לא כל הערכים המוכנסים תקינים";
                        }
                    }
                    pl.stockTrue();
                }
                catch
                {
                    lblMessage.Text = "שגיאה";
                }
                
            }
        }

        protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            branchName.Text = branchName.SelectedValue;
        }

        protected void SavePicture(object sender, EventArgs e)
        {
            //save image name
            string imageName = FileUpload1.PostedFile.FileName;
            //מחזיר את הנתיב של התיקיה בשרת
            string path = Server.MapPath(@"~/Photos/");
            //בדיקה שקובץ התמונה שהמשתמש הזין לא קיים כבר במערכת 
            try
            {
                if (File.Exists(path + imageName))
                    lblMessage.Text = "הקובץ כבר קיים במערכת";
                else
                {
                    //שמירה של קובץ התמונה בתיקיה של האתר
                    FileUpload1.PostedFile.SaveAs(path + imageName);
                    lblMessage.Text = "הקובץ נשמר בהצלחה";
                }
            }
            catch
            {
                lblMessage.Text = "שגיאה-לא ניתן לשמור את הקובץ";
            }
            
        }
    }
}
