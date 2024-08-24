<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page.Master" AutoEventWireup="true" CodeBehind="User_Profile.aspx.cs" Inherits="ASP_project.User_Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Use_Profile.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="con container-fluid">
        <form runat="server">
        <div class="row">

            <div class="col-md-6 mx-auto">
                
                <div class="card">
                    <div class="card-body">

                        <div class="row row1">
                            <div class="col">
                                <center>
                                  <img src="images/profile.png" width="100"/>
                                </center>
                            </div>
                        </div>
                      
                        <div class="row row2" ">
                            <div class="col">
                                <center>
                                    <h3>YOUR PROFILE</h3>
                                    <span>Account Status</span>
                                    <asp:Label ID="Label8" runat="server" Text="Active" class="badge rounded-pill text-bg-success"></asp:Label>
                                    <hr />
                                </center>
                            </div>
                        </div>

                        <div class="row row3">
                          
                            <div class="col col-md-6 form-floating mb-3 form-group">
                                    <asp:Label ID="name_lbl" runat="server" Text="Name"></asp:Label>
                                  <div>
                                       <asp:TextBox ID="name_txt" runat="server" CssClass=" txt_l form-control border-info"></asp:TextBox>
                                  </div>
                                   
                                  
                            </div>

                            <div class="col col-md-6  form-floating mb-3 form-group">
                               <asp:Label ID="email_lbl" runat="server" Text="Email ID"></asp:Label>
                                  <div>
                                    <asp:TextBox ID="email_txt" runat="server" CssClass=" txt_l form-control  border-info"></asp:TextBox>
                                  </div>
                            </div>
                        </div>
                        <div class="row row4">
                          
                            <div class="col col-md-6 form-floating mb-3 form-group">
                                <asp:Label ID="Label1" runat="server" Text="Date of Birth"></asp:Label>
                                  <div>                  
                                      <asp:TextBox ID="dob_txt" runat="server" CssClass="txt_l form-control  border-info" TextMode="DateTime" placeholder="dd-mm-yyyy"></asp:TextBox>
                                  </div>
                            </div>

                            <div class="col col-md-6  form-floating mb-3 form-group">
                                    <asp:Label ID="Label2" runat="server" Text="Contact Number"></asp:Label>
                                  <div>
                                      <asp:TextBox ID="num_txt" runat="server" CssClass="txt_l form-control  border-info" TextMode="Number"></asp:TextBox>
                                  </div>
                            </div>

                        </div>

                        <div class="row row5">
                          
                            <div class="col col-md-4 form-floating mb-3 form-group">
                                <asp:Label ID="state_lbl" runat="server" Text="State"></asp:Label>   
                                <div>
                                    <asp:DropDownList ID="State_list" runat="server" CssClass="txt_box form-control  border-info">

                                         <asp:listItem Text="select" Value="Select" />
                                         <asp:listItem Text="West Bengal" Value="West Bengal" />
                                         <asp:listItem Text="Andra Pradesh" Value="Andra Pradesh" />
                                         <asp:listItem Text="Bihar" Value="Bihar" />
                                         <asp:listItem Text="Uttar Pradesh" Value="Uttar Pradesh" />
                                         <asp:listItem Text="Kashmir" Value="Kashmir" />
                                    </asp:DropDownList>
                                     
                                  </div>
                            </div>

                            <div class="col col-md-4  form-floating mb-3 form-group">
                               <asp:Label ID="Label4" runat="server" Text="City"></asp:Label>
                                  <center>
                                    <asp:TextBox ID="TextBox2" runat="server" CssClass="txt_box form-control  border-info"></asp:TextBox>
                                  </center>
                            </div>

                             <div class="col col-md-4  form-floating mb-3 form-group">
                                  <asp:Label ID="Label5" runat="server" Text="Pin code"></asp:Label>
                                  <center>
                                      <asp:TextBox ID="TextBox3" runat="server" CssClass="txt_box form-control  border-info" TextMode="Number"></asp:TextBox>
                                  </center>
                            </div>

                        </div>

                        <div class="row row6">
                          
                            <div class="col col-md-12 form-floating mb-3 form-group">
                                  
                                    <asp:Label ID="Label6" runat="server" Text="Address"></asp:Label>
                                    <asp:TextBox ID="address_txt" runat="server" CssClass=" form-control  border-info" TextMode="MultiLine" Style="" Rows="2"></asp:TextBox>
                                
                            </div>
                        </div>

                        <div class="row row7">
                            <center>
                                <h5 style="margin-bottom:40px;margin-top:40px;background-color:magenta;border-radius:20px;width:220px;color:aliceblue;height:28px">Login Credentials</h5>
                            </center>
                            <div class="col col-md-4 form-floating mb-3 form-group">
                                    <asp:Label ID="Label3" runat="server" Text="UserName"></asp:Label>
                                 <center>
                                     <asp:TextBox ID="uname_txt" runat="server" CssClass=" txt_l form-control  border-info" ReadOnly="True"></asp:TextBox>
                                  </center>
                            </div>

                            <div class="col col-md-4  form-floating mb-3 form-group">
                               <asp:Label ID="Label7" runat="server" Text="Old Password"></asp:Label>
                                  <center>
                                      <asp:TextBox ID="upass_txt" runat="server" CssClass=" txt_l form-control  border-info" TextMode="Password" ReadOnly="True"></asp:TextBox>
                                  </center>
                            </div>

                            <div class="col col-md-4  form-floating mb-3 form-group">
                               <asp:Label ID="Label9" runat="server" Text="New Password"></asp:Label>
                                  <center>
                                      <asp:TextBox ID="newpass_txt" runat="server" CssClass=" txt_l form-control  border-info" TextMode="Password"></asp:TextBox>
                                  </center>
                            </div>
                        </div>
                        
                          <div class="form-group l_btn">
                              <center>
                                  <asp:Button ID="login_btn" runat="server" Text="Update" class="btn lbtn btn-info"/>
                              </center>
                          </div>

                  

                    </div>
                </div>
            </div>

            <div class="col-md-6">
                  <div class="card">
                    <div class="card-body">

                        <div class="row row1">
                            <div class="col">
                                <center>
                                    <img src="images/books%20(1).png" width="80"/>
                                </center>
                            </div>
                        </div>
                      
                        <div class="row row2" ">
                            <div class="col">
                                <center>
                                    <h4>ISSUED BOOKS</h4>
                                    <asp:Label ID="Label10" runat="server" Text="Books Info" class="badge rounded-pill text-bg-primary"></asp:Label>
                                    <hr />
                                </center>
                            </div>
                        </div>

                      

                         <div class="row row3">
                            <div class="col">
                                <asp:GridView ID="user_gridview" CssClass="table table-dark table-bordered border-light" runat="server"></asp:GridView>
                            </div>
                        </div>



                    </div>
                 </div>
            </div>


        </div>
      </form>
    </div>

</asp:Content>
