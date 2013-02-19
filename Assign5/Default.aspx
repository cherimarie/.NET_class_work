﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
           <table>
            <tr>
                <td>User Name: </td>
                <td><asp:TextBox ID="txtUser" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Password:</td>
                <td><asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox></td>
                    <!--textmode=password will make it show as asteriks when typed, very cool, except for while you're testing and might need to see password-->
            </tr>
            <tr>
                <td><asp:Label ID="lblMessage" runat="server" Text=""></asp:Label></td>
                <td> <asp:Button ID="btnLogin" runat="server" Text="Log In" OnClick="btnLogin_Click" /></td>
            </tr>
        </table>

    </div>
    </form>
</body>
</html>
