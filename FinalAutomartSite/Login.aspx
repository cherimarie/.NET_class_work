<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
   <table>
            <tr>
                <td>Email Adress: </td>
                <td><asp:TextBox ID="txtUser" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Password:</td>
                <td><asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox></td>
      
            </tr>
            <tr>
                <td><asp:Label ID="lblMessage" runat="server" Text="" CssClass="alert"></asp:Label></td>
                <td> <asp:Button ID="btnLog" runat="server" Text="Log In" OnClick="btnLogin_Click" /></td>
            </tr>
        </table>
    <br />
    <p>Not a member yet? Click <a href="Register.aspx">here</a> to register.</p>
</asp:Content>

