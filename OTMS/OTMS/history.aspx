<%@ Page Language="C#" AutoEventWireup="true" CodeFile="history.aspx.cs" Inherits="OTMS.history" %>

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
    width: 70%;
    border: 3px solid green;
    padding: 10px;
        }
    </style>
</head>
<body class="theme">
    <form id="form1" runat="server">
    <div>
    



        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
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
                <asp:BoundField DataField="user_name" HeaderText="user_name" SortExpression="user_name" />
                <asp:BoundField DataField="payment" HeaderText="payment" SortExpression="payment" />
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [booking] WHERE ([user_name] = @user_name)">
            <SelectParameters>
                <asp:SessionParameter DefaultValue="hello" Name="user_name" SessionField="username" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    
        <br />
        <br />
        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/homepage.aspx">HOME</asp:LinkButton>
    
    </div>
    </form>
</body>
</html>
