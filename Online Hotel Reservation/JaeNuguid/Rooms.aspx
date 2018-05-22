<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Rooms.aspx.cs" Inherits="JaeNuguid.Rooms" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>
        #top-section{
            background-image: url('Images/room_bg.jpg');
            background-size: cover;
            background-repeat: no-repeat;
            height: 255px;
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

       .card{
           /* padding: 100px;*/
       }

       
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
    <section id="top-section">

        <h1 class="display-4 text-white-5 header">ROOMS AND RATES</h1>
        <p class="lead text-white-5">Book now your desired Luxury hotel with ASP.net hotel</p>

    </section>

    <section id="mid-section">
        <div class="container">
            <h1 class="text-center">ASP.NET HOTEL RATES</h1>
            <hr />
            <div class="row feauterette">
                <div class="col-md-4">
                    <div class="card">
                        <img class="card-img-top" src="Images/image1.png" />
                        <div class="card-body">
                            <div class="card-title">
                                DELUXE ROOM
                                <small class="text-muted">Available: 15 rooms</small>
                            </div>
                            <div class="card-text">    
                                Perfect for the modern professional, the Deluxe Rooms at our hotel feature the choice of a king-sized bed or twin beds, a well-appointed work area and complime...
                            </div>

                            <br />
                            <asp:Button runat="server" CssClass="btn btn-primary btn-block"  Text="BOOK NOW" OnClick="Unnamed1_Click"/>

                        </div>
                    </div>
                </div>
                
                 <div class="col-md-4">
                    <div class="card">
                        <img class="card-img-top" src="Images/img2.png" />
                        <div class="card-body">
                            <div class="card-title">
                                SUITES ROOM
                                <small class="text-muted">Available: 15 rooms</small>
                            </div>
                            <div class="card-text">    
                                Bathed in natural light, the Superior Rooms at our hotel in Malate offer spacious comfort with warm wood furnishings, modern amenities and the choice of a king-...
                            </div>
                            <br />
                            <asp:Button runat="server" CssClass="btn btn-primary btn-block"  Text="BOOK NOW" OnClick="Unnamed2_Click"/>
                        </div>
                    </div>
                </div>
                
                 <div class="col-md-4">
                    <div class="card">
                        <img class="card-img-top" src="Images/img3.png" />
                        <div class="card-body">
                            <div class="card-title">
                                REGULAR ROOM
                                <small class="text-muted">Available: 10 rooms</small>
                            </div>
                            <div class="card-text">    
                                Designed with the modern professional in mind, the spacious 40 to 48sqm (431 to 517sq-ft) Executive Rooms at our hotel near Star City feature the choice of a king-...
                            </div>

                            <br />
                            <asp:Button runat="server" CssClass="btn btn-primary btn-block"  Text="BOOK NOW" OnClick="Unnamed3_Click"/>
                        </div>
                    </div>
                </div>
            </div>

            <hr />

        </div>
    </section>


</asp:Content>
