<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>Please enter a number between 1 and 5: <asp:TextBox ID="txtUsrNumber" runat="server"></asp:TextBox>
             <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Please enter a number between 1 and 5." MaximumValue="5" MinimumValue="1"></asp:RangeValidator></p>
       <asp:Button ID="btnSub" runat="server" Text="Submit" onclick="butSubClick" />
</asp:Content>

