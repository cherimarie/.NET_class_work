<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="LocationName" DataValueField="LocationID" AutoPostBack="True"></asp:DropDownList>  
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AutomartConnectionString %>" SelectCommand="Select LocationName, LocationID from Customer.Location"></asp:SqlDataSource>

        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataSourceID="SqlDataSource2">
            <Fields>
                <asp:BoundField DataField="LocationName" HeaderText="LocationName" SortExpression="LocationName" />
                <asp:BoundField DataField="LocationAddress" HeaderText="LocationAddress" SortExpression="LocationAddress" />
                <asp:BoundField DataField="LocationCity" HeaderText="LocationCity" SortExpression="LocationCity" />
                <asp:BoundField DataField="LocationState" HeaderText="LocationState" SortExpression="LocationState" />
                <asp:BoundField DataField="LocationZip" HeaderText="LocationZip" SortExpression="LocationZip" />
                <asp:BoundField DataField="LocationPhone" HeaderText="LocationPhone" SortExpression="LocationPhone" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AutomartConnectionString %>" SelectCommand="Select LocationName, LocationAddress, LocationCity, LocationState, LocationZip, LocationPhone
From Customer.Location
where LocationID=@locationID">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" DefaultValue="1" Name="locationID" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
