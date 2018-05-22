<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ManageBookings.aspx.cs" Inherits="JaeNuguid.Payment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="display-3">Clients Booking</div>
    <div class="row">
        <div class="col-md-12">
            <asp:Repeater runat="server" ID="rptTrans">
            <HeaderTemplate>
                <table class="table table-hover table-striped ">
                    <thead>
                        <tr>
                            <th>Full Name</th>
                            <th>Room Type</th>
                            <th>Room number</th>
                            <th>No. of Pax</th>
                            <th>Checked In</th>
                            <th>Checked Out</th>
                            <th>Total</th>
                        </tr>
                    </thead>
            </HeaderTemplate>
            <ItemTemplate>
                <tr>
                    <td><%# DataBinder.Eval(Container.DataItem, "FullName") %></td>
                    <td><%# DataBinder.Eval(Container.DataItem, "RoomType") %> </td>
                    <td><%# DataBinder.Eval(Container.DataItem, "RoomNo") %> </td>
                    <td><%# DataBinder.Eval(Container.DataItem, "Guests") %> </td>
                    <td><%# DataBinder.Eval(Container.DataItem, "CheckedIn") %> </td>
                    <td><%# DataBinder.Eval(Container.DataItem, "CheckedOut") %> </td>
                    <td><%# DataBinder.Eval(Container.DataItem, "Total") %> </td>
                   
                </tr>
            </ItemTemplate>
            <FooterTemplate>
                </table>
            </FooterTemplate>
        </asp:Repeater>
        </div>


    </div>
</asp:Content>
