<%@ Page Language="C#" AutoEventWireup="true" CodeFile="package.aspx.cs" Inherits="OTMS.package" %>

 



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
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
            margin-left: 40px;
        }
        .theme{
            background-color:lightblue;
            color: green;
  text-decoration: underline;
  font-weight: bold;
  margin: auto;
    width: 80%;
    border: 3px solid green;
    padding: 10px;
        }
    </style>
</head>
<body class="theme">
    <form id="form1" runat="server">
        <table border="0" cellpadding="5" cellspacing="5">
            <asp:Label ID="msg" runat="server" Text=""></asp:Label>
    <tr>
        <th colspan="3">
            PackageDetails</th>
    </tr>
    <tr>
        <td class="auto-style3">    PackageName</td>
        <td class="auto-style3">    
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style3">    
        </td>
    </tr>
    <tr>
        <td class="auto-style2">
            Category</td>
        <td class="auto-style2">
            <asp:DropDownList ID="DropDownList2" runat="server">
                <asp:ListItem>Royal</asp:ListItem>
                <asp:ListItem>General</asp:ListItem>
                <asp:ListItem>Exectue</asp:ListItem>
                <asp:ListItem>Marvel</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td class="auto-style2">
            </td>
    </tr>

    <tr>
        <td class="auto-style1">
            Description</td>
        <td class="auto-style1">
            <asp:TextBox ID="TextBox2" runat="server" Height="114px" Width="260px"></asp:TextBox>
        </td>
        <td class="auto-style1">
            </td>
    </tr>
    <tr>
        <td>
            Type</td>
        <td class="auto-style3">    
            <asp:DropDownList ID="DropDownList3" runat="server">
                <asp:ListItem>Dream City</asp:ListItem>
                <asp:ListItem>History</asp:ListItem>
                <asp:ListItem>Advanture</asp:ListItem>
            </asp:DropDownList>
            </td>
        <td class="auto-style3">    </td>
    </tr>
             <tr>
        <td>
            Days</td>
        <td class="auto-style3">    
            <asp:DropDownList ID="DropDownList4" runat="server">
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
                <asp:ListItem>9</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
            </asp:DropDownList>
            </td>
        <td class="auto-style3">    </td>
    </tr>
   <tr>
        <td>
            Amount</td>
        <td class="auto-style3">    
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
        <td class="auto-style3">    </td>
    </tr>
   
     
        
    <tr>
        <td>
        </td>
        <td class="auto-style4">
            <asp:Button Text="Insert" runat="server" ID="insert" OnClick="insert_Click1"   />
            <asp:Button ID="update" runat="server" Text="Update" OnClick="update_Click" />
            <asp:Button ID="delete" runat="server" Text="Delete" OnClick="delete_Click" />
            <asp:Button ID="show" runat="server"  Text="Show Package" OnClick="show_Click" PostBackUrl="~/viewpackage.aspx" />
        </td>
        <td>
        </td>
    </tr>
        
    <tr>
        <td>
            &nbsp;</td>
        <td class="auto-style4">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4"     >
                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#330099" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                <SortedAscendingCellStyle BackColor="#FEFCEB" />
                <SortedAscendingHeaderStyle BackColor="#AF0101" />
                <SortedDescendingCellStyle BackColor="#F6F0C0" />
                <SortedDescendingHeaderStyle BackColor="#7E0000" />
            </asp:GridView>
            <br />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        </td>
        <td>
            &nbsp;</td>
    </tr>
</table>
    </form>
</body>
</html>
