using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_project
{
    public partial class Sign_Up_Page : System.Web.UI.Page
    {
        string sqlconn = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            name_txt.Text = "";

        }

        void InsertQuery()
        {
            SqlConnection conn = new SqlConnection(sqlconn);
            SqlCommand cmd = conn.CreateCommand();
            try
            {
                conn.Open();
                string sqlquery = "insert into member_tb(full_Name,dob,contact_Number,email,State_,city,pincode,full_Address,username,u_password) values('" + name_txt.Text.ToString() + "','" + dob_txt.Text.ToString() + "','" + num_txt.Text.ToString() + "','" + email_txt.Text.ToString() + "','" + State_list.SelectedItem.Value.ToString() + "','" + city_txt.Text.ToString() + "','" + pincode_txt.Text.ToString() + "','" + address_txt.Text.ToString() + "','" + uname_txt.Text.ToString() + "','" + upass_txt.Text.ToString() + "')";

                cmd = new SqlCommand(sqlquery, conn);
                int result = cmd.ExecuteNonQuery();

                if (result > 0)
                {
                    Response.Write("<script> alert('Success'); </script>");
                }
                else
                {
                    Response.Write("<script> alert('nothing');</script>");
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script> alert('" + ex.Message.ToString() + "');</script>");
            }
            finally
            {
                conn.Close();
                cmd.Dispose();
            }
        }



        protected void signup_btn_Click(object sender, EventArgs e)
        {
            if(name_txt.Text == "" || dob_txt.Text == "" || num_txt.Text == "" || email_txt.Text == "" || State_list.Text == "" || city_txt.Text == "" || pincode_txt.Text == "" || address_txt.Text == "" || uname_txt.Text == "" || upass_txt.Text == "")
            {
                Response.Write("<script> alert('Please fill all the Details');</script>");
            }
            else
            {
                bool IsUserNameExist;

                SqlConnection conn = new SqlConnection(sqlconn);
                SqlCommand cmd = new SqlCommand();

                try

                {
                    conn.Open();
                    string sqlquery = "select * from member_tb where username='" + uname_txt.Text.ToString() + "';";
                    cmd = new SqlCommand(sqlquery, conn);
                    SqlDataAdapter sda = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    sda.Fill(dt);

                    if (dt.Rows.Count >= 1)
                    {
                        IsUserNameExist = true;
                    }
                    else
                    {
                        IsUserNameExist = false;
                    }

                    if (IsUserNameExist)
                    {
                        Response.Write("<script> alert('This username already exist');</script>");
                    }
                    else
                    {
                        InsertQuery();
                    }
                }
                catch (Exception ex)
                {
                    Response.Write("<script> alert('" + ex.Message.ToString() + "');</script>");
                }
                finally { 
                    conn.Close(); 
                    cmd.Dispose();
                }
            }
           


        }
    }
}