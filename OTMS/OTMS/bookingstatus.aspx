<%@ Page Language="C#" AutoEventWireup="true" CodeFile="bookingstatus.aspx.cs" Inherits="OTMS.bookingstatus" %>

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
    </style>
</head>
<body class="theme">
    <form id="form1" runat="server">
    <div>
    <h1>Booking Succesfull.....Your BookingID is <asp:Label ID="Label1" runat="server" Text=""></asp:Label></h1>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
      <center>  <p>
            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/homepage.aspx">HOME</asp:LinkButton>
        </p>
        <p>
           <a href="login.aspx">logout</a>

        </p></center>
    </div>
    </form>
</body>
</html>
