﻿using EzerMizion.App_Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EzerMizion
{
    public partial class donHistory : System.Web.UI.Page
    {
        donorsLogic dl = new donorsLogic();
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataSource = dl.allDonations();
            GridView1.DataBind();
        }
        protected void button_Click(object sender, EventArgs e)
        {
   
           
            GridView2.DataSource = dl.donHistory(text1.Text);
            GridView2.DataBind();
        }
    }
}