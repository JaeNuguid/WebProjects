
<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UserDetails.aspx.cs" Inherits="JaeNuguid.UserDetails" %>
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
            <div class="col-md-3"></div>
            <div class="reg-form col-md-6 offset-md-3 col-xs-12">
                <div class="text-center">
                    <img id="logo3" src="Images/ASPLogo.png" />
                    <h3>User details</h3>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="txtFirst">First Name</label>
                            <asp:TextBox id="txtFirst" runat="server" CssClass="form-control"></asp:TextBox>
                            <!--<asp:RequiredFieldValidator Display="Dynamic" runat="server" ControlToValidate="txtFirst" ErrorMessage="*Username is required!" ForeColor="Red"/>-->
                        </div>
                    </div>
                    <div class="col-md-6">
                            <div class="form-group">
                            <label for="txtLast">Last Name</label>
                            <asp:TextBox id="txtLast" runat="server" CssClass="form-control"></asp:TextBox>
                            <!--<asp:RequiredFieldValidator  Display="Dynamic"   runat="server" ControlToValidate="txtLast" ErrorMessage="*Password is required!" ForeColor="Red"/>-->
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="age">Age</label>
                            <asp:TextBox id="TxtAge" runat="server" TextMode="Number" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="TxtGender">Gender</label>
                            <asp:DropDownList CssClass="form-control" runat="server" ID="TxtGender" >
                                <asp:ListItem Text="Male" Value="male" />
                                <asp:ListItem Text="Female" Value="female" />
                            </asp:DropDownList>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="form-group">
                            <label for="TxtEmail">Email</label>
                            <asp:TextBox id="TxtEmail" TextMode="Email" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="form-group">
                            <label for="TxtEmail">Contact Number</label>
                            <asp:TextBox id="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="form-group">
                            <label for="TxtAddress">Address</label>
                            <asp:TextBox TextMode="MultiLine" Columns="50" Rows="3" Id="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <asp:Button id="btnSubmit" runat="server" CssClass="form-control btn btn-primary" Text="CALCULATE FEE" OnClick="btnSubmit_Click" ></asp:Button>
                </div>
            </div> <!-- reg form -->
        </div>
    </div>

</asp:Content>
