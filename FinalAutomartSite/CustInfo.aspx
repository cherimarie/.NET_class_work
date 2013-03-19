<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CustInfo.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
   <p>Hello there, <asp:Label ID="lblName" runat="server" Text="Label"></asp:Label>.</p> 
 
     <p> Here's the maintenance history for your <asp:Label ID="lblYear" runat="server" Text="Label"></asp:Label> <asp:Label ID="lblMake" runat="server" Text="Label"></asp:Label>: </p>
   
   

    <asp:DataList ID="dlHistory" runat="server">
         <ItemTemplate>
                <li><%#Eval("ServiceDate") %> 
                    <%#Eval("ServiceName") %>
                    <%#Eval("ServicePrice") %>
                </li>
            </ItemTemplate>
    </asp:DataList>

</asp:Content>

