<%@ Page Language="C#" AutoEventWireup="true" CodeFile="bookingfilter.aspx.cs" Inherits="OTMS.bookingfilter" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>packageID</asp:ListItem>
            <asp:ListItem>Date</asp:ListItem>
            <asp:ListItem>BookingID</asp:ListItem>
            <asp:ListItem>PackageName</asp:ListItem>
            <asp:ListItem>Category</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Filter" OnClick="Button1_Click" />
        <br />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>

