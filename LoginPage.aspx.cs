using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApplication1
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            conn.Open();
            string checkuser = " select count(*) from RegistrationData where UserData='" + uname.Text + "'";

            SqlCommand com = new SqlCommand(checkuser, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            conn.Close();
            if (temp == 1)
            {
                conn.Open();
                string checkpassword = " Select password from RegistratioNData where UserData='" + uname.Text + "'";
                SqlCommand passComm = new SqlCommand(checkpassword, conn);
                string password = passComm.ExecuteScalar().ToString().Replace(" ", "");
                if (password == pass.Text)
                {
                    Session["New"] = uname.Text;
                    Response.Redirect("UserDashboard.aspx");

                }
                else
                {
                    Response.Write("<script>alert('Incorrect Password')</script>");
                }

            }
            else
            {
                Response.Write("<script>alert('Incorrect Username')</script>");
            }
            if (uname.Text == "admin" && pass.Text == "admin123")
            {
                Response.Redirect("AdminDashboard.aspx");
            }
            conn.Close();
            uname.Text = "";
            pass.Text = "";
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("ForgotPassword.aspx");
        }
    }
}