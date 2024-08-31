<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page.Master" AutoEventWireup="true" CodeBehind="publisher.aspx.cs" Inherits="ASP_project.publisher" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <div class="con container-fluid">
        <div class="row">

            <div class="col-md-5 mx-auto">
                
                <div class="card">
                    <div class="card-body">

                        <div class="row row1">
                            <div class="col">
                                <center>
                                  <img src="images/document%20(1).png" height="90"/>
                                </center>
                            </div>
                        </div>
                      
                        <div class="row row2" ">
                            <div class="col">
                                <center>
                                    <h3>Publisher</h3>
                                    <hr />
                                </center>
                            </div>
                        </div>

                 
                        <div class="row row3">
                          
                            <div class="col form-floating col-md-3 mb-3 ">
                                <asp:Label ID="pubId" runat="server" Text="Publisher ID"></asp:Label>
                                  <div class="form-group input-group">
                                      <asp:TextBox ID="publisherId_txt" runat="server" CssClass="txt_l form-control border-dark border-2"></asp:TextBox>
                                      <asp:Button ID="go" runat="server" Text="Go" CssClass="btn btn-outline-info border-2"/>
                                  </div>    
                            </div>

                            <div class="col col-md-9 form-floating mb-3 ">
                                <asp:Label ID="pubname" runat="server" Text="Publisher Name"></asp:Label>
                                   <div class="form-group">
                                      <asp:TextBox ID="publisherName_txt" runat="server" CssClass=" txt_l form-control border-dark border-2"></asp:TextBox>
                                   </div>
                            </div>

                        </div>


                       
                        
                          <div class="form-group l_btn">
                             <div class="col-15">
                               <center>
                                  <asp:Button ID="add_btn" runat="server" Text="Add" class="btn lbtn btn-dark"/>
                                  <asp:Button ID="update_btn" runat="server" Text="Update" class="btn lbtn btn-info"/>
                                  <asp:Button ID="delete_btn" runat="server" Text="Delete" class="btn lbtn btn-danger"/>
                               </center>
                             </div>
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
                                    <h4>AUTHORS LIST</h4>
                                    <hr />
                                </center>
                            </div>
                        </div>

                         <div class="row row3">
                            <div class="col">
                                <asp:GridView ID="user_gridview" CssClass="table table-dark table-bordered border-info" runat="server"></asp:GridView>
                            </div>
                        </div>


                    </div>
                 </div>
            </div>

       
        </div>
    </div>

</asp:Content>
