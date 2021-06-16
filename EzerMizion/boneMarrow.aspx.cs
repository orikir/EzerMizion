using EzerMizion.App_Code;
using EzerMizion.idfLocalhost;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EzerMizion
{
    public partial class boneMarrow : System.Web.UI.Page
    {
        idfWebService ws=new idfWebService();
        donBMLogic dbm = new donBMLogic();
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((Session["uType"].Equals("manager")))
            {
                GridView1.DataSource = dbm.allDonations();
                GridView1.DataBind();
            }
            else
                Response.Redirect("HomeP.aspx");

        }

        protected void byBlood(object sender, EventArgs e)
        {
            if (DropDownList1.Text != null )
            {
                if(DropDownList1.Text.Equals("כל התורמים"))
                {
                    GridView1.DataSource = dbm.allDonations();
                    GridView1.DataBind();
                }
                else
                {
                    GridView1.DataSource = dbm.byBlood(DropDownList1.Text);
                    GridView1.DataBind();
                }
                
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownList1.Text = DropDownList1.SelectedValue;
        }

        protected void update_Click(object sender, EventArgs e)
        {//עדכון טבלת התורמים במאגר
            DateTime date = DateTime.Today;
            string id;
            DataSet ds;
            bool b;
            for (int i=0; i<ws.numOfSol();i++)
            {
                id = ws.getId(i);
                b = dbm.isIN(id);
                ds=ws.selectSol(id,b);
                if (ds!=null)
                {
                    string fn = ds.Tables[0].Rows[0].ItemArray.GetValue(0).ToString();
                    string ln = ds.Tables[0].Rows[0].ItemArray.GetValue(1).ToString();
                    string pn = ds.Tables[0].Rows[0].ItemArray.GetValue(2).ToString();
                    string bd = ds.Tables[0].Rows[0].ItemArray.GetValue(3).ToString();
                    string bt = ds.Tables[0].Rows[0].ItemArray.GetValue(4).ToString();
                    int ds1 = 0;
                    dbm.insertNewDon(fn, ln, pn, DateTime.Parse(bd), bt, ds1, id);
                    GridView1.DataSource = dbm.byBlood(DropDownList1.Text);
                    GridView1.DataBind();
                }
            }

        }
        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {//עדכון סטטוס תורם
            int index = Convert.ToInt32(e.CommandArgument);
            int st = ws.getStatus(GridView1.Rows[index].Cells[7].Text);
            if (st < 3)
            {
                dbm.updateStatus(GridView1.Rows[index].Cells[7].Text, st+1);
                ws.updateSol(GridView1.Rows[index].Cells[7].Text, st+1);
            }
            GridView1.EditIndex = -1;
            GridView1.DataSource = dbm.allDonations();
            GridView1.DataBind();
        }
    }
}