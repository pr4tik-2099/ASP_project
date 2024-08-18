<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page.Master" AutoEventWireup="true" CodeBehind="Sign_Up_Page.aspx.cs" Inherits="ASP_project.Sign_Up_Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Sign_Up.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-10 mx-auto">
                
                <div class="card">
                    <div class="card-body">

                        <div class="row row1">
                            <div class="col">
                                <center>
                                  <img src="images/profile.png" width="120"/>
                                </center>
                            </div>
                        </div>
                      
                        <div class="row row2">
                            <div class="col">
                                <center>
                                    <h3>USER SIGN UP</h3>
                                </center>
                            </div>
                        </div>

                     <form runat="server">
                        <div class="row row3">
                          
                            <div class="col col-md-6 form-floating mb-3 form-group">
                                    <asp:Label ID="name_lbl" runat="server" Text="Name"></asp:Label>
                                 <center>
                                    <asp:TextBox ID="name_txt" runat="server" CssClass=" txt_l"></asp:TextBox>
                                  </center>
                            </div>

                            <div class="col col-md-6  form-floating mb-3 form-group">
                               <asp:Label ID="email_lbl" runat="server" Text="Email ID"></asp:Label>
                                  <center>
                                    <asp:TextBox ID="email_txt" runat="server" CssClass=" txt_l"></asp:TextBox>
                                  </center>
                            </div>
                        </div>
                        <div class="row row4">
                          
                            <div class="col col-md-6 form-floating mb-3 form-group">
                                <asp:Label ID="Label1" runat="server" Text="Date of Birth"></asp:Label>
                                  <center>                  
                                      <asp:TextBox ID="dob_txt" runat="server" CssClass="txt_l" TextMode="DateTime" placeholder="dd-mm-yyyy"></asp:TextBox>
                                  </center>
                            </div>

                            <div class="col col-md-6  form-floating mb-3 form-group">
                                    <asp:Label ID="Label2" runat="server" Text="Contact Number"></asp:Label>
                                  <center>
                                      <asp:TextBox ID="num_txt" runat="server" CssClass="txt_l" TextMode="Number"></asp:TextBox>
                                  </center>
                            </div>

                        </div>

                        <div class="row row5">
                          
                            <div class="col col-md-4 form-floating mb-3 form-group">
                                <asp:Label ID="state_lbl" runat="server" Text="State"></asp:Label>   
                                <center>
                                    <asp:DropDownList ID="State_list" runat="server" CssClass="txt_box">

                                         <asp:listItem Text="select" Value="Select" />
                                         <asp:listItem Text="West Bengal" Value="West Bengal" />
                                         <asp:listItem Text="Andra Pradesh" Value="Andra Pradesh" />
                                         <asp:listItem Text="Bihar" Value="Bihar" />
                                         <asp:listItem Text="Uttar Pradesh" Value="Uttar Pradesh" />
                                         <asp:listItem Text="Kashmir" Value="Kashmir" />
                                    </asp:DropDownList>
                                     
                                  </center>
                            </div>

                            <div class="col col-md-4  form-floating mb-3 form-group">
                               <asp:Label ID="Label4" runat="server" Text="City"></asp:Label>
                                  <center>
                                    <asp:TextBox ID="TextBox2" runat="server" CssClass="txt_box"></asp:TextBox>
                                  </center>
                            </div>

                             <div class="col col-md-4  form-floating mb-3 form-group">
                                  <asp:Label ID="Label5" runat="server" Text="Pin code"></asp:Label>
                                  <center>
                                      <asp:TextBox ID="TextBox3" runat="server" CssClass="txt_box" TextMode="Number"></asp:TextBox>
                                  </center>
                            </div>

                        </div>

                        <div class="row row6">
                          
                            <div class="col col-md-12 form-floating mb-3 form-group">
                                  
                                    <asp:Label ID="Label6" runat="server" Text="Address"></asp:Label>
                                    <asp:TextBox ID="address_txt" runat="server" CssClass="" TextMode="MultiLine" Style="width:1100px"></asp:TextBox>
                                
                            </div>
                        </div>

                        <div class="row row7">
                            <center>
                                <h5 style="margin-bottom:40px;margin-top:40px;background-color:magenta;border-radius:20px;width:250px;color:aliceblue;height:28px">Login Credentials</h5>
                            </center>
                            <div class="col col-md-6 form-floating mb-3 form-group">
                                    <asp:Label ID="Label3" runat="server" Text="UserName"></asp:Label>
                                 <center>
                                    <asp:TextBox ID="uname_txt" runat="server" CssClass=" txt_l"></asp:TextBox>
                                  </center>
                            </div>

                            <div class="col col-md-6  form-floating mb-3 form-group">
                               <asp:Label ID="Label7" runat="server" Text="Password"></asp:Label>
                                  <center>
                                      <asp:TextBox ID="upass_txt" runat="server" CssClass=" txt_l" TextMode="Password"></asp:TextBox>
                                  </center>
                            </div>
                        </div>
                        
                          <div class="form-group l_btn">
                              <center>
                                  <asp:Button ID="login_btn" runat="server" Text="Sign Up" class="btn lbtn btn-success"/>
                              </center>
                          </div>

                    </form>

                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
