﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="OTMS.registration" %>

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
    width: 50%;
    border: 3px solid green;
    padding: 10px;
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
    <table border="0" cellpadding="7" cellspacing="7">
    <tr>
        <th colspan="3">
            Registration
        </th>
    </tr>
    <tr>
        <td>    Full Name</td>
        <td>    
            <asp:TextBox ID="Fnm" runat="server"></asp:TextBox>
        </td>
        <td>    
            <asp:RequiredFieldValidator ErrorMessage="Required" ForeColor="Red" runat="server" ControlToValidate="Fnm"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            Username
        </td>
        <td>
            <asp:TextBox ID="txtUsername" runat="server" />
        </td>
        <td>
            <asp:RequiredFieldValidator ErrorMessage="Required" ForeColor="Red" ControlToValidate="txtUsername"
                runat="server" />
        </td>
    </tr>
    <tr>
        <td>
            Password
        </td>
        <td>
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" />
        </td>
        <td>
            <asp:RequiredFieldValidator ErrorMessage="Required" ForeColor="Red" ControlToValidate="txtPassword"
                runat="server" />
        </td>
    </tr>
    <tr>
        <td>
            Confirm Password
        </td>
        <td>
            <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" />
        </td>
        <td>
            <asp:CompareValidator ErrorMessage="Passwords do not match." ForeColor="Red" ControlToCompare="txtPassword"
                ControlToValidate="txtConfirmPassword" runat="server" />
        </td>
    </tr>
    <tr>
        <td>
            Email
        </td>
        <td>
            <asp:TextBox ID="txtEmail" runat="server" />
        </td>
        <td>
            <asp:RequiredFieldValidator ErrorMessage="Required" Display="Dynamic" ForeColor="Red"
                ControlToValidate="txtEmail" runat="server" />
            <asp:RegularExpressionValidator runat="server" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                ControlToValidate="txtEmail" ForeColor="Red" ErrorMessage="Invalid email address." />
        </td>
    </tr>
    <tr>
        <td>    Gender</td>
        <td>    
            <asp:RadioButton ID="Male" runat="server" Text="Male" />
            <asp:RadioButton ID="Female" runat="server" Text="Female" />
        </td>
        <td>    </td>
    </tr>
    <tr>
        <td>    Country</td>
        <td>    
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>India</asp:ListItem>
                <asp:ListItem>USA</asp:ListItem>
                <asp:ListItem>Austrilia</asp:ListItem>
                <asp:ListItem>England</asp:ListItem>
                <asp:ListItem>Europ</asp:ListItem>
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
        </td>
        <td>    </td>
    </tr>
    <tr>
        <td>    State</td>
        <td>    
            <asp:DropDownList ID="DropDownList2" runat="server">
            </asp:DropDownList>
        </td>
        <td>    </td>
    </tr>
    <tr>
        <td>    Zip Code</td>
        <td>    
            <asp:TextBox ID="Zipcode" runat="server"></asp:TextBox>
        </td>
        <td>    
            <asp:RangeValidator ID="RangeValidator" ForeColor="Red" runat="server" ErrorMessage="Enter valid Zip Code" MaximumValue="999999" MinimumValue="100000" ControlToValidate="Zipcode"></asp:RangeValidator>
        </td>
    </tr>
    <tr>
        <td>    Age</td>
        <td>    
            <asp:TextBox ID="Age" runat="server"></asp:TextBox>
        </td>
        <td>    
            <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Age between 18-100" ForeColor="Red" ControlToValidate="Age"></asp:RangeValidator>
        </td>
    </tr>
    <tr>
        <td>    C_ID</td>
        <td>    
            <asp:TextBox ID="C_ID" runat="server"></asp:TextBox>
        </td>
        <td>    </td>
    </tr>
    <tr>
        <td>    P_ID</td>
        <td>    
            <asp:TextBox ID="P_ID" runat="server"></asp:TextBox>
        </td>
        <td>    </td>
    </tr>
        
    <tr>
        <td>
        </td>
        <td class="btn">
            <asp:Button Text="Submit" runat="server"  />
        </td>
        <td>
        </td>
    </tr>
</table>
    </form>
</body>
</html>
