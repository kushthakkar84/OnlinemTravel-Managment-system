<%@ Page Language="C#" AutoEventWireup="true" CodeFile="bookingstatus.aspx.cs" Inherits="OTMS.bookingstatus" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>Booking Succesfull.....Your BookingID is <asp:Label ID="Label1" runat="server" Text=""></asp:Label></h1>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>
            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/homepage.aspx">HOME</asp:LinkButton>
        </p>
    </div>
    </form>
</body>
</html>
