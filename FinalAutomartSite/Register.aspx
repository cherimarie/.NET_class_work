<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  
      <div>
      <h2>Enter your information</h2>
    <table>
        <tr>
            <td>Last Name:</td>
            <td><asp:TextBox ID="txtLastName" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <td>First Name:</td>
            <td><asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox></td>
        </tr>

          <tr>
            <td>Email:</td>
            <td><asp:TextBox ID="txtEmail" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <td>License Plate Number:</td>
             <td><asp:TextBox ID="txtLicense" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <td>Vehicle Make:</td>
             <td><asp:TextBox ID="txtMake" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <td>Vehicle Year:</td>
             <td><asp:TextBox ID="txtYear" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <td>Password:</td>
            <td><asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox></td>
        </tr>

         <tr>
            <td>Confirm Password:</td>
            <td><asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password"></asp:TextBox></td>
        </tr>

               <tr>
            <td><asp:Label ID="lblAlert" runat="server" Text=""></asp:Label></td>
            <td><asp:Button ID="txtSubmit" runat="server" CssClass="button" Text="Submit" OnClick="txtSubmit_Click" /></td>
        </tr>

    </table>
</div> 
</asp:Content>

