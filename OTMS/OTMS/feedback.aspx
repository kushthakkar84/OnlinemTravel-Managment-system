<%@ Page Language="C#" AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="OTMS.feedback" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
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
 

        </style>
</head>
<body style="width: 796px; height: 836px" class="theme">
    <form id="form1" runat="server" >
    <table border="0" cellpadding="5" cellspacing="5">
    <tr>
        <th colspan="3">
            Feedback</th>
    </tr>
    <tr>
        <td>    Rating</td>
        <td>    
            <asp:DropDownList ID="Rating" runat="server" BackColor="Yellow" ForeColor="#FF0066">
                <asp:ListItem>Good</asp:ListItem>
                <asp:ListItem>Avarage</asp:ListItem>
                <asp:ListItem>Excellent</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td>    
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            Comments&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
        <td class="auto-style2">
            <asp:TextBox ID="comments" runat="server" Height="135px" Width="263px"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    
    
    <tr>
        <td>    PackageName</td>
        <td class="auto-style2">    
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="PackageName" DataValueField="PackageName">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [PackageName] FROM [packagedetails]"></asp:SqlDataSource>
        </td>
        <td>    </td>
    </tr>
        
    <tr>
        <td>
        </td>
        <td>
            <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
            <br />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server"  ForeColor="#0000ff" Font-Bold="true" Text=""></asp:Label>
        </td>
        <td>
        </td>
    </tr>
</table>
    </form>
</body>
</html>

