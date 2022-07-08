﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class UserDashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            if (Session["uname"] == null)
            {
                Response.Redirect("LoginPage.aspx");
            }
            Session["uname"] = null;
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("TodayAssignedTask.aspx");
        }
    }
}