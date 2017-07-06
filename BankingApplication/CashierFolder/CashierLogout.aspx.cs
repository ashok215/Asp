﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BankingApplication.CashierFolder
{
    public partial class CashierLogout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string uname = string.Empty;
            if(Session["uname"]!=null)
            {
                uname = Session["uname"].ToString();
                Label1.Text = "Hello " + uname + " , logged out successfully";
                Session.Abandon();
            }
        }
    }
}