<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <!--the data manifests as a table, style it accordingly. do not use the auto format unless you love in-line style tags. which you don't.-->
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="PersonAddressKey" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="PersonAddressKey" HeaderText="PersonAddressKey" ReadOnly="True" SortExpression="PersonAddressKey" />
                <asp:BoundField DataField="Street" HeaderText="Street" SortExpression="Street" />
                <asp:BoundField DataField="Apartment" HeaderText="Apartment" SortExpression="Apartment" />
                <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                <asp:BoundField DataField="Zip" HeaderText="Zip" SortExpression="Zip" />
                <asp:BoundField DataField="PersonKey" HeaderText="PersonKey" SortExpression="PersonKey" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CommunityAssistConnectionString1 %>" DeleteCommand="DELETE FROM [PersonAddress] WHERE [PersonAddressKey] = @PersonAddressKey" InsertCommand="INSERT INTO [PersonAddress] ([Street], [Apartment], [State], [City], [Zip], [PersonKey]) VALUES (@Street, @Apartment, @State, @City, @Zip, @PersonKey)" ProviderName="<%$ ConnectionStrings:CommunityAssistConnectionString1.ProviderName %>" SelectCommand="SELECT [PersonAddressKey], [Street], [Apartment], [State], [City], [Zip], [PersonKey] FROM [PersonAddress]" UpdateCommand="UPDATE [PersonAddress] SET [Street] = @Street, [Apartment] = @Apartment, [State] = @State, [City] = @City, [Zip] = @Zip WHERE [PersonAddressKey] = @PersonAddressKey">
            <DeleteParameters>
                <asp:Parameter Name="PersonAddressKey" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Street" Type="String" />
                <asp:Parameter Name="Apartment" Type="String" />
                <asp:Parameter Name="State" Type="String" />
                <asp:Parameter Name="City" Type="String" />
                <asp:Parameter Name="Zip" Type="String" />
                <asp:Parameter Name="PersonKey" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Street" Type="String" />
                <asp:Parameter Name="Apartment" Type="String" />
                <asp:Parameter Name="State" Type="String" />
                <asp:Parameter Name="City" Type="String" />
                <asp:Parameter Name="Zip" Type="String" />
                <asp:Parameter Name="PersonKey" Type="Int32" />
                <asp:Parameter Name="PersonAddressKey" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
