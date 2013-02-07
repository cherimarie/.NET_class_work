<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
     <div>
        <h1>Welcome to Automart!</h1>
        <p>All of our outlets offer these services:</p>


         <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
             <ItemTemplate>
                 serviceName:
                 <asp:Label ID="serviceNameLabel" runat="server" Text='<%# Eval("serviceName") %>' />
                 <br />
                 ServicePrice:
                 <asp:Label ID="ServicePriceLabel" runat="server" Text='<%# Eval("ServicePrice") %>' />
                 <br />
<br />
             </ItemTemplate>
         </asp:DataList>
    
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AutomartConnectionString %>" SelectCommand="Select serviceName, Cast(ServicePrice as Decimal(5,2)) as ServicePrice 
from Customer.Autoservice"></asp:SqlDataSource>
         <asp:Button ID="Button1" runat="server" Text="Find Location" OnClick="BtnGoClick" />
    </div>
    </form>
</body>
</html>
