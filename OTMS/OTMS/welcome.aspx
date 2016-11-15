<%@ Page Language="C#" AutoEventWireup="true" CodeFile="welcome.aspx.cs" Inherits="OTMS.welcome" %>




<!DOCTYPE html>
    
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>How to make an Image Slider in ASP.NET</title>
    <style type="text/css">
        .button {
            border-radius: 4px 4px 4px 4px;
            height: 30px;
            padding: 5px;
            font-size: 14px;
            background-color: #6ca21e;
            color: #FFFFFF;
        }

        body {
            background-color: #32373a;
            color: #FFFFFF;
        }

        #mainBody {
            background-color: #FFFFFF;
            height: 100%;
            color: #32373a;
        }

        .UCHelp {
            height: 150px;
            margin-top: 20px;
            font-weight: bold;
        }

        .UserControlDiv {
            width: 400px;
            margin: 10px;
            padding: 10px;
            border: 1px solid Gray;
            background-color: #fdd136;
        }

        .AdRotator1 img {
            height: 100px !important;
            width: 100px !important;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="mainBody">
            <center><h1>Online Travel Managment System&nbsp;</h1></center>
            <br />
            <br />
            <center><asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/login.aspx"><h1>Enter the Site</h1></asp:LinkButton></center>
            <br />
            <asp:ScriptManager ID="ScriptManager1" runat="server" />

        </div>
        <center>
                  <div class="UserControlDiv" style="margin-top: 15%;">
            <div id="up1">
                    <span id="Timer1" style="visibility:hidden;display:none;"></span>
                    <table>
                        <tbody><tr>
                            <td class="button">
                                <asp:Button ID="Button1" runat="server" Text="Register" />
&nbsp;</td>
                            <td>
                                <!-- We will use AdRotator control for creating an image slider in asp.net
                                ASP AdRotator control has an AdvertisementFile which contains the information related to different
                                //images that will be displayed randomly either using the timer1 or the previous next button click
                                 -->
                                <a id="AdRotator1" target="_top"><img src="Smiely.jpg"></a>
                            </td>
                            <td class="button">
                                <asp:Button ID="Button2" runat="server" Text="Login" />
&nbsp;</td>
                        </tr>
                    </tbody></table>
                </div>
        </div>
            </center>

    </form>
</body>
</html>




