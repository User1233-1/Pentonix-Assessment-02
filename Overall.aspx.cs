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
    public partial class Overall : System.Web.UI.Page
    {
        DataTable dbdataset;
        string cs = ConfigurationManager.ConnectionStrings["TodayAssignConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GridviewButton();
            }
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            DataView DV = new DataView(dbdataset);
            DV.RowFilter = string.Format("TeamMemberName LIKE '%{0}%'", Filter.Text);
            GridView1.DataSource = DV;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            try
            {
                using (SqlConnection con = new SqlConnection(cs))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand ("Insert into AssignedTask (TeamMemberName,TicketNo,Task,PlannedEffort,Status,Date )select TeamMember,TicketNo,Task,PlannedEffort,Status,Date from Assigntoday", con);

                    

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
        protected void GridviewButton()
        {
            using (SqlConnection con = new SqlConnection(cs))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Select * from AssignToday", con);
                SqlDataAdapter sda = new SqlDataAdapter();
                sda.SelectCommand= cmd;
                dbdataset = new DataTable();
                sda.Fill(dbdataset);


                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows == true)
                {
                    GridView1.DataSource = dr;
                    GridView1.DataBind();
                }
            }
        }













        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

    }

}
