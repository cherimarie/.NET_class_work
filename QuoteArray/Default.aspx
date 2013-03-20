<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
     <asp:ScriptManager ID="ScriptManager1" runat="server">
         <Services>
             <asp:ServiceReference Path="~/App_Code/QuoteService.cs" />
         </Services>
     </asp:ScriptManager>

      <p>Please enter a number between 1 and 5: 
           <asp:TextBox ID="txtUsrChoice" runat="server"></asp:TextBox>
     </p>
             <asp:RangeValidator 
                 ID="RangeValidator1"
                 ControlToValidate="txtUsrChoice" 
                  MaximumValue="5" 
                 MinimumValue="1" 
                 Type="Integer"
                 EnableClientScript="false"
                 Text="Please enter a number between 1 and 5."             
                 runat="server"> 
             </asp:RangeValidator>
   
       <input id="btnSubmit" onclick="getQuote();" type="button" />
    <br />
    <p id="quoteout"></p>

     <script type="text/javascript">
         function getQuote() {
             //get the values from the html controls
             var usrChoice = document.getElementById('txtUsrChoice').value;
             
            
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

