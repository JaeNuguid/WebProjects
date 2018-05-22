<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="HotelLogin.aspx.cs" Inherits="JaeNuguid.HotelLogin" %>

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

    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="container">
            <div class="row">

                <!-- regform -->
                <div class="col-md-3 col-xs-0"></div>
                <div class="reg-form col-md-6 offset-3 col-xs-12">
                    <div class="text-center">
                        <img id="logo3" src="Images/ASPLogo.png" />
                        <br />
                        Log in first to proceed
                    </div>
                    <div class="form-group">
                        <label for="txtUsername">Email Address</label>
                        <asp:TextBox id="txtUsername" TextMode="Email" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator Display="Dynamic" runat="server" ControlToValidate="txtUsername" ErrorMessage="*Username is required!" ForeColor="Red"/>
                    </div>

                     <div class="form-group">
                        <label for="txtPassword">Password</label>
                        <asp:TextBox id="txtPassword" TextMode="Password" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator  Display="Dynamic"   runat="server" ControlToValidate="txtPassword" ErrorMessage="*Password is required!" ForeColor="Red"/>
                    </div>

                    <div class="form-group">
                        <asp:Button id="btnSubmit" runat="server" CssClass="form-control btn btn-primary" Text="LOGIN" OnClick="btnSubmit_Click"></asp:Button>
                    </div>

                    <asp:HyperLink runat="server"  Text="No Account? Register here."  NavigateUrl="~/Registration.aspx"></asp:HyperLink>
                </div> <!-- reg form -->
                
            </div>
        </div>

</asp:Content>