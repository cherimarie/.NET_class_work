<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Thanks.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    // The thank you page should have a link to the login page. 

     <p>Thanks for creating an account!</p>

    <p>Log in now:</p>
    <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
</asp:Content>

