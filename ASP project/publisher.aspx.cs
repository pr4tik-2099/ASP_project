using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_project
{
    public partial class publisher : System.Web.UI.Page
    {
        string sqlcon = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        private bool checkEmptyTextbox()
        {
            bool IsEmpty = false;
            if (publisherId_txt.Text == "" || publisherName_txt.Text == "")
            {
                IsEmpty = true;
            }
            return IsEmpty;
        }

        bool CheckPublisherExist()
        {
            SqlConnection conn = new SqlConnection(sqlcon);
            SqlCommand cmd = new SqlCommand();
            try
            {
                conn.Open();
                string sqlquery = "select * from publisher where publisher_Id ='" + publisherId_txt.Text.ToString() + "' ";
                cmd = new SqlCommand(sqlquery, conn);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script> alert('" + ex.Message.ToString() + "')</script>");
                return false;
            }

        }

        protected void add_btn_Click(object sender, EventArgs e)
        {
            if(CheckPublisherExist()) 
            {
                Response.Write("<script> alert('Publisher Already Exist')</script>");
            }
            if(checkEmptyTextbox())
            {
                Response.Write("<script> alert('Please Fill All Details')</script>");
            }
            else
            {
                AddPublisher();
            }
        }
        void AddPublisher()
        {
            SqlConnection conn = new SqlConnection(sqlcon);
            SqlCommand cmd = new SqlCommand();
            try
            {
                conn.Open();
                string sqlquery = "insert into publisher(publisher_Id,publisher_Name) values('" + publisherId_txt.Text.ToString() + "','" + publisherName_txt.Text.ToString() + "')";
                cmd = new SqlCommand(sqlquery, conn);
                cmd.CommandType = CommandType.Text;
                int add = cmd.ExecuteNonQuery();
                if (add > 0)
                {
                    Response.Write("<script> alert('Publisher Added Successfully')</script>");

                }


            }
            catch (Exception ex)
            {
                Response.Write("<script> alert('" + ex.Message.ToString() + "')</script>");
            }
        }

        protected void update_btn_Click(object sender, EventArgs e)
        {
            if (CheckPublisherExist())
            {
                Response.Write("<script> alert('Publisher Already Exist')</script>");
            }
            if (checkEmptyTextbox())
            {
                Response.Write("<script> alert('Please Fill All Details')</script>");
            }
            else
            {
                UpdatePublisher();
            }
        }
        void UpdatePublisher()
        {
            SqlConnection conn = new SqlConnection(sqlcon);
            SqlCommand cmd = new SqlCommand();
            try
            {
                conn.Open();
                string sqlquery = "update publisher SET publisher_Name='" + publisherName_txt.Text.ToString() + "' where publisher_Id ='" + publisherId_txt.Text.ToString() + "' ";
                cmd = new SqlCommand(sqlquery, conn);
                cmd.CommandType = CommandType.Text;
                int add = cmd.ExecuteNonQuery();
                if (add > 0)
                {
                    Response.Write("<script> alert('Author Updated Successfully')</script>");

                }

            }
            catch (Exception ex)
            {
                Response.Write("<script> alert('" + ex.Message.ToString() + "')</script>");
            }
        }
    }
}