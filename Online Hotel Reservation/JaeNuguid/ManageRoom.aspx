<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ManageRoom.aspx.cs" Inherits="JaeNuguid.ManageRoom" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pb-2 mb-3 border-bottom">
        <h1 class="display-4">Manage Rooms </h1>
    </div>
    <div class="">
    <div class="btn-group">
        <asp:Button CssClass="btn btn-primary active" runat="server" Text="Deluxe Rooms" ID="BtnDeluxe" OnClick="Deluxe_Click" />
        <asp:Button CssClass="btn btn-primary" runat="server" Text="Suite Rooms"  ID="BtnSuite" OnClick="Suite_Click" />
        <asp:Button CssClass="btn btn-primary" runat="server" Text="Regular Rooms"  ID="BtnRegular" OnClick="Regular_Click" />
    </div>
    </div>
    <div class="row">
        <div class="col-md-8">
            <asp:Repeater runat="server" ID="rptr" OnItemCommand="Rptr_ItemCommand">
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
                    <td><asp:Label id="LblId" runat="server" 
                            Text='<%# DataBinder.Eval(Container.DataItem,"Id") %>'>
                            </asp:Label></td>
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


</asp:Content>
