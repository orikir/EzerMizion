﻿using EzerMizion.App_Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EzerMizion
{
    public partial class rentEq : System.Web.UI.Page
    {
        productsLogic pl = new productsLogic();
        protected void Page_Load(object sender, EventArgs e)
        {
            Repeater1.DataSource = pl.allProducts();
            Repeater1.DataBind();
        }
    }
}