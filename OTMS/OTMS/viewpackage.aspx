<%@ Page Language="C#" AutoEventWireup="true" CodeFile="viewpackage.aspx.cs" Inherits="OTMS.viewpackage" %>

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
    width: 30%;
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
            width: 237px;
        }
        .auto-style5 {
            height: 22px;
            width: 237px;
        }
        .auto-style6 {
            height: 19px;
            width: 237px;
        }
        .auto-style7 {
            height: 16px;
            width: 237px;
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
            width: 237px;
            height: 34px;
        }

        .auto-style10 {
            width: 82px;
        }
        .auto-style11 {
            height: 22px;
            width: 82px;
        }
        .auto-style12 {
            height: 19px;
            width: 82px;
        }
        .auto-style13 {
            height: 16px;
            width: 82px;
        }
        .auto-style14 {
            width: 82px;
            height: 34px;
        }

    </style>
</head>
<body class="theme">
    <form id="form1" runat="server">
    <table border="0" cellpadding="5" cellspacing="5">
    <tr>
        <th colspan="3">
            Packages</th>
    </tr>
    <tr>
        <td>    1</td>
        <td>    
            abc</td>
        <td class="auto-style4">    
            <asp:Image ID="Image1" runat="server" Height="45px" Width="58px" ImageUrl="~/m1.jpg" />
        </td>
        <td class="auto-style10">
            <asp:LinkButton ID="LinkButton1" runat="server">VIEW</asp:LinkButton>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">
            2</td>
        <td class="auto-style2">
            bcd</td>
        <td class="auto-style5">
            <asp:Image ID="Image2" Height="45px" Width="58px" runat="server" />
            </td>
        <td class="auto-style11">
            <asp:LinkButton ID="LinkButton2" runat="server">VIEW</asp:LinkButton>
        </td>

    </tr>
    <tr>
        <td class="auto-style3">
            3</td>
        <td class="auto-style3">
            
            cde</td>
        <td class="auto-style6">
            <asp:Image ID="Image3" Height="45px" Width="58px" runat="server" />
        </td>
        <td class="auto-style12">
            <asp:LinkButton ID="LinkButton3" runat="server">VIEW</asp:LinkButton>
        </td>
    </tr>
    <tr>
        <td class="auto-style1">
            4</td>
        <td class="auto-style1">
            def</td>
        <td class="auto-style7">
            <asp:Image ID="Image4" Height="45px" Width="58px" runat="server" />
            </td>
        <td class="auto-style13">
            <asp:LinkButton ID="LinkButton4" runat="server">VIEW</asp:LinkButton>
        </td>
    </tr>
    <tr>
        <td class="auto-style8">
            5</td>
        <td class="auto-style8">
            efg</td>
        <td class="auto-style9">
            <asp:Image ID="Image5" Height="45px" Width="58px" runat="server" />
            </td>
        <td class="auto-style14">
            <asp:LinkButton ID="LinkButton5" runat="server">VIEW</asp:LinkButton>
        </td>
    </tr>
    
    <tr>
        <td>    6</td>
        <td>    
            fgh</td>
        <td class="auto-style4">    
            <asp:Image ID="Image6" Height="45px" Width="58px" runat="server" />
        </td>
        <td class="auto-style10">    
            <asp:LinkButton ID="LinkButton6" runat="server">VIEW</asp:LinkButton>
        </td>
    </tr>
        
    <tr>
        <td>
            7</td>
        <td>
            ghi</td>
        <td class="auto-style4">
            <asp:Image ID="Image7" Height="45px" Width="58px" runat="server" />
        </td>
        <td>
            <asp:LinkButton ID="LinkButton7" runat="server">VIEW</asp:LinkButton>
            <br />
            </td>
    </tr>
</table>
        <br />
        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1">
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    </form>
</body>
</html>

