<%@ Page Title="Confirm Information" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Confirm your information:</h2>
<table>
      <tr>
          <td>Enter first name:</td>
          <td> <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox> </td>
          <td></td>
      </tr>
        <tr>
          <td>Enter last name:</td>
          <td>
              <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox> </td>
          <td><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Last name is required" ControlToValidate="txtLastName" CssClass="error"></asp:RequiredFieldValidator>
              </td>
      </tr>
        <tr>
          <td>Enter address:</td>
          <td> <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox></td>
          <td></td>
      </tr>
       <tr>
          <td>Enter city:</td>
          <td> <asp:TextBox ID="txtCity" runat="server"></asp:TextBox> </td>
          <td></td>
      </tr>
       <tr>
          <td>Enter state:</td>
          <td> <asp:TextBox ID="txtState" runat="server"></asp:TextBox> </td>
          <td></td>
      </tr>
       <tr>
          <td>Enter zip:</td>
          <td> <asp:TextBox ID="txtZip" runat="server"></asp:TextBox> </td>
          <td><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtZip" ErrorMessage="Invalid zip code" ValidationExpression="\d{5}(-\d{4})?"  CssClass="error"></asp:RegularExpressionValidator></td>
      </tr>
       <tr>
          <td>Enter email:</td>
          <td> <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox></td>
          <td><asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtEmail" ErrorMessage="Invalid Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" CssClass="error"></asp:RegularExpressionValidator></td>
      </tr>
       <tr>
          <td>Enter phone number:</td>
          <td><asp:TextBox ID="txtPhone" runat="server"></asp:TextBox> </td>
          <td></td>
      </tr>
       <tr>
          <td>Enter donation amount:</td>
          <td><asp:TextBox ID="txtDonationAmount" runat="server"></asp:TextBox> </td>
          <td>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Donation amount is required" ControlToValidate="txtDonationAmount" CssClass="error"></asp:RequiredFieldValidator>
           </td>
      </tr>
       <tr>
          <td>
              <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
           </td>
          <td> <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label></td>
          <td> <asp:Button ID="btnSubmit" runat="server" Text="Confirm" OnClick="btnSubmit_Click" /> </td>
      </tr>
  </table>
</asp:Content>