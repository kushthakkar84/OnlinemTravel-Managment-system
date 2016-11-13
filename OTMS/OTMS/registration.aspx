<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="OTMS.registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .label {
color: #B4886B;
font-weight: bold;
display: block;
width: 150px;
float: left;
}
        .theme{
            background-color:lightblue;
            color: green;
  text-decoration: underline;
  font-weight: bold;
  margin: auto;
    width: 55%;
    border: 3px solid green;
    padding: 10px;
        }
        .btn {
            border: 2px solid #777;
	border-radius: 10px;
	outline: none;
     }

        .auto-style1 {
            width: 202px;
        }

    </style>
</head>
<body class="theme">
    <form id="form1" runat="server">
        <asp:Label ID="msg" runat="server" Text=""></asp:Label>
    <table border="0" cellpadding="7" cellspacing="7">
    <tr>
        <th colspan="3">
            Registration
        </th>
    </tr>
    <tr>
        <td class="label">    Full Name</td>
        <td>    
            <asp:TextBox ID="Fnm" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style1">    
            <asp:RequiredFieldValidator ErrorMessage="Required" ForeColor="Red" runat="server" ControlToValidate="Fnm"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="label">
            Username
        </td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style1">
            <asp:RequiredFieldValidator ErrorMessage="Required" ForeColor="Red" ControlToValidate="TextBox1"
                runat="server" />
        </td>
    </tr>
    <tr>
        <td class="label">
            Password
        </td>
        <td>
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" />
        </td>
        <td class="auto-style1">
            <asp:RequiredFieldValidator ErrorMessage="Required" ForeColor="Red" ControlToValidate="txtPassword"
                runat="server" />
        </td>
    </tr>
    <tr>
        <td class="label">
            Confirm Password
        </td>
        <td>
            <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" />
        </td>
        <td class="auto-style1">
            <asp:CompareValidator ErrorMessage="Passwords do not match." ForeColor="Red" ControlToCompare="txtPassword"
                ControlToValidate="txtConfirmPassword" runat="server" />
        </td>
    </tr>
    <tr>
        <td class="label">
            Email
        </td>
        <td>
            <asp:TextBox ID="txtEmail" runat="server" />
        </td>
        <td class="auto-style1">
            <asp:RequiredFieldValidator ErrorMessage="Required" Display="Dynamic" ForeColor="Red"
                ControlToValidate="txtEmail" runat="server" />
            <asp:RegularExpressionValidator runat="server" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                ControlToValidate="txtEmail" ForeColor="Red" ErrorMessage="Invalid email address." />
        </td>
    </tr>
    <tr>
        <td class="label">    Gender</td>
        <td>   <asp:RadioButtonList ID="RadioButtonList1" runat="server">
            <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
               </asp:RadioButtonList>
                    
                
           
        </td>
        <td class="auto-style1">    </td>
    </tr>
    <tr>
        <td class="label">    Country</td>
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
        <td class="auto-style1">    </td>
    </tr>
    <tr>
        <td class="label">    State</td>
        <td>    
            <asp:DropDownList ID="DropDownList2" runat="server">
            </asp:DropDownList>
        </td>
        <td class="auto-style1">    </td>
    </tr>
    <tr>
        <td class="label">    Zip Code</td>
        <td>    
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style1">    
            <asp:RangeValidator ID="RangeValidator" ForeColor="Red" runat="server" ErrorMessage="Enter valid Zip Code" MaximumValue="999999" MinimumValue="100000" ControlToValidate="TextBox2"></asp:RangeValidator>
        </td>
    </tr>
    <tr>
        <td class="label">    Age</td>
        <td>    
            <asp:TextBox ID="Age" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style1">    
       </td>
    </tr>
    
        
    <tr>
        <td>
        </td>
        <td>
            <asp:Button Text="Submit" runat="server" ID="reg" OnClick="reg_Click"  />
        </td>
        <td class="auto-style1">
        </td>
    </tr>
 <tr>
        <td>
        </td>
        <td>            </td>
        <td class="auto-style1">
        </td>
    </tr>
         <tr>
        <td>
        </td>
        <td>
        </td>
        <td class="auto-style1">
        </td>
    </tr>
         <tr>
        <td>
        </td>
        <td>
           
            <asp:LinkButton ID="LinkButton1" runat="server"  PostBackUrl="~/homepage.aspx">Home</asp:LinkButton>
           
        </td>
        <td class="auto-style1">
        </td>
    </tr>
</table>
    </form>
  
</body>
</html>
