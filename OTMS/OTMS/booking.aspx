<%@ Page Language="C#" AutoEventWireup="true" CodeFile="booking.aspx.cs" Inherits="OTMS.booking" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .theme{
            background-color:lightblue;
            color: green;
  text-decoration: underline;
  font-weight: bold;
  margin: auto;
    width: 35%;
    border: 3px solid green;
    padding: 10px;
        }
        .auto-style1 {
            height: 16px;
        }
        .auto-style2 {
            height: 22px;
        }
        .auto-style3 {
            height: 19px;
        }
        .btn {
            border: 2px solid #777;
	border-radius: 10px;
	outline: none;
     }

        </style>
</head>
<body class="theme">
    <form id="form1" runat="server">
    <table border="0" cellpadding="5" cellspacing="5">
    <tr>
        <th colspan="3">
            Booking</th>
    </tr>

        <tr>
        <td class="auto-style1">
            P_ID</td>
        <td class="auto-style1">
            <asp:TextBox ID="pid" runat="server"></asp:TextBox>
        </td>
        
    </tr>


    <tr>
        <td>PackageName</td>
        <td>    
            
            <asp:TextBox ID="pkname" runat="server"  ReadOnly="true"></asp:TextBox>
            
        </td>
        
    </tr>
    <tr>
        <td class="auto-style2">
            Category</td>
        <td class="auto-style2">
            
            <asp:TextBox ID="ctg" runat="server" ReadOnly="true"></asp:TextBox>
            
        </td>
        
    </tr>
    <tr>
        <td class="auto-style3">
            Description</td>
        <td class="auto-style3">
            
            <asp:TextBox ID="des" runat="server" ReadOnly="true"></asp:TextBox>
            
        </td>
        
    </tr>
    <tr>
        <td class="auto-style1">
            Types</td>
        <td class="auto-style1">
            <asp:TextBox ID="type" runat="server" ReadOnly="true"></asp:TextBox>
        </td>
        
    </tr>
        <tr>
        <td class="auto-style1">
            Days</td>
        <td class="auto-style1">
            <asp:TextBox ID="day" runat="server" ReadOnly="true"></asp:TextBox>
        </td>
        </tr>
        <tr>
        <td class="auto-style1">
            Amount</td>
        <td class="auto-style1">
            <asp:TextBox ID="amount" runat="server" ReadOnly="true"></asp:TextBox>
        </td>
        
   
    </tr>
          <tr>
        <td class="auto-style1">
            Date</td>
        <td class="auto-style1">
            <asp:TextBox ID="date" Textmode="Date" runat="server"></asp:TextBox>
        </td>
        
   
    </tr>
        <tr>
        <td class="auto-style1">
            Payment Type</td>
        <td class="auto-style1">
            <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                <asp:ListItem>Check</asp:ListItem>
                <asp:ListItem>Demand Draft</asp:ListItem>
                <asp:ListItem>Cash on Arrival</asp:ListItem>
            </asp:RadioButtonList>
        </td>
        
   
    </tr>
        <tr>
        <td class="auto-style1">
            </td>
        <td class="auto-style1">
            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
        </td>
        
    </tr>
         <tr>
        <td class="auto-style1">
            </td>
        <td class="auto-style1">
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        </td>
        
    </tr>
    
</table>
    </form>
</body>
</html>
