<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <!--header info, metadata, secondary style sheet here-->
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!--body content here-->
    
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
          <td></td>
      </tr>
       <tr>
          <td>Enter email:</td>
          <td> <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox></td>
          <td></td>
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
          <td> <asp:Button ID="btnSubmit" runat="server" Text="Submit" /> </td>
      </tr>
  </table>
</asp:Content>

