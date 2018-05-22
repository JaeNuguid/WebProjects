<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="JaeNuguid.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>
        #top-section{
            background-image: url('Images/hotel-cover.jpg');
            background-size: cover;
            background-repeat: no-repeat;
            height: 400px;
        }

       section{
           padding: 50px;
       }

       img{
           vertical-align: middle;
       }

       #img1{
           width: 700px;
           float:right;
       }

       .right{
           float:right;
       }

       .v-align{
          display:inline-block;
          vertical-align:middle;
       }

       .feauterette{
           margin-top: 50px;
       }

       .align-items-center{
               align-items: center!important;
       }

       .col-md-5{
           padding: 100px 30px;
       }

       .header{
           margin-top: 50px;
       }

    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section id="top-section">
        <h1 class="display-1 text-center text-white header">ASP.NET HOTEL</h1>
        <p class="lead text-center text-white">Developed by Michael Ian Santiago, John Ariel, Jae Allen Nuguid</p>
    </section>

    <section id="mid-section">
        <div class="container">
            <div class="row feauterette">
                <div class="col-md-5">
                    <div class="text-center">
                        <h2 class="featurette-heading">STAY AND ENJOY</h2>
                        <p class="lead">A luxury hotel in Dasmarinas with a sunset view, Asp Hotel is only minutes away from the following places: Cultural Center of the Philippines (CCP) Philippine International Convention Center (PICC) SM Mall of Asia.</p>
                   
                        <div class="form-group">
                            <a href="About.aspx" class="btn btn-lg btn-primary btn-block">ABOUT US</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-7 right">
                    <img src="Images/f_img_1.png" class="img-fluid"/>
                </div>

            </div>

            <hr />

            <div class="row feauterette">
                <div class="col-md-7">
                    <img src="Images/big_image_1.jpg" class="img-fluid"/>
                </div>
                
                <div class="col-md-5">
                    <div class="text-center">
                        <h2 class="featurette-heading">ROOM AND RATES</h2>
                        <p class="lead">Start booking your favorite luxury rooms. Check out our rates for different rooms with fully air-condition rooms, swimming pool and wifi connection!</p>
                   
                        <div class="form-group">
                            <a href="Rooms.aspx" class="btn btn-lg btn-primary btn-block">BOOK NOW</a>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </section>



</asp:Content>
