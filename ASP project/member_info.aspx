<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page.Master" AutoEventWireup="true" CodeBehind="member_info.aspx.cs" Inherits="ASP_project.member_info" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <div class="con container-fluid">
       <form runat="server">
        <div class="row">

            <div class="col-md-5 mx-auto">
                
                <div class="card">
                    <div class="card-body">

                        <div class="row row1">
                            <div class="col">
                                <center>
                                    <img src="images/profile.png" width="75"/>
                                </center>
                            </div>
                        </div>
                      
                        <div class="row row2">
                            <div class="col">
                                <center>
                                    <h5>MEMBER DETAILS</h5>
                                    <hr />
                                </center>
                            </div>
                        </div>

                 
                        <div class="row row3">
                          
                            <div class="col col-md-3 form-floating mb-3 form-group">
                                    <asp:Label ID="member_id" runat="server" Text="Member_ID"></asp:Label>
                                  <div class="input-group">
                                       <asp:TextBox ID="memberid_txt" runat="server" CssClass=" txt_l form-control"></asp:TextBox>
                                      <asp:Button ID="go_btn" runat="server" Text="GO" class="btn btn-outline-info" />
                                  </div>
                                               
                            </div>

                            <div class="col col-md-4  form-floating mb-3 form-group">
                               <asp:Label ID="fullName_id" runat="server" Text="Full Name"></asp:Label>
                                  <div>
                                      <asp:TextBox ID="fullName_txt" runat="server" CssClass=" txt_l form-control" ReadOnly="True"></asp:TextBox>
                                  </div>
                            </div>

                            <div class="col col-md-5  form-floating mb-3 form-group">
                              <asp:Label ID="actStatus" runat="server" Text="Account Status"></asp:Label>
                                 <div class="input-group">
                                     <asp:TextBox ID="actStatus_txt" runat="server" CssClass=" txt_l form-control" ReadOnly="True"></asp:TextBox>
                                   <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-outline-success "><i class="fa-regular fa-circle-check"></i></asp:LinkButton>
                                   <asp:LinkButton ID="LinkButton2" runat="server" CssClass="btn btn-outline-warning "><i class="fa-solid fa-spinner"></i></asp:LinkButton>
                                   <asp:LinkButton ID="LinkButton3" runat="server" CssClass="btn btn-outline-danger "><i class="fa-solid fa-xmark"></i></asp:LinkButton>
                                 </div>
                           </div>
                        </div>

                        <div class="row row4">
                          
                            <div class="col col-md-4 form-floating mb-3 form-group">
                                <asp:Label ID="dob" runat="server" Text="Date Of Birth"></asp:Label>
                                  <div>                  
                                      <asp:TextBox ID="dob_txt" runat="server" CssClass="txt_l form-control" placeholder="" ReadOnly="True"></asp:TextBox>
                                  </div>
                            </div>

                            <div class="col col-md-4  form-floating mb-3 form-group">
                                    <asp:Label ID="contact" runat="server" Text="Contact No"></asp:Label>
                                  <div>
                                      <asp:TextBox ID="contact_txt" runat="server" CssClass="txt_l form-control" ReadOnly="True"></asp:TextBox>
                                  </div>
                            </div>

                            <div class="col col-md-4  form-floating mb-3 form-group">
                                    <asp:Label ID="email" runat="server" Text="Email ID"></asp:Label>
                                  <div>
                                      <asp:TextBox ID="email_txt" runat="server" CssClass="txt_l form-control" ReadOnly="True"></asp:TextBox>
                                  </div>
                            </div>

                        </div>


                        <div class="row row7">
                            <div class="col col-md-4 form-floating mb-3 form-group">
                                    <asp:Label ID="state" runat="server" Text="State"></asp:Label>
                                 <center>
                                     <asp:TextBox ID="state_city" runat="server" CssClass=" txt_l form-control" placeholder="" ReadOnly="True"></asp:TextBox>
                                 </center>
                            </div>

                            <div class="col col-md-4  form-floating mb-3 form-group">
                               <asp:Label ID="city" runat="server" Text="City"></asp:Label>
                                  <center>
                                      <asp:TextBox ID="city_txt" runat="server" CssClass=" txt_l form-control" placeholder="" ReadOnly="True"></asp:TextBox>
                                  </center>
                            </div>

                            <div class="col col-md-4  form-floating mb-3 form-group">
                               <asp:Label ID="Pincode" runat="server" Text="Pin Code"></asp:Label>
                                  <center>
                                      <asp:TextBox ID="pinCode_txt" runat="server" CssClass=" txt_l form-control" placeholder="" ReadOnly="True"></asp:TextBox>
                                  </center>
                            </div>
                           
                            <div class="row row8">
                                <div class="col col-md-12 form-group mb-3">
                                <asp:Label ID="address" runat="server" Text="Address"></asp:Label>
                                  <center>
                                      <asp:TextBox ID="address_txt" runat="server" CssClass=" txt_l form-control" placeholder="" ReadOnly="True" TextMode="MultiLine"></asp:TextBox>
                                  </center>                                    
                                </div>
                            </div>
                        </div>
                        
                          <div class="form-group l_btn mx-auto col-12 form-group">
                              <center>
                                  <asp:Button ID="login_btn" runat="server" Text="Delete User" class="btn lbtn btn-danger form-control" Width="250px"/>
                              </center>
                          </div>

                    </div>
                </div>
            </div>

            <div class="col-md-7">
                  <div class="card">
                    <div class="card-body">

                        
                      
                        <div class="row row2" ">
                            <div class="col">
                                <center>
                                    <h4 style="color:darkviolet">ISSUED BOOKS LIST</h4>
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
