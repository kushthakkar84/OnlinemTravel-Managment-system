<%@ Page Language="C#" AutoEventWireup="true" CodeFile="filter.aspx.cs" Inherits="OTMS.filter" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/customerfilter.aspx" >Customer</asp:LinkButton>
        <br />
        <br />
        <br />
        <br />
        <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/packagefilter.aspx">Package</asp:LinkButton>
        <br />
        <br />
        <br />
        <br />
        <asp:LinkButton ID="LinkButton3" runat="server" PostBackUrl="~/bookingfilter.aspx">Booking</asp:LinkButton>
    
    </div>
    </form>
</body>
</html>
