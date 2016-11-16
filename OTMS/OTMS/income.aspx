<%@ Page Language="C#" AutoEventWireup="true" CodeFile="income.aspx.cs" Inherits="OTMS.income" %>

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
    </style>
</head>
<body class="theme">
    <form id="form1" runat="server">
    <div>
    Total Income uptill now:
        <asp:Label ID="Label1" runat="server"></asp:Label>
    </div>
    </form>
</body>
</html>
