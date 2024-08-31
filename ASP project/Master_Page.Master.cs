using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_project
{
    public partial class Master_Page : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"] == null)
                {
                    signUp_btn.ForeColor = System.Drawing.Color.Yellow;
                }
                else if (Session["role"].Equals("user"))
                {
                    logout_btn.Visible = true;
                    user_name.Visible = true;
                    user_name.Text = Session["username"].ToString();
                    login_btn.Visible = false;
                    signUp_btn.Visible = false;
                   
                }
                else if (Session["role"].Equals("admin"))
                {
                    user_name.Visible = true;
                    logout_btn.Visible = true;
                    user_name.Text = Session["username"].ToString();
                    login_btn.Visible = false;

                    admin_btn.Visible = false;
                    memMag_btn.Visible = true;
                    authorMag_btn.Visible = true;
                    pubMag_btn.Visible = true;
                    bookInv_btn.Visible = true;
                    bookIssu_btn.Visible = true;
                    signUp_btn.Visible = false;

                }
            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('"+ ex.Message.ToString() + "')</script>");
            }
            
            
        }

        protected void admin_btn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin_Login.aspx");
        }

        protected void authorMag_btn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Author.aspx");
        }

        protected void pubMag_btn_Click(object sender, EventArgs e)
        {
            Response.Redirect("publisher.aspx");
        }

        protected void bookInv_btn_Click(object sender, EventArgs e)
        {
            Response.Redirect("book_details.aspx");
        }

        protected void bookIssu_btn_Click(object sender, EventArgs e)
        {
            Response.Redirect("book_issuing.aspx");
        }

        protected void memMag_btn_Click(object sender, EventArgs e)
        {
            Response.Redirect("member_info.aspx");
        }


        protected void logout_btn_Click1(object sender, EventArgs e)
        {
            Session["role"] = null;
            user_name.Visible = false;
            login_btn.Visible = false;
            Session["username"] = null;
            login_btn.Visible = true;
            admin_btn.Visible = true;

            Response.Redirect("HomePage.aspx");
        }
    }
}