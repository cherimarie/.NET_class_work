<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <h2>Please confirm your information!</h2>
      <table>
        <tr>
            <td>First Name</td>
             <td>
                 <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
            </td>
             <td></td>
        </tr>
          <tr>
            <td>Last Name</td>
             <td>
                 <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
              </td>
             <td>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtLastName" ErrorMessage="Please enter your last name"></asp:RequiredFieldValidator>
              </td>
        </tr>
          <tr>
            <td>Birthday</td>
             <td>
                 <asp:TextBox ID="txtBirthday" runat="server"></asp:TextBox>
              </td>
             <td>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtBirthday" ErrorMessage="Please enter your birthday"></asp:RequiredFieldValidator>
              </td>
        </tr>
          <tr>
            <td>Email Address</td>
             <td>
                 <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
              </td>
             <td>
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Please enter a vaild email address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ></asp:RegularExpressionValidator>
              </td>
        </tr>
          <tr>
            <td></td>
             <td></td>
             <td>
                 <asp:Button ID="Button1" runat="server" Text="Confirm" OnClick="ConfBtnClick"/>
              </td>
        </tr>
    </table>
    
      </asp:Content>
