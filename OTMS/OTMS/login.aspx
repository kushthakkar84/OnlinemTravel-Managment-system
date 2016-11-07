<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="OTMS.login" %>


<!DOCTYPE html>
<html >
  <head>
    <meta charset="UTF-8">
    <title>Adm</title>
    <style type="text/css">
	body{
	 background-image: url("21.jpg");
	}
	</style>
    
    
    <link rel='stylesheet prefetch' href="css/sty2.css">

        <link rel="stylesheet" href="css/style.css">

    
    
    
  </head>
<script src="js/jquery.min.js"></script>

        <script src="js/index.js"></script>

    
  <body>

      <form id="form1" runat="server">

    <div class="login-form">
     <h1>Login</h1>
     <div class="form-group ">
         <asp:TextBox ID="UserName" runat="server" AutoPostBack="True"></asp:TextBox>
&nbsp;</div>
     <div class="form-group log-status">
         <asp:TextBox ID="Password" runat="server" AutoPostBack="True"></asp:TextBox>
         <br />
         <br />
         <div class="error_msg">
        <asp:Label runat="server" style="color:red" ID="error_msg" Text=" "></asp:Label>
             <asp:Button ID="Button1" runat="server" Text="Button" />
             <br />
        </div>
&nbsp;<span class="alert">Invalid Credentials</span>
      <a class="link" href="#">Lost your password?</a></div>
    
     
    
    
      </form>
    
     
    
    
  </body>
</html>