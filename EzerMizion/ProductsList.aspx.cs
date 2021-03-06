﻿using EzerMizion.App_Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EzerMizion
{
    public partial class ProductsList : System.Web.UI.Page
    {
        productsLogic pl = new productsLogic();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack && (Session["uType"].Equals("manager")))
            {
                GridView1.DataSource = pl.allProducts();
                GridView1.DataBind();
                Label1.Text = "";
            }
            else
            {
                if (!(Session["uType"].Equals("manager")))
                    Response.Redirect("HomeP.aspx");
            }
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {//כפתור עריכה-פותח תיבת טקסט
            GridView1.EditIndex = e.NewEditIndex;
            GridView1.DataSource = pl.allProducts();
            GridView1.DataBind();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {//עדכון מחיר מוצר
            //כשיש אפשרות עריכה בעצם נוספת תיבת טקס וממנה צריך לקחת את הנתון
            string price = ((TextBox)(GridView1.Rows[e.RowIndex].Cells[5].Controls[0])).Text;
            //עדכון הנתונים במסד הנתונים
            try
            {
                if (double.Parse(price) < 1)
                    Label1.Text = "לא ניתן לערוך מחיר מוצר-המחיר שהוכנס אינו תקני";
                else
                {
                    pl.updatePro(double.Parse(price), Int32.Parse(GridView1.Rows[e.RowIndex].Cells[6].Text));
                    Label1.Text = "";
                }
                   
            }
            catch
            {
                Label1.Text = "לא ניתן לערוך מחיר מוצר-המחיר שהוכנס אינו תקני";
            }
            //יציאה ממצב עריכה
            GridView1.EditIndex = -1;
            GridView1.DataSource = pl.allProducts();
            GridView1.DataBind();

        }


        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {//כפתור ביטול
            GridView1.EditIndex = -1;
            GridView1.DataSource = pl.allProducts();
            GridView1.DataBind();
            Label1.Text = "";
        }

        protected void addP_Click(object sender, EventArgs e)
        {
            Response.Redirect("addPro.aspx");
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {//כפתור מחיקה  
            pl.deletePro(GridView1.Rows[e.RowIndex].Cells[6].Text);
            GridView1.EditIndex = -1;
            GridView1.DataSource = pl.allProducts();
            GridView1.DataBind();
            Label1.Text = "";
        }
    }
}