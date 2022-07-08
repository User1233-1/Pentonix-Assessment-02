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
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(IsPostBack)
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
                conn.Open();
                string checkuser = " select count(*) from RegistrationData where UserData='" + TextBox5.Text+ "'";

                SqlCommand com = new SqlCommand(checkuser, conn);
                int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
                if (temp==1)
                {
                    Response.Write("User already exists");
                }
                
                
                
                conn.Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                

                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
                conn.Open();
                string insertQuery = "insert into RegistrationData (FirstName, LastName, EmailAddress, MobileNumber,UserData,Password) values(@fname,@lname,@email,@Mno,@Userd,@password )";

                SqlCommand com = new SqlCommand(insertQuery, conn);

                
                com.Parameters.AddWithValue("@fname", TextBox1.Text);
                com.Parameters.AddWithValue("@lname",TextBox2.Text);
                com.Parameters.AddWithValue("@email",TextBox3.Text);
                com.Parameters.AddWithValue("@Mno", TextBox4.Text);
                com.Parameters.AddWithValue("@Userd",TextBox5.Text);
                com.Parameters.AddWithValue("@password",TextBox6.Text);


                com.ExecuteNonQuery();

                
                Response.Output.Write("Registration is Successful");



                conn.Close();
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                TextBox5.Text = "";
                TextBox6.Text = "";

            } 
            catch( Exception ex)
            {
                Response.Write("Error:"+ex.ToString());
            }
        }
    }
}