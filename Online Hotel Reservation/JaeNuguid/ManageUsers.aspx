<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ManageUsers.aspx.cs" Inherits="JaeNuguid.ManageProducts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pb-2 mb-3 border-bottom">
        <h1 class="display-4">Manage Users </h1>
    </div>
    <div class="">
    <div class="btn-group">
        <asp:Button CssClass="btn btn-primary active" runat="server" Text="Administrators" ID="BtnDeluxe" OnClick="Admin_onClick" />
        <asp:Button CssClass="btn btn-primary" runat="server" Text="Clients"  ID="BtnSuite" OnClick="Client_onClick"/>
    </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <asp:Repeater runat="server" ID="rptr" OnItemCommand="Rptr_ItemCommand">
            <HeaderTemplate>
                <table class="table table-hover table-striped">
                    <thead>
                        <tr>
                            <th>Id</th>
                            <th>Full Name</th>
                            <th>Username</th>
                            <th>Password</th>
                            <th>Action</th>
                        </tr>
                    </thead>
            </HeaderTemplate>
            <ItemTemplate>
                <tr>
                    <td><asp:Label id="LblId" runat="server" 
                            Text='<%# DataBinder.Eval(Container.DataItem,"UserId") %>'>
                            </asp:Label></td>
                    <td><%# DataBinder.Eval(Container.DataItem, "FullName") %> </td>
                    <td><%# DataBinder.Eval(Container.DataItem, "EmailAddress") %> </td>
                    <td><%# DataBinder.Eval(Container.DataItem, "Password") %> </td>
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
                            <i class='fa fa-plus-square'></i> ADD USER
                        </button>
                    </td>
                </tr>
                </table>
            </FooterTemplate>
        </asp:Repeater>
        </div>
    </div>


    <!-- modal -->
    <div id="myModal" class="modal fade" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h3 class="modal-title">Add new Room</h3>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="FirstName" class="col-form-label">First Name</label>
                                <asp:TextBox CssClass="form-control" runat="server" ID="FirstName"></asp:TextBox>
                            </div>
                        </div>
                        
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="LastName" class="col-form-label">Last Name</label>
                                <asp:TextBox CssClass="form-control" runat="server" ID="LastName"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="Email" class="col-form-label">Email Address</label>
                        <asp:TextBox CssClass="form-control" TextMode="Email" runat="server" ID="Email"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="Password" class="col-form-label">Password</label>
                        <asp:TextBox CssClass="form-control" TextMode="Password" runat="server" ID="Password"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="role" class="col-form-label">User Role</label>
                        <asp:DropDownList CssClass="form-control" runat="server" ID="role" >
                            <asp:ListItem Text="Administrator" Value="1" />
                            <asp:ListItem Text="Client" Value="2" />
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button runat="server" type="button" onserverclick="btn_onClick" class="btn btn-primary">Add User</button>
                </div>
            </div> <!-- modal-content -->
        </div> <!-- modal-dialog -->
    </div> <!-- myModal -->

</asp:Content>
