using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_project
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        string sqlquery = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        void AdminLoginCheck()
        {
            SqlConnection con = new SqlConnection(sqlquery);
            SqlCommand cmd = con.CreateCommand();
            try 
            {
                con.Open();
                string sqlquery = "select * from admin_login where username ='" + username_txt.Text + "' AND a_password='" + pass_txt.Text.ToString() + "' ";
                cmd = new SqlCommand(sqlquery, con);
                var dr = cmd.ExecuteReader();
                if (dr != null) 
                {
                    if(dr.Read()) 
                    {
                        Session["username"] = dr["username"].ToString();
                        Session["role"] = "admin";
                        Response.Redirect("HomePage.aspx");
                    }
                    if(username_txt.Text=="" || pass_txt.Text == "")
                    {
                        Response.Write("<script>alert('Please fill necessary Details'); </script>");
                    }
                    
                }
                else
                {
                    Response.Write("<script>alert('Check connection'); </script>");
                }


            }
            catch (Exception ex) 
            {
                Response.Write("<script>alert('"+ ex.Message.ToString() +"'); </script>");

            }
            finally 
            {
                con.Close();
                cmd.Dispose();
            }
        }

        protected void login_btn_Click(object sender, EventArgs e)
        {
            AdminLoginCheck();

        }
    }
}