<%@ Page Language="C#" AutoEventWireup="true" CodeFile="customerfilter.aspx.cs" Inherits="OTMS.customerfilter" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>user_name</asp:ListItem>
            <asp:ListItem>full_name</asp:ListItem>
            <asp:ListItem>email</asp:ListItem>
            <asp:ListItem>country</asp:ListItem>
            <asp:ListItem>zip_code</asp:ListItem>
            <asp:ListItem>city</asp:ListItem>
            <asp:ListItem>Age</asp:ListItem>
            <asp:ListItem>password</asp:ListItem>
            <asp:ListItem>gender</asp:ListItem>
            <asp:ListItem>c_id</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Filter" />
        <br />
        <br />
        <br />
        <br />

        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
        <br />


    </div>
    </form>
</body>
</html>
