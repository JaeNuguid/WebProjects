<%@ Page Language="C#" MasterPageFile="~/Site1.Master"  AutoEventWireup="true" CodeBehind="HotelRegistration.aspx.cs" Inherits="JaeNuguid.HotelRegistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body{
            background-color: #d6d6d6;
            background: url('/Images/hotelbg2.jpg');
            background-size: cover;
        }
        .centered-form{
	        margin-top: 60px;
        }



        #logo {
            width:100px;
            text-align: center;
        }


        .centered-form .panel{
	        background: rgba(255, 255, 255, 0.8);
	        box-shadow: rgba(0, 0, 0, 0.3) 20px 20px 20px;
        }

        .panel {
            padding: 10px 10px;
        }

        .margin-bottom{
            margin-bottom: 150px;
        }


    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container margin-bottom">
        <div class="row centered-form">
            <div class="col-xs-12 col-sm-8 col-md-6 offset-sm-2 col-md-offset-3 offset-md-3">
        	    <div class="panel panel-default">
        		    <div class="panel-heading text-center">
                        <strong>ASP.NET HOTEL REGISTRATION</strong>
			 	    </div>
			 	    <div class="panel-body">
			    	    <div class="row">
			    		    <div class="col-xs-6 col-sm-6 col-md-6">
			    			    <div class="form-group">
                                    <asp:TextBox id="txtFirstName" runat="server" PlaceHolder ="First Name" CssClass="form-control"></asp:TextBox>
			    			    </div>
			    		    </div>
			    		    <div class="col-xs-6 col-sm-6 col-md-6">
			    			    <div class="form-group">
			    				    <asp:TextBox id="TxtLastName" runat="server" CssClass="form-control" PlaceHolder="Last Name"></asp:TextBox>
			    			    </div>
			    		    </div>
                            <asp:RequiredFieldValidator Display="Dynamic" runat="server" ControlToValidate="txtFirstName" ErrorMessage="*First Name Required!" ForeColor="Red"/>
			    	    </div>

			    	    <div class="form-group">
                            <asp:TextBox
                                id="TxtEmail" 
                                runat="server" 
                                CssClass="form-control"
                                PlaceHolder="Email Address"
                                TextMode="Email"
                                ></asp:TextBox>
                            <asp:RequiredFieldValidator Display="Dynamic" runat="server" ControlToValidate="TxtEmail" ErrorMessage="*Email Required!" ForeColor="Red"/>
			    	    </div>

			    	    <div class="row">
			    		    <div class="col-xs-6 col-sm-6 col-md-6">
			    			    <div class="form-group">
                                    <asp:TextBox
                                            id="TxtPassword" 
                                            runat="server" 
                                            CssClass="form-control"
                                            PlaceHolder="Password"
                                            TextMode="Password"
                                            ></asp:TextBox>
			    			    </div>
			    		    </div>
			    		    <div class="col-xs-6 col-sm-6 col-md-6">
			    			    <div class="form-group">
                                    <asp:TextBox
                                            id="TxtConfirm" 
                                            runat="server" 
                                            CssClass="form-control"
                                            PlaceHolder="Confirm Password"
                                            TextMode="Password"
                                            ></asp:TextBox>
			    			    </div>
                                <asp:RequiredFieldValidator Display="Dynamic" runat="server" ControlToValidate="TxtPassword" ErrorMessage="*Password Required!" ForeColor="Red"/>
			    		    </div>
                            <div class="col-md-12">
                                <asp:Button ID="BtnSubmit" CssClass="btn btn-info btn-block" runat="server"  Text="SUBMIT" OnClick="BtnSubmit_Click" />
                            </div>

                            <div class="col-md-12 text-center">
                                <br />
                            <asp:HyperLink runat="server"  Text="Already registered? Login here."  NavigateUrl="~/HotelLogin.aspx"></asp:HyperLink>   

                            </div>
                            
			        </div>
	    	        </div>
    	        </div> <!-- panel -->
            </div> <!-- col-md-6 -->
    	</div> <!-- row -->
    </div><!-- container -->
</asp:Content>
