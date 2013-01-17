<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Calculator</title>
    <link href="CalculatorStyle.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server"> <!--all the ASP controls need to go in the form-->
        <table>
            <tr>
                <td colspan="4"><asp:TextBox ID="TxtDisplay" runat="server" CssClass="numDisplay"></asp:TextBox></td>
            </tr>
            <tr>
                <td><asp:Button ID="ClearButton" runat="server" Text="Cl" OnClick="ClearButton_Click" /> </td>
                <td><asp:Button ID="DivideButton" runat="server" Text="/" OnClick="DivideButton_Click" /> </td>
                <td><asp:Button ID="MultiplicationButton" runat="server" Text="*" OnClick="MultiplicationButton_Click" /> </td>
                <td><asp:Button ID="MinusButton" runat="server" Text="-" OnClick="MinusButton_Click" /> </td>
            </tr>
             <tr>
                <td><asp:Button ID="SevenButton" runat="server" Text="7" OnClick="inputNumber_click" /></td>
                <td><asp:Button ID="EightButton" runat="server" Text="8" OnClick="inputNumber_click" /></td>
                <td><asp:Button ID="NineButton" runat="server" Text="9" OnClick="inputNumber_click" /></td>
                <td rowspan="2"><asp:Button ID="PlusButton" runat="server" Text="+" Height="43px" OnClick="PlusButton_Click"  /></td>
            </tr>
             <tr>
                <td><asp:Button ID="FourButton" runat="server" Text="4" OnClick="inputNumber_click" /></td>
                <td><asp:Button ID="FiveButton" runat="server" Text="5" OnClick="inputNumber_click" /></td>
                <td><asp:Button ID="SixButton" runat="server" Text="6" OnClick="inputNumber_click" /></td>
             </tr>
             <tr>
                <td><asp:Button ID="OneButton" runat="server" Text="1" OnClick="inputNumber_click" /></td>
                <td><asp:Button ID="TwoButton" runat="server" Text="2" OnClick="inputNumber_click" /></td>
                <td><asp:Button ID="ThreeButton" runat="server" Text="3" OnClick="inputNumber_click" /></td>
                <td rowspan="2"><asp:Button ID="EqualsButton" runat="server" Text="=" Height="47px" OnClick="EqualsButton_Click" /></td>
            </tr>
             <tr>
                <td colspan="2"><asp:Button ID="ZeroButton" runat="server" Text="0" OnClick="inputNumber_click" Width="50px" /></td>
                <td><asp:Button ID="DecimalButton" runat="server" Text="." OnClick="inputNumber_click" /></td>
            </tr>
        </table>
     </form>
</body>
</html>
