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
        .auto-style4 {
            width: 88px;
        }
        .auto-style5 {
            height: 22px;
            width: 88px;
        }
        .auto-style6 {
            height: 19px;
            width: 88px;
        }
        .auto-style7 {
            height: 16px;
            width: 88px;
        }
        .btn {
            border: 2px solid #777;
	border-radius: 10px;
	outline: none;
     }

        .auto-style8 {
            height: 34px;
        }
        .auto-style9 {
            width: 88px;
            height: 34px;
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
        <td>    P_ID</td>
        <td>    
            <asp:DropDownList ID="DropDownList1" runat="server">
            </asp:DropDownList>
        </td>
        
    </tr>
    <tr>
        <td class="auto-style2">
            Package_Name</td>
        <td class="auto-style2">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
        
    </tr>
    <tr>
        <td class="auto-style3">
            Description</td>
        <td class="auto-style3">
            
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            
        </td>
        
    </tr>
    <tr>
        <td class="auto-style1">
            Journey Date</td>
        <td class="auto-style1">
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </td>
        
    </tr>
        <tr>
        <td class="auto-style1">
            </td>
        <td class="auto-style1">
            <asp:Button ID="Button1" runat="server" Text="Submit" />
        </td>
        
    </tr>
    
</table>
    </form>
</body>
</html>
