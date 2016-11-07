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
       <input type="text" class="form-control" placeholder="Username " id="UserName">
       <i class="fa fa-user"></i>
     </div>
     <div class="form-group log-status">
       <input type="password" class="form-control" placeholder="Password" id="Password"><br />
         <br />
         <asp:Label ID="error_msg" runat="server"></asp:Label>
&nbsp;<i class="fa fa-lock"></i><span class="alert">Invalid Credentials</span>
      <a class="link" href="#">Lost your password?</a>
     <button type="button" class="log-btn" runat="server"  ID="submit_btn" OnClick="submit_btn_Click">Log in</button>
     

         
    
   </div>
    
     
    
    
      </form>
    
     
    
    
  </body>
</html>