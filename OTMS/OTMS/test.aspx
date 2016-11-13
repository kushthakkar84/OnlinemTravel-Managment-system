
<!DOCTYPE html>
<script runat="server">

    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs)

    End Sub
</script>

<style type="text/css">
	body{
	 background-image: url("img/2.jpg");
	}
	</style>

<link href="login_admin.css" rel="stylesheet" type="text/css" />
 <script src="js/jquery.min.js"></script>
        <script src="js/index.js"></script>
 
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
   
<body>
    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        </asp:GridView>
    </form>
</body></html>