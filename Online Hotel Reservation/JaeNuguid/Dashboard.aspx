<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="JaeNuguid.Dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
    <style>
        .logo{
            width: 100px;
        }

        .row{
            margin-top: 20px;
        }
    </style>

    
    <!-- scripts are placed at the end -->
    <script src="https://code.jquery.com/jquery-3.3.1.js"></script> 
    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
    <!-- Bootstrap core CSS -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" 
        integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous" />
    
    <!-- Custom styles for this template -->
    <link href="dashboard.css" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0">
            <a class="navbar-brand col-sm-3 col-md-2 mr-0" href="#">ASPdotNet Hotel</a>
            <ul class="navbar-nav px-3">
            <li class="nav-item text-nowrap">
                <a class="nav-link" href="#">Sign out</a>
            </li>
            </ul>
        </nav>

        <div class="container-fluid">
            <div class="row">
            <nav class="col-md-2 d-none d-md-block bg-light sidebar">
                <div class="sidebar-sticky">
                <ul class="nav flex-column">
                    <li class="nav-item">
                        <a class="nav-link" href="#">
                            <span data-feather="home"></span>
                            Dashboard <span class="sr-only">(current)</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">
                            <span data-feather="file"></span>
                            Manage Users
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="#">
                            <span data-feather="shopping-cart"></span>
                            Manage Rooms <span class="badge badge-secondary">35</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">
                            <span data-feather="users"></span>
                            Payments
                        </a>
                    </li>

                </ul>

                <h5 class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted">
                    <span>Client details</span>
                    <a class="d-flex align-items-center text-muted" href="#">

                    </a>
                </h5>
                <ul class="nav flex-column mb-2">
                    <li class="nav-item">
                    <a class="nav-link" href="#">
                        <span data-feather="file-text"></span>
                        Checked in
                    </a>
                    </li>
                    <li class="nav-item">
                    <a class="nav-link" href="#">
                        <span data-feather="file-text"></span>
                        Checked out
                    </a>
                    </li>
                    <li class="nav-item">
                    <a class="nav-link" href="#">
                        <span data-feather="file-text"></span>
                        Transaction history
                    </a>
                    </li>
                </ul>
                </div>
            </nav>

            <main role="main" class="col-md-9 ml-sm-auto col-lg-10 pt-3 px-4">
                <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pb-2 mb-3 border-bottom">
                    <h1 class="display-4">Manage Rooms </h1>
                </div>
                <!--
                <div class="row">
                    <div class="col-md-4">
                        <div class="card">
                            <div class="h6 card-header">Users</div>
                            <div class="card-body">
                                <div class="display-4">5 <small class="text-muted">Users</small> </div>
                                <br />
                                <asp:Button CssClass="btn btn-info btn-block" Text="View All" runat="server"/>
                            </div>
                         </div>
                    </div>

                     <div class="col-md-4">
                        <div class="card">
                        <div class="h6 card-header">Room availability</div>
                            <div class="card-body">
                                <div class="display-4"><asp:Label ID="rooms" runat="server"></asp:Label> <small class="text-muted">Room Availability</small> </div>
                                <br />
                                <asp:Button CssClass="btn btn-info btn-block" Text="Manage rooms" runat="server"/>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="card">
                        <div class="h6 card-header">Users</div>
                            <div class="card-body">
                                <div class="display-4">5 <small class="text-muted">Users</small> </div>
                                <br />
                                <asp:Button CssClass="btn btn-info btn-block" Text="View All" runat="server"/>
                            </div>
                        </div>
                    </div>
                </div>
                -->
                <div class="">
                <div class="btn-group">
                    <asp:Button CssClass="btn btn-primary active" runat="server" Text="Deluxe Rooms" ID="BtnDeluxe" OnClick="Deluxe_Click" />
                    <asp:Button CssClass="btn btn-primary" runat="server" Text="Suite Rooms"  ID="BtnSuite" OnClick="Suite_Click" />
                    <asp:Button CssClass="btn btn-primary" runat="server" Text="Regular Rooms"  ID="BtnRegular" OnClick="Regular_Click" />
                </div>
                </div>
                <div class="row">
                    <div class="col-md-8">
                        <asp:Repeater runat="server" ID="rptTrans">
                        <HeaderTemplate>
                            <table class="table table-hover table-striped table-sm">
                                <thead>
                                    <tr>
                                        <th>Id</th>
                                        <th>Type</th>
                                        <th>Room number</th>
                                        <th>Price</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <tr>
                                <td><%# DataBinder.Eval(Container.DataItem, "Id") %></td>
                                <td><%# DataBinder.Eval(Container.DataItem, "RoomType") %> </td>
                                <td><%# DataBinder.Eval(Container.DataItem, "RoomNo") %> </td>
                                <td><%# DataBinder.Eval(Container.DataItem, "Formatted") %> </td>
                                <td>
                                    <asp:LinkButton runat="server" CssClass="btn btn-danger" 
                                        id="onDelete" CommandName="onDelete"
                                        Text="<i class='fa fa-trash'></i>">
                                        </asp:LinkButton>

                                </td>
                            </tr>
                        </ItemTemplate>
                        <FooterTemplate>
                            <tr>
                                <td colspan="5">
                                    <button type="button" class="btn btn-primary btn-block" runat="server" data-toggle="modal" data-target="#myModal">
                                        <i class='fa fa-plus-square'></i> ADD PRODUCTS
                                    </button>
                                </td>
                            </tr>
                            </table>
                        </FooterTemplate>
                    </asp:Repeater>
                    </div>
                </div>



                <div id="myModal" class="modal fade" role="dialog" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h3 class="modal-title">Add new Room</h3>
                            </div>
                            <div class="modal-body">
                                <div class="form-group">
                                    <label for="RoomNo" class="col-form-label">Room Number</label>
                                    <asp:TextBox CssClass="form-control" runat="server" ID="RoomNo"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label for="RoomNo" class="col-form-label">Room Type</label>
                                    <asp:DropDownList CssClass="form-control" runat="server" ID="roomtype" >
                                        <asp:ListItem Text="Deluxe Room" Value="1" />
                                        <asp:ListItem Text="Suites Room" Value="2" />
                                        <asp:ListItem Text="Regular Room" Value="3" />
                                    </asp:DropDownList>
                                </div>
                                <div class="form-group">
                                    <label for="price" class="col-form-label">Price</label>
                                    <asp:TextBox CssClass="form-control" runat="server" ID="price"></asp:TextBox>
                                </div>

                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                <button runat="server" onserverclick="btnAddClick" type="button" class="btn btn-primary">Add Room</button>
                            </div>
                        </div> <!-- modal-content -->
                    </div> <!-- modal-dialog -->
                </div> <!-- myModal -->


            </main>
            </div>
        </div>
    </form>

    

   </body>
</html>
