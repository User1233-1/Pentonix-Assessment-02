using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
namespace WebApplication1
{
    public partial class TodayAssignedUser : System.Web.UI.Page
    {

       string cs=ConfigurationManager.ConnectionStrings["TodayAssignConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
         

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
          
            Label2.Text = "Successfully updated Neccescary Changes";

            tno.Text = "";
            task.Text = "";
            list1.Text = "";
            t3.Text = "";
            date.Text = "";





            try
            {
                using (SqlConnection con = new SqlConnection(cs))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("Update TodayAssignedUser set TicketNo=@TicketNo,Task=@task,Status=@status,Comment=@comment,Date=@date from AssignToday from AssignToday.Ticket='"+tno.Text+" ')", con);

                    cmd.Parameters.AddWithValue("@TicketNo", tno.Text);
                    cmd.Parameters.AddWithValue("@task", task.Text);
                    cmd.Parameters.AddWithValue("@status", list1.SelectedItem.ToString());
                    cmd.Parameters.AddWithValue("@comment", t3.Text);
                    cmd.Parameters.AddWithValue("@date", date.Text);


                    int t = cmd.ExecuteNonQuery();
                    if (t > 0)
                    {
                        Response.Write("<script>alert('Data has been successfully updated')</script>");

                    }

                }
            }

            catch (Exception ex)
            {

                Response.Write(ex.Message);

            }


        }






















        }

       
    }
