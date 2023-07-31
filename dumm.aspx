<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dumm.aspx.cs" Inherits="ProfitTrader.Admin.dumm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
      <form id="form1" runat="server"> 
    <div>
      <table>
      <tr> 
        <td>  Query:</td>
        <td>   </td>
        <td>   <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" Rows="5" Columns="9" Width="300px" Height="70px"></asp:TextBox></td>
      </tr>
      <tr>
        <td colspan="3" align="center">
           <asp:Button ID="Button1" runat="server" Text="Button" onclick="Button1_Click" />
        </td>
      </tr>
      </table>
     
      <%--<table id="tbl_1" runat="server" visible="false">--%>
    <table>
      <tr>
       <td> ExecuteNonquery Query:</td>
       <td> </td>
       <td> <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" Rows="5" Columns="9" Width="300px" Height="70px"></asp:TextBox></td>
      </tr>
      
      <tr>
        <td colspan="3" align="center">
            <asp:Button ID="Button2" runat="server" Text="Button" OnClick="Button2_Click" />
       </td>
      </tr>
      </table>
    
    
    
    
      <asp:GridView ID="GridView1" runat="server">
        <Columns></Columns>
        </asp:GridView>
        <br />
        <br />
       <%-- <asp:GridView ID="GridView2" runat="server">
        <Columns></Columns>
        </asp:GridView>--%>
        <br />
        <br />
    </div>
    </form>

</body>
</html>
