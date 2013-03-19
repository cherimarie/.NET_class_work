<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CustInfo.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    //shows their name, their vehicle information and any maintenance history. You should be able to use ADo.Net Entity/LINQ queries to retrieve this information. (This page will use the table Person, Vehicle, RegisteredCustomer, AutoService, VehicleServices, and VehicleServiceDetail). If there is no maintence history available, there should be a message saying so.

   <p>Hello there, <asp:Label ID="lblName" runat="server" Text="Label"></asp:Label>.</p> 
 
     <p> Here's the maintenance history for your <asp:Label ID="lblYear" runat="server" Text="Label"></asp:Label> <asp:Label ID="lblMake" runat="server" Text="Label"></asp:Label>: </p>
    <asp:DataList ID="dlHistory" runat="server"></asp:DataList>

</asp:Content>

