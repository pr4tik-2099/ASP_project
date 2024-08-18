<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="ASP_project.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Home_Page_Style.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="heading">
        <h1 id="hd1" class="display-3">ONLINE LIBRARY</h1>
    </div>

    <div class="container">
        <div class="row" id="row1">
            <div class="col-12">
                <center>
                   <h3>FEATURES</h3>
                </center>
              <div class="row" id="row2">
                <div class="col-md-4">
                    <center>
                        <img src="images/library.png" height="150" width="150"/>
                        <h5>100+ Books Available</h5>
                    </center>
                </div>
                <div class="col-md-4">
                    <center>
                        <img src="images/landing-page.png" height="150" width="150"/>
                        <h5>Search Books</h5>
                    </center>
                </div>
                 <div class="col-md-4">
                   <center>
                       <img src="images/work-in-progress.png" height="150" width="150"/>
                     <h5>Optimized Website</h5>
                   </center>
                 </div>
              </div>
            </div>
        </div>
    </div>
</asp:Content>
