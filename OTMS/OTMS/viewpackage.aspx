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
    width: 70%;
    border: 3px solid green;
    padding: 10px;
        }
        .auto-style1 {
            height: 16px;
        }
        .auto-style2 {
            height: 22px;
        }

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
            <h1>Packages</h1>
            <p>&nbsp;</p>
            <p>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </p>
            <p>
                <asp:Button ID="Button1" runat="server" Text="Button" />
            </p>
            <p>
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="p_id" DataSourceID="SqlDataSource2" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
                    <Columns>
                        <asp:BoundField DataField="PackageName" HeaderText="PackageName" SortExpression="PackageName" />
                        <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
                        <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                        <asp:BoundField DataField="Types" HeaderText="Types" SortExpression="Types" />
                        <asp:BoundField DataField="Days" HeaderText="Days" SortExpression="Days" />
                        <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
                        <asp:BoundField DataField="p_id" HeaderText="p_id" InsertVisible="False" ReadOnly="True" SortExpression="p_id" />
                    </Columns>
                    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                    <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" ForeColor="#003399" />
                    <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                    <SortedAscendingCellStyle BackColor="#EDF6F6" />
                    <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                    <SortedDescendingCellStyle BackColor="#D6DFDF" />
                    <SortedDescendingHeaderStyle BackColor="#002876" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [packagedetails] WHERE ([Description] LIKE '%' +@Description+ '%')">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox1" Name="Description" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </p>
            <p>&nbsp;</p>
        </th>
    </tr>
    

        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>


</table>
        <br />
        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="p_id" OnRowCommand="GridView1_RowCommand" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
            <Columns>
                <asp:BoundField DataField="PackageName" HeaderText="PackageName" SortExpression="PackageName" />
                <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                <asp:BoundField DataField="Types" HeaderText="Types" SortExpression="Types" />
                <asp:BoundField DataField="Days" HeaderText="Days" SortExpression="Days" />
                <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
                <asp:BoundField DataField="p_id" HeaderText="p_id" InsertVisible="False" ReadOnly="True" SortExpression="p_id" />
                
                 <asp:TemplateField HeaderText="Action">
                     <ItemTemplate>
                         <asp:LinkButton ID="LinkButton1" runat="server" Text="Book"   CommandName="booking" CommandArgument='<%# Eval("p_id") %>' ></asp:LinkButton>
                     </ItemTemplate>
                </asp:TemplateField>
                
                 </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [packagedetails]"></asp:SqlDataSource>
    </form>
</body>
</html>

