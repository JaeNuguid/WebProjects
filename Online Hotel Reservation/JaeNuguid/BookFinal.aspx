<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="BookFinal.aspx.cs" Inherits="JaeNuguid.BookFinal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body{
            background: url('/Images/hotelbg2.jpg');
            background-size: cover;
        }

        #logo3 {
            width:180px;
            text-align: center;
        }


        .reg-form{
            background-color: rgb(255, 255, 255);
            margin: 80px 0;
            padding: 20px;
            border-radius: 15px;
        }

        .row{
            margin-top: 20px;
        }

        .margin-right{
            margin-right: 30px;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <div class="container">
        <div class="row">
            <!-- regform -->
            <div class="col-md-3"></div>
            <div class="reg-form col-md-6 offset-md-3 col-xs-12">
                <div class="text-center">
                    <img id="logo3" src="Images/ASPLogo.png" />
                    <h3>Book Summary:</h3>
                </div>
                <table class="table table-hover table-striped table-sm">
                    <tr>
                        <td><strong>Full Name: </strong></td>
                        <td><asp:Label runat="server" ID="firstName"/>&nbsp;<asp:Label runat="server" ID="lastName"/></td>
                    </tr>
                    <tr>
                        <td><strong>Room Type: </strong></td>
                        <td><asp:Label runat="server" ID="RoomType"/></td>
                    </tr>
                    
                    <tr>
                        <td><strong>Room Number: </strong></td>
                        <td><asp:Label runat="server" ID="RoomNo"/></td>
                    </tr>
                    
                    <tr>
                        <td><strong>Number of Guests: </strong></td>
                        <td><asp:Label runat="server" ID="Guests"/></td>
                    </tr>
                    <tr>
                        <td><strong>Total Price: </strong></td>
                        <td><asp:Label runat="server" ID="TotalPrice"/></td>
                    </tr>
                    <tr>
                        <td><strong>Check In Date: </strong></td>
                        <td><asp:Label runat="server" ID="CheckInDate"/></td>
                    </tr>
                    <tr>
                        <td><strong>Check Out Date: </strong></td>
                        <td><asp:Label runat="server" ID="CheckOutDate"/></td>
                    </tr>
                </table>

                <div class="form-group">
                    <asp:Button runat="server" CssClass="btn btn-primary btn-block" Text="CONFIRM" OnClick="Unnamed1_Click"/>
                </div>
                <a href="Book.aspx" class="text-center">Reset</a>
            </div> <!-- reg form -->
        </div>
    </div>
</asp:Content>
