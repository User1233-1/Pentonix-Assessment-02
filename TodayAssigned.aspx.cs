using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
namespace WebApplication1
{
    public partial class TodayAssigned : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["TodayAssignConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                GridviewButton();
            }
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void ImageButton1_Click1(object sender, ImageClickEventArgs e)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(cs))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("insert into AssignToday (TeamMember,TicketNo,Task,PlannedEffort,Status,Date ) values(@tm,@tno,@task,@effort,@status,@date)", con);

                    cmd.Parameters.AddWithValue("@tm", list1.Text);
                    cmd.Parameters.AddWithValue("@tno", list2.Text);
                    cmd.Parameters.AddWithValue("@task", list3.SelectedItem.ToString());
                    cmd.Parameters.AddWithValue("@effort", list4.SelectedItem.ToString());
                    cmd.Parameters.AddWithValue("@status", list5.Text);
                    cmd.Parameters.AddWithValue("@date", list6.Text);



                    int t = cmd.ExecuteNonQuery();
                    if (t > 0)
                    {
                        Response.Write("<script>alert('Data has been successfully inserted')</script>");
                        GridviewButton();
                    }

                }
            }



            catch (Exception ex)
            {

                Response.Write(ex.Message);


            }
        }
        











        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            list1.Items.Clear();
            list2.Text = "";
            list3.Items.Clear();
            list4.Items.Clear();
            list5.Text = "";
            list6.Text = "";
        }

        protected void GridviewButton()
        {
            using (SqlConnection con = new SqlConnection(cs))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Select * from AssignToday", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows == true)
                {
                    GridView1.DataSource = dr;
                    GridView1.DataBind();
                }
            }
        }



        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {
           
        }
    }
}
