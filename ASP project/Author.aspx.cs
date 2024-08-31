using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_project
{
    public partial class Author : System.Web.UI.Page
    {
        string sqlcon = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        bool checkEmptyTextbox()
        {
            if (authorId_txt.Text == "" || autherName_txt.Text == "")
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        protected void add_btn_Click(object sender, EventArgs e)
        {
            if (CheckAuthorExist())
            {
                Response.Write("<script> alert('This Author Already Exist')</script>");
            }
            else if (checkEmptyTextbox())
            {
                Response.Write("<script> alert('Please Fill Necessary Details')</script>");
            }
            else
            {
                AddAuthor();
            }
           
        }
        
        bool CheckAuthorExist()
        {
            SqlConnection conn = new SqlConnection(sqlcon);
            SqlCommand cmd = new SqlCommand();
            try
            {
                conn.Open();
                string sqlquery = "select * from author where author_Id ='" + authorId_txt.Text.ToString() + "' ";
                cmd = new SqlCommand(sqlquery,conn);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);

                if(dt.Rows.Count >= 1)
                {
                    return true;
                }
                else 
                {
                    return false;
                }
                
            }
            catch(Exception ex) 
            {
                Response.Write("<script> alert('" + ex.Message.ToString() + "')</script>");
                return false;
            }
            
        }

        void AddAuthor()
        {
            SqlConnection conn = new SqlConnection(sqlcon);
            SqlCommand cmd = new SqlCommand();
                try
                {
                    conn.Open();
                    string sqlquery = "insert into author(author_Id,author_Name) values('" + authorId_txt.Text.ToString() + "','" + autherName_txt.Text.ToString() + "')";
                    cmd = new SqlCommand(sqlquery, conn);
                    cmd.CommandType = CommandType.Text;
                    int add = cmd.ExecuteNonQuery();
                    if (add > 0)
                    {
                        Response.Write("<script> alert('Author Added Successfully')</script>");

                    }
                  

                }
                catch (Exception ex)
                {
                    Response.Write("<script> alert('" + ex.Message.ToString() + "')</script>");
                }
        }

        protected void update_btn_Click(object sender, EventArgs e)
        {
            if(CheckAuthorExist())
            {
                UpdateAuthor();
            }
            else if (checkEmptyTextbox())
            {
                Response.Write("<script> alert('Please Fill Necessary Details')</script>");
            }
            else
            {
                Response.Write("<script> alert('Author Not Exist')</script>");
            }
        }
        void UpdateAuthor()
        {
            SqlConnection conn = new SqlConnection(sqlcon);
            SqlCommand cmd = new SqlCommand();
            try
            {
                conn.Open();
                string sqlquery = "update author SET author_Name='" + autherName_txt.Text.ToString() + "' where author_Id ='" + authorId_txt.Text.ToString() + "' ";
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

        protected void delete_btn_Click(object sender, EventArgs e)
        {
            if(CheckAuthorExist()) 
            {
                DeleteAuthor();
            }
            else if(checkEmptyTextbox())
            {
                Response.Write("<script> alert('Please Fill Necessary Details')</script>");
            }
            else
            {
                Response.Write("<script> alert('Author Not Exist')</script>");

            }
        }
        void DeleteAuthor()
        {
            SqlConnection conn = new SqlConnection(sqlcon);
            SqlCommand cmd = new SqlCommand();
            try
            {
                conn.Open();
                string sqlquery = "Delete from author where author_Id ='" + authorId_txt.Text.ToString() + "' ";
                cmd = new SqlCommand(sqlquery, conn);
                cmd.CommandType = CommandType.Text;
                int add = cmd.ExecuteNonQuery();
                if (add > 0)
                {
                    Response.Write("<script> alert('Author Deleted Successfully')</script>");
                    
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script> alert('" + ex.Message.ToString() + "')</script>");
            }
        }
    }
}
    