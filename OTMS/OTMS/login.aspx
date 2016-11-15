<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="OTMS.login" %>




<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
         .label {
color: #B4886B;
font-weight: bold;
font-size: 25px;
display: block;
width: 150px;
float: left;
}
        .auto-style2 {
            height: 22px;
            
	border:2px solid #456879;
	border-radius:10px;
	height: 22px;
	width: 230px;
     }
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

        .auto-style3 {
            width: 128px;
        }

        </style>
</head>
<body style="width: 796px; height: 836px" class="theme">
    <form id="form1" runat="server" >
       
        
        <table border="0" cellpadding="5" cellspacing="5">
    <tr>
        <th colspan="3">
           <h1> Login</h1></th>
    </tr>
    <tr>
        <td class="auto-style3","label">    Username</td>
        <td class="auto-style2">    
            <asp:TextBox ID="txtUsername" runat="server" Height="20px" Width="224px"></asp:TextBox>
        </td>
        <td>    
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="Red" runat="server" ErrorMessage="Required" ControlToValidate="txtUsername"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style3","label">
            Password</td>
        <td class="auto-style2">
            <asp:TextBox ID="txtPassword" runat="server" type="password" Height="19px" Width="219px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ForeColor="Red"  runat="server" ErrorMessage="password should not be empty" ControlToValidate="txtPassword"></asp:RequiredFieldValidator>
        </td>
    </tr>
    
    
    <tr>
        <td class="auto-style3">    
        </td>
        <td>
            <asp:Label ID="Label1" runat="server" Text="" ForeColor="Red" Font-Bold="true"></asp:Label>
        </td>
        <td>    </td>
    </tr>
        
    <tr>
        <td class="auto-style3">
        </td>
        <td>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" />
        </td>
        <td>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/registration.aspx">SignUp</asp:HyperLink>
            <br />
            <br />
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/admin.aspx">Are You Admin?</asp:HyperLink>
        </td>
    </tr>
</table>
    </form>
</body>
</html>

