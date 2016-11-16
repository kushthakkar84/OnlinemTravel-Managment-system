<%@ Page Language="C#" AutoEventWireup="true" CodeFile="action.aspx.cs" Inherits="OTMS.action" %>

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
    width: 55%;
    border: 3px solid green;
    padding: 10px;
        }
    </style>
</head>
<body class="theme">
    <form id="form1" runat="server">
    <div>
        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/package.aspx"><h2>Modify Package</h2></asp:LinkButton>
        <br />
        <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/income.aspx" ><h2>Income</h2></asp:LinkButton>
        <br />
        <br />
        <br />
    </div>
    </form>
</body>
</html>
