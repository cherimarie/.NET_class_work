<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WelcomePage.aspx.cs" Inherits="WelcomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Welcome to Automart</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h3>Services Available</h3>
        <ul>
        <asp:DataList ID="DataList1" runat="server">
            <ItemTemplate>
                
                <li><%#Eval("ServiceName") %> 
                    <%#Eval("ServicePrice") %>
                </li>
            </ItemTemplate>
            </asp:DataList>
            </ul>

        <h3>Locations</h3>
         <ul>
        <asp:DataList ID="DataList2" runat="server">
            <ItemTemplate>
                <li><%#Eval("LocationName") %> 
                    <%#Eval("LocationAddress") %>
                    <%#Eval("LocationCity") %>
                    <%#Eval("LocationState") %>
                </li>
            </ItemTemplate>
            </asp:DataList>
            </ul>
        <asp:Button ID="btnSignUp" runat="server" Text="Sign Up" OnClick="btnSignUp_Click" />
    </div>
    </form>
</body>
</html>
