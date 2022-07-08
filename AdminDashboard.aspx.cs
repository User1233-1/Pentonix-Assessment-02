using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class AdminDashboard : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("TodayAssigned.aspx");
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
        }

            

        protected void ImageButton2_Click1(object sender, ImageClickEventArgs e)
        {
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
        }

      
        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Overall.aspx");
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
        }

        protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Admin.aspx");
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
        }

        
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            if (Session["uname"] == null)
            {
                Response.Redirect("LoginPage.aspx");
            }
            Session["uname"] =null;
        }
    }
}