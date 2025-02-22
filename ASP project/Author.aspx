<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page.Master" AutoEventWireup="true" CodeBehind="Author.aspx.cs" Inherits="ASP_project.Author" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready( function () {
             $('#ContentPlaceHolder1_author_gridview').prepend($("<thead></thead>").append($(this).find('tr:first'))).DataTable();

        });

      /* $(document).ready(function () {
            $("#author_gridview").prepend($("<thead></thead>").append($(this).find("tr:first"))).datable()
        });  */
    </script>

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
                                    <img src="images/writer.png" width="100"/>
                                </center>
                            </div>
                        </div>
                      
                        <div class="row row2" ">
                            <div class="col">
                                <center>
                                    <h3>AUTHOR</h3>
                                    <hr />
                                </center>
                            </div>
                        </div>

                 
                        <div class="row row3">
                          
                            <div class="col form-floating col-md-3 mb-3 ">
                                <asp:Label ID="autId" runat="server" Text="Author ID"></asp:Label>
                                  <div class="form-group input-group">
                                      <asp:TextBox ID="authorId_txt" runat="server" CssClass="txt_l form-control border-dark border-2"></asp:TextBox>
                                      <asp:Button ID="go" runat="server" Text="Go" CssClass="btn btn-outline-info border-2" OnClick="go_Click" />
                                  </div>    
                            </div>

                            <div class="col col-md-9 form-floating mb-3 ">
                                <asp:Label ID="autname" runat="server" Text="Author Name"></asp:Label>
                                   <div class="form-group">
                                      <asp:TextBox ID="autherName_txt" runat="server" CssClass=" txt_l form-control border-dark border-2"></asp:TextBox>
                                   </div>
                            </div>

                        </div>


                          <div class="form-group l_btn">
                             <div class="col-15">
                               <center>
                                   <asp:Button ID="add_btn" runat="server" Text="Add" class="btn lbtn btn-dark" ClientIDMode="Static" OnClick="add_btn_Click" />
                                   <asp:Button ID="update_btn" runat="server" Text="Update" class="btn lbtn btn-info" OnClick="update_btn_Click" />
                                   <asp:Button ID="delete_btn" runat="server" Text="Delete" class="btn lbtn btn-danger" OnClick="delete_btn_Click" />
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
                             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:publisherConnectionString %>" SelectCommand="SELECT * FROM [Author]" ProviderName="<%$ ConnectionStrings:publisherConnectionString.ProviderName %>"></asp:SqlDataSource>
                             <div class="col">
                                 <asp:GridView ID="author_gridview" CssClass="table table-dark table-bordered border-info" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="Author_Id">
                                     <Columns>
                                         <asp:BoundField DataField="Author_Id" HeaderText="Author_Id" ReadOnly="True" SortExpression="Author_Id"></asp:BoundField>
                                         <asp:BoundField DataField="Author_Name" HeaderText="Author_Name" SortExpression="Author_Name"></asp:BoundField>
                                     </Columns>
                                 </asp:GridView>
                            </div>
                        </div>


                    </div>
                 </div>
            </div>

       

        </div>
    </div>


</asp:Content>
