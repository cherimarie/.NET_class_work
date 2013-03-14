<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CustInfo.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    //When a user logs in they should be redirected to a content page that shows their name, their vehicle information and any maintenance history.  If there is no maintence history available, there should be a message saying so. 
   <p>Hello there, <asp:Label ID="lblName" runat="server" Text="Label"></asp:Label>.</p> 



</asp:Content>

