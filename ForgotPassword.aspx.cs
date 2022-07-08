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
    public partial class SendCode : System.Web.UI.Page
    {
        void clear()
        {
            oldpass.Text = "";
            newpass.Text = "";
            conpass.Text = "";
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            oldpass.Text = "";
            newpass.Text = "";
            conpass.Text = "";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                string oldpw = oldpass.Text;
                string newpw = newpass.Text;
                string confirmpass = conpass.Text;
                string cs = (ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
                SqlConnection con = new SqlConnection(cs);
                con.Open();
                SqlCommand cmd = new SqlCommand("Select Password from RegistrationData where Password='" + oldpw + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows == true)
                {

                    dr.Read();
                    con.Close();
                    if (newpw == confirmpass)
                    {
                        con.Open();
                        cmd = new SqlCommand("Update RegistrationData set Password='" + newpw +"' where Password='" + oldpw + "'", con);
                        cmd.ExecuteNonQuery();
                        con.Close();
                        
                        lblmsg.Text="Password Changed Successfully";
                    }
                    else
                    {
                        lblmsg.Text="Invalid Password!Please Enter Correct Password";
                    }
                }

            }
            catch (Exception ex)
            {
                lblmsg.Text = "Error:" + ex.Message.ToString();
            }
            clear();
        }
    }
    }
