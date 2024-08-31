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
    public partial class Login : System.Web.UI.Page
    {
        string sqlcon = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        void LoginCheck()
        {
            SqlConnection conn = new SqlConnection(sqlcon);
            SqlCommand cmd = new SqlCommand();
            try
            {
                conn.Open();
                string sqlquery = "select * from member_tb where username='" + username_txt.Text.ToString() + "'AND u_password='" + pass_txt.Text.ToString() + "'";
                cmd = new SqlCommand(sqlquery, conn);
                var dr = cmd.ExecuteReader();

                if (dr != null)
                {
                    if (dr.Read())
                    {
                        Session["role"] = "user";
                        Session["username"] = dr["username"].ToString();


                    }
                    else
                    {
                        Response.Write("<script>alert('Incorrect'); </script>");
                    }
                    Response.Redirect("HomePage.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Please fill necessary Details'); </script>");
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message.ToString() + "'); </script>");
            }
            finally
            {
                conn.Close();
                cmd.Dispose();
            }
        }

        protected void login_btn_Click(object sender, EventArgs e)
        {
           LoginCheck();
        }
    }
}