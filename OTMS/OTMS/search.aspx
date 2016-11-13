<%@ Page Language="C#" AutoEventWireup="true" CodeFile ="search.aspx.cs" Inherits="OTMS.search" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="packageID" HeaderText="packageID" SortExpression="packageID" />
                <asp:BoundField DataField="PackageName" HeaderText="PackageName" SortExpression="PackageName" />
                <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                <asp:BoundField DataField="Types" HeaderText="Types" SortExpression="Types" />
                <asp:BoundField DataField="Days" HeaderText="Days" SortExpression="Days" />
                <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                <asp:BoundField DataField="BookingID" HeaderText="BookingID" SortExpression="BookingID" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [booking] WHERE ([BookingID] = @BookingID)">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="BookingID" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        BookingID <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Search" />
    
    </div>
    </form>
</body>
</html>
