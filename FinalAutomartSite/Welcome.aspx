<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Welcome.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div>

        <h3>Automart Locations</h3>
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
        <p>Log in to see your maintenance history</p>
        <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
        <p>Don't have an account yet? Sign up!</p>
        <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" />
    </div>

</asp:Content>

