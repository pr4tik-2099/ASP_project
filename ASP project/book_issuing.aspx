<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page.Master" AutoEventWireup="true" CodeBehind="book_issuing.aspx.cs" Inherits="ASP_project.book_issuing" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="con container-fluid">
        <form runat="server">
        <div class="row">

            <div class="col-md-5 mx-auto">
                
                <div class="card border-info border-2">
                    <div class="card-body">

                        <div class="row row1">
                            <div class="col">
                                <center>
                                    <img src="images/books%20(1).png" width="90"/>
                                </center>
                            </div>
                        </div>
                      
                        <div class="row row2" ">
                            <div class="col">
                                <center>
                                    <h3>BOOK ISSUING</h3>
                                    <hr />
                                </center>
                            </div>
                        </div>

                        <div class="row row3">
                          
                            <div class="col col-md-6 form-floating mb-3 form-group">
                                    <asp:Label ID="member_id" runat="server" Text="Member_ID"></asp:Label>
                                  <div>
                                       <asp:TextBox ID="memberid_txt" runat="server" CssClass=" txt_l form-control border-info border-2"></asp:TextBox>
                                  </div>
                                               
                            </div>

                            <div class="col col-md-6  form-floating mb-3 form-group">
                               <asp:Label ID="book_id" runat="server" Text="Book_ID"></asp:Label>
                                  <div>
                                    <asp:TextBox ID="bookid_txt" runat="server" CssClass=" txt_l form-control border-info border-2"></asp:TextBox>
                                  </div>
                            </div>
                        </div>

                        <div class="row row4">
                          
                            <div class="col col-md-6 form-floating mb-3 form-group">
                                <asp:Label ID="member_name" runat="server" Text="Member Name"></asp:Label>
                                  <div>                  
                                      <asp:TextBox ID="membername_txt" runat="server" CssClass="txt_l form-control border-info border-2" placeholder=""></asp:TextBox>
                                  </div>
                            </div>

                            <div class="col col-md-6  form-floating mb-3 form-group">
                                    <asp:Label ID="book_name" runat="server" Text="Book Name"></asp:Label>
                                  <div>
                                      <asp:TextBox ID="bookname_txt" runat="server" CssClass="txt_l form-control border-info border-2"></asp:TextBox>
                                  </div>
                            </div>

                        </div>


                        <div class="row row7">
                            <div class="col col-md-6 form-floating mb-3 form-group">
                                    <asp:Label ID="startDate" runat="server" Text="Start Date"></asp:Label>
                                 <center>
                                     <asp:TextBox ID="startDate_txt" runat="server" CssClass=" txt_l form-control border-info border-2"  TextMode="DateTime" placeholder="dd-mm-yyyy"></asp:TextBox>
                                  </center>
                            </div>

                            <div class="col col-md-6  form-floating mb-3 form-group">
                               <asp:Label ID="endDate" runat="server" Text="End Date"></asp:Label>
                                  <center>
                                      <asp:TextBox ID="endDate_txt" runat="server" CssClass=" txt_l form-control border-info border-2" TextMode="DateTime" placeholder="dd-mm-yyyy"></asp:TextBox>
                                  </center>
                            </div>

                        </div>
                        
                          <div class="form-group l_btn mx-auto col-12 ">
                              <center>
                                  <asp:Button ID="login_btn" runat="server" Text="Delete" class="btn lbtn btn-danger" Width="150px"/>
                                   <asp:Button ID="delete" runat="server" Text="Update" class="btn lbtn btn-success" Width="150px"/>
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
                                    <h4>ISSUED BOOKS LIST</h4>
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
