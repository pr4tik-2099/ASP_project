<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page.Master" AutoEventWireup="true" CodeBehind="book_details.aspx.cs" Inherits="ASP_project.book_details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <div class="con container-fluid">
        <div class="row">

            <div class="col-md-5 mx-auto">
                
                <div class="card">
                    <div class="card-body">

                        <div class="row row1">
                            <div class="col col-md-12 mb-2">
                                <center>
                                    <img src="images/books%20(1).png" width="75"/>
                                </center>
                            </div>
                        </div>
                      
                        <div class="row row2">
                            <div class="col mb-3">
                                <center>
                                    <h5>BOOK DETAILS</h5>
                                    <hr />
                                </center>
                            </div>
                        </div>

                           <div class="row">
                            <div class="col col-md-12 mb-3">
                                <center>
                                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control border-info border-2" /> 
                                </center>
                            </div>
                        </div>
                

                 
                        <div class="row row3">
                          
                            <div class="col col-md-4 form-floating mb-3 form-group">
                                    <asp:Label ID="book_id" runat="server" Text="Book ID"></asp:Label>
                                  <div class="input-group">
                                       <asp:TextBox ID="bookId_txt" runat="server" CssClass=" txt_l form-control border-primary"></asp:TextBox>
                                      <asp:Button ID="go_btn" runat="server" Text="GO" class="btn btn-outline-info border-2" />
                                  </div>
                                               
                            </div>

                            <div class="col col-md-8  form-floating mb-3 form-group">
                               <asp:Label ID="book_Name" runat="server" Text="Book Name"></asp:Label>
                                  <div>
                                      <asp:TextBox ID="bookName_txt" runat="server" CssClass=" txt_l form-control border-primary"></asp:TextBox>
                                  </div>
                            </div>


                        </div>

                        <div class="row row4">
                          
                            <div class="col col-md-4 form-floating form-group">
                                <asp:Label ID="lang" runat="server" Text="Language"></asp:Label>
                                <div>
                                    <asp:DropDownList ID="language_dl" runat="server" CssClass="txt_l form-control border-primary">

                                        <asp:ListItem Text="English" Value="English"></asp:ListItem>
                                        <asp:ListItem Text="Hindi" Value="Hindi"></asp:ListItem>
                                        <asp:ListItem Text="French" Value="french"></asp:ListItem>
                                        <asp:ListItem Text="German" Value="Marathi"></asp:ListItem>
                                        <asp:ListItem Text="Bengali" Value="bengali"></asp:ListItem>
                                        <asp:ListItem Text="Marathi" Value="Marathi"></asp:ListItem>
                                        <asp:ListItem Text="Bhojpuri" Value="Bhojpuri"></asp:ListItem>

                                    </asp:DropDownList>
                                </div>
                            </div>

                            <div class="col col-md-4  form-floating form-group">
                                    <asp:Label ID="author" runat="server" Text="Author Name"></asp:Label>
                                  <div>
                                    <asp:DropDownList ID="author_dl" runat="server" CssClass="txt_l form-control border-primary">

                                        <asp:ListItem Text="English" Value="English"></asp:ListItem>
                                        <asp:ListItem Text="Hindi" Value="Hindi"></asp:ListItem>
                                        <asp:ListItem Text="French" Value="french"></asp:ListItem>
                                        <asp:ListItem Text="German" Value="Marathi"></asp:ListItem>
                                        <asp:ListItem Text="Bengali" Value="bengali"></asp:ListItem>
                                        <asp:ListItem Text="Marathi" Value="Marathi"></asp:ListItem>
                                        <asp:ListItem Text="Bhojpuri" Value="Bhojpuri"></asp:ListItem>

                                    </asp:DropDownList>

                                  </div>
                            </div>

                            <div class="col col-md-4  form-floating form-group">
                                    <asp:Label ID="email" runat="server" Text="Genre"></asp:Label>
                                  <div>
                                      <asp:ListBox ID="ListBox1" runat="server" CssClass="txt_l form-control border-primary"  Rows="2">

                                      </asp:ListBox> 

                                  </div>
                            </div>

                        </div>

                        <div class="row row5">

                            <div class="col col-md-4 form-floating mb-3 form-group">
                                <asp:Label ID="pubName" runat="server" Text="Publisher Name"></asp:Label>
                                 <center>
                                    <asp:DropDownList ID="pubisher_db" runat="server" CssClass="txt_l form-control border-primary">

                                        <asp:ListItem Text="English" Value="English"></asp:ListItem>
                                        <asp:ListItem Text="Hindi" Value="Hindi"></asp:ListItem>
                                        <asp:ListItem Text="French" Value="french"></asp:ListItem>
                                        <asp:ListItem Text="German" Value="Marathi"></asp:ListItem>
                                        <asp:ListItem Text="Bengali" Value="bengali"></asp:ListItem>
                                        <asp:ListItem Text="Marathi" Value="Marathi"></asp:ListItem>
                                        <asp:ListItem Text="Bhojpuri" Value="Bhojpuri"></asp:ListItem>

                                    </asp:DropDownList>

                                 </center>
                            </div>

                            <div class="col col-md-4  form-floating mb-3 form-group">
                               <asp:Label ID="pubDate" runat="server" Text="Publish Date"></asp:Label>
                                  <center>
                                      <asp:TextBox ID="pubDate_txt" runat="server" CssClass=" txt_l form-control border-primary" placeholder=""></asp:TextBox>
                                  </center>
                            </div>


                        </div>



                        <div class="row row6">

                            <div class="col col-md-4 form-floating mb-3 form-group">
                                <asp:Label ID="edition" runat="server" Text="Edition"></asp:Label>
                                 <center>
                                     <asp:TextBox ID="edition_txt" runat="server" CssClass=" txt_l form-control border-primary" placeholder=""></asp:TextBox>
                                 </center>
                            </div>

                            <div class="col col-md-4  form-floating mb-3 form-group">
                               <asp:Label ID="cost" runat="server" Text="Cost"></asp:Label>
                                  <center>
                                      <asp:TextBox ID="cost_txt" runat="server" CssClass=" txt_l form-control border-primary" placeholder=""></asp:TextBox>
                                  </center>
                            </div>

                            <div class="col col-md-4  form-floating mb-3 form-group">
                               <asp:Label ID="pages" runat="server" Text="Pages"></asp:Label>
                                  <center>
                                      <asp:TextBox ID="pages_txt" runat="server" CssClass=" txt_l form-control border-primary" placeholder=""></asp:TextBox>
                                  </center>
                            </div>

                        </div>
                           
                            <div class="row row7">

                              <div class="col col-md-4 form-group mb-3">
                                <asp:Label ID="actStock" runat="server" Text="Actual Stock"></asp:Label>
                                  <center>
                                      <asp:TextBox ID="actualStock_txt" runat="server" CssClass=" txt_l form-control border-primary" placeholder=""></asp:TextBox>
                                  </center>                                    
                              </div>
                            

                              <div class="col col-md-4 form-group mb-3">
                                <asp:Label ID="currStock" runat="server" Text="Current Stock"></asp:Label>
                                  <center>
                                      <asp:TextBox ID="TextBox1" runat="server" CssClass=" txt_l form-control border-primary" placeholder=""></asp:TextBox>
                                  </center>                                    
                                </div>
                              

                              <div class="col col-md-4 form-group mb-3">
                                <asp:Label ID="issuedBooks" runat="server" Text="Issued Books"></asp:Label>
                                  <center>
                                     <asp:TextBox ID="issuedBooks_txt" runat="server" CssClass=" txt_l form-control border-primary" placeholder=""></asp:TextBox>
                                  </center>                                    
                              </div>
                          
                        </div>
                        
                            <div class="row row8">

                              <div class="col col-md-12 form-group mb-3">
                                <asp:Label ID="description" runat="server" Text="Book Description"></asp:Label>
                                  <center>
                                      <asp:TextBox ID="bookDescription_txt" runat="server" CssClass=" txt_l form-control border-primary" placeholder="" TextMode="MultiLine"></asp:TextBox>
                                  </center>                                    
                              </div>
                            
                            </div>

                          <div class="form-group l_btn mx-auto col-12 form-group">
                              <center>
                                  <asp:Button ID="add_btn" runat="server" Text="Add" class="btn lbtn btn-success form-control " Width="150px"/>
                                  <asp:Button ID="update_btn" runat="server" Text="Update" class="btn lbtn btn-info form-control " Width="150px"/>
                                  <asp:Button ID="delete_btn" runat="server" Text="Delete" class="btn lbtn btn-danger form-control " Width="150px"/>
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
    </div>

</asp:Content>
