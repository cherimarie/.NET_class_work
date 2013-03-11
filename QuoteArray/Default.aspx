<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
     <asp:ScriptManager ID="ScriptManager1" runat="server">
         <Services>
             <asp:ServiceReference Path="~/QuoteArrayService.svc" />
         </Services>
     </asp:ScriptManager>

      <p>Please enter a number between 1 and 5: 
         <asp:TextBox ID="txtUsrChoice" runat="server"></asp:TextBox>
             <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Please enter a number between 1 and 5." MaximumValue="5" MinimumValue="1"></asp:RangeValidator>
     </p>
       <asp:Button ID="btnSub" runat="server" Text="Submit" onclick="butSubClick" />

     <script type="text/javascript">
         function getQuote() {
             //get the values from the html controls
             var usrChoice = document.getElementById('txtUsrChoice').value;
             
             //call the function from the service. ServiceCallBack 
             //and ServiceErrorCallbacks are function calls 
             //to deal with the returned value from
             //service.QuoteFinder and with any errors returned
             Service.QuoteFinder(usrChoice, ServiceCallBack, ServiceErrorCallBack);
         }
         function ServiceCallBack(result) {
             document.getElementById('quoteout').innerText = result;
         }
         function ServiceErrorCallBack(error) {
             alert(error.get_message);
         }
    </script>

</asp:Content>

