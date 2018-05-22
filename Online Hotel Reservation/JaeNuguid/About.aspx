<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="JaeNuguid.About" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>
        
        #top-section{
            background-image: url('Images/room_rates.jpg');
            background-size: cover;
            background-repeat: no-repeat;
            height: auto;
        }

        
       section{
           padding: 50px;
       }

       

       .feauterette{
           margin-top: 50px;
       }

       .align-items-center{
               align-items: center!important;
       }

       .header{
           margin-top: 50px;
       }


    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
    <section id="top-section">

        <h1 class="display-3 text-white header">ABOUT US</h1>
        <p class="lead text-white">Book now your desired Luxury hotel</p>

    </section>

    <section>
        <h1 class="text-center display-4">THE ASP.NET HOTEL HISTORY</h1>
            <hr />
            <div class="row feauterette">
                <div class="col-md-3">
                    <img src="Images/corniche.jpg" class="img-fluid"/>
                </div>
                
                <div class="col-md-9">
                    <h3>Magnificent luxury hotel</h3>
                    <p>Set against the magnificent golden sunset of the Dasmarinas is ASP.Net Hotel Philippines, 
                        a 5-star hotel minutes away from the airport, convention centers, cultural sites, historical 
                        landmarks and shopping destinations.</p>
                    <p>ASP.Net Hotel has a variety of restaurants and bars specializing in different cuisines, offering guests 
                        a delightful experience. Luxurious function rooms are available for corporate events, meetings, weddings and parties.
                        The Health Club and Spa, swimming pool, outdoor whirlpool, tennis court, LifeSpan Reflexology, and gym are all perfect
                        for a holiday filled with recreational and fitness activities.</p>
                    <p>Guests are guaranteed a wonderful experience of comfort, luxury and impeccable service at ASP.Net Hotel. Stay and experience the 
                        renowned Diamond Service by the hotel's gracious associates.</p>

                    <div class="form-group">
                            <asp:Button CssClass="btn btn-primary btn-lg" runat="server" Text="BOOK NOW" OnClick="Unnamed1_Click" />
                    </div>
                    
                    <!--<div class="text-center">
                        <h2 class="featurette-heading">ROOM AND RATES</h2>
                        <p class="lead">Start booking your favorite luxury rooms. Check out our rates for different rooms with fully air-condition rooms, swimming pool and wifi connection!</p>
                   
                        <div class="form-group">
                            <button class="btn btn-lg btn-primary btn-block">BOOK NOW</button>
                        </div>
                    </div>-->
                </div>
            </div>
    </section>

</asp:Content>
