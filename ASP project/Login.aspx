<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ASP_project.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Login_Css.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
           <div class="col-md-6 mx-auto boxx">
              <div class="card-body">

                  <div class="row1">
                      <div class="col">
                          <center>
                              <img src="images/boy.png" width="150" />
                          </center>
                      </div>
                  </div>

                  <div class="row2">
                      <div class="col">
                          <center>
                              <h3> USER LOGIN </h3>
                          </center>
                      </div>
                  </div>     

                  <div class="row3">

                      

                        <div class="col form-floating mb-3">
                          <div class="form-group">
                               <label for="floatingInput" class="username">User Name</label>
                              <center>
                                  <asp:TextBox ID="username_txt" runat="server" CssClass="Txt_box form-control" SkinID="floatingInput">
                                  </asp:TextBox>
                              </center>
                          </div>
                      </div>

                        <div class="col form-floating mb-3">
                          <div class="form-group">
                               <label for="floatingInput" class="password">Password</label>
                              <center>
                                  <asp:TextBox ID="pass_txt" runat="server" CssClass="Txt_box form-control" SkinID="floatingInput" TextMode="Password">
                                  </asp:TextBox>
                              </center>
                          </div>
                      </div>

                          <div class="form-group l_btn">
                              <center>
                                 <a href="Sign_Up_Page.aspx"> <input id="signup_btn" type="button" value="Sign Up" class="btn lbtn btn-info form-control"/> </a>
                                  <asp:Button ID="login_btn" runat="server" Text="Login" class="btn lbtn btn-success form-control" OnClick="login_btn_Click" />
                              </center>
                          </div>
                    
                      
                 </div>

              </div>
           </div>
        </div>
    </div>
</asp:Content>
