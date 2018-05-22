<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Book.aspx.cs" Inherits="JaeNuguid.Book1" %>
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
            background-color: rgba(255, 255, 255, 0.8);
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
                    <h3>Booking details</h3>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="txtCheckin">Check-in</label>
                            <asp:TextBox id="txtCheckin" TextMode="Date" runat="server" CssClass="form-control"></asp:TextBox>
                            <!--<asp:RequiredFieldValidator Display="Dynamic" runat="server" ControlToValidate="txtCheckin" ErrorMessage="*Username is required!" ForeColor="Red"/>-->
                        </div>
                    </div>
                    <div class="col-md-6">
                            <div class="form-group">
                            <label for="txtCheckout">Check-out</label>
                            <asp:TextBox id="txtCheckout" TextMode="Date" runat="server" CssClass="form-control"></asp:TextBox>
                            <!--<asp:RequiredFieldValidator  Display="Dynamic"   runat="server" ControlToValidate="txtCheckout" ErrorMessage="*Password is required!" ForeColor="Red"/>-->
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <h4 class="text-center">Room Details</h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="roomtype">Room Type</label>
                            <asp:DropDownList CssClass="form-control" runat="server" ID="roomtype" AutoPostBack="true" OnSelectedIndexChanged="roomtype_SelectedIndexChanged" OnTextChanged="roomtype_TextChanged"  >
                                <asp:ListItem Text="Deluxe Room" Value="1" />
                                <asp:ListItem Text="Suites Room" Value="2" />
                                <asp:ListItem Text="Regular Room" Value="3" />
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="col-md-8">
                        <div class="form-group">
                            <label for="txtRoomNo">Room No</label>
                            <asp:DropDownList CssClass="form-control" runat="server" ID="RoomNo" AutoPostBack="true" OnSelectedIndexChanged="roomNo_SelectedIndexChanged" >
                            </asp:DropDownList>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="form-group col-md-6">
                        <label for="txtAdult" >Adults </label>
                        <asp:TextBox Text="0" id="txtAdult" runat="server" TextMode="Number" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="form-group col-md-6">
                        <label for="txtChild" >Child </label>
                        <asp:TextBox  Text="0" id="txtChild" runat="server" TextMode="Number" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <asp:Button id="btnSubmit" runat="server" CssClass="form-control btn btn-primary" Text="CALCULATE FEE" OnClick="btnSubmit_Click1" ></asp:Button>
                </div>
            </div> <!-- reg form -->
        </div>
    </div>
</asp:Content>
