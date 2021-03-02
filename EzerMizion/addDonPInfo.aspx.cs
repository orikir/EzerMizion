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
            orgLogic ol = new orgLogic();
            DataSet ds = ol.getOrgsName();
            /* if (!IsPostBack)
             {
                 selectOrg.DataSource = ds;
                 selectOrg.DataBind();

                 selectOrg.DataTextField = "orgName";
                 selectOrg.DataValueField = "orgCode";


                 selectOrg.DataBind();
                 selectOrg.Items.Insert(0, "בחר");
             }*/
            
            if (!IsPostBack )
                {
                for (int a = 1; a <= 12; a++)
                    {
                        Month.Items.Insert(a, a.ToString());
                    }
                    for (int a = DateTime.Now.Year; a <= 2030; a++)
                    {
                        Year.Items.Add(new ListItem(a.ToString(), a.ToString()));
                    }
                     

            }
                else
                {/*
                    if (!(Session["uType"].Equals("ordinary")))
                        Response.Redirect("HomeP.aspx");
                */}
            
        }
        protected void continue_Click(object sender, EventArgs e)
        {
            string dSum = Request.QueryString["dSum"];
            donorsLogic dl = new donorsLogic();
            {
                if (dl.newDonor2(id.Text, selectOrg.Text, double.Parse(dSum), DateTime.Today, cardNum.Text, Month.Text, Year.Text, ownerId.Text, cardCvv.Text))
                    alarm_lable.Text = "התרומה התקבלה בהצלחה";
                else
                    alarm_lable.Text = "יש להירשם לפני ביצוע תרומה";
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