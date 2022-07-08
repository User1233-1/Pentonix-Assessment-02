<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="WebApplication1.SendCode" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body{
            background-image:url(Images/dashboard_background.jpg);
              background-position: center;
             background-repeat: no-repeat;
                background-size: cover;
                height:100%;
        }
        .auto-style1 {
            height: 482px;
        }
        .auto-style2 {
            width: 100%;
            margin-left: 307px;
        }
        .auto-style3 {
            text-align: center;
            width: 481px;
            height: 60px;
        }
        .auto-style4 {
            font-size: x-large;
        }
        .auto-style5 {
            width: 481px;
            height: 68px;
            text-align: center;
        }
        .auto-style6 {
            height: 68px;
        }
        .auto-style7 {
            width: 481px;
            height: 33px;
            margin-left: 40px;
        }
        .auto-style8 {
            height: 33px;
            text-align: center;
        }
        .auto-style9 {
            margin-left: 90px;
        }
        .auto-style11 {
            text-align: center;
        }
        .auto-style12 {
            margin-left: 107px;
        }
        .auto-style13 {
            width: 481px;
        }
        .auto-style14 {
            margin-left: 82px;
        }
        .auto-style15 {
            margin-left: 121px;
        }
        .auto-style16 {
            font-size: large;
            margin-left: 191px;
            margin-top: 66px;
        }
        .auto-style17 {
            margin-left: 160px;
        }
        .auto-style18 {
            width: 481px;
            height: 93px;
        }
        .auto-style19 {
            text-align: center;
            height: 93px;
        }
        .auto-style20 {
            text-align: center;
            height: 60px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <table class="auto-style2">
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="Label1" runat="server" CssClass="auto-style4" Text="CHANGE PASSWORD" ForeColor="White"></asp:Label>
                        <br />
                        <br />
                        <br />
                    </td>
                    <td class="auto-style6"></td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        <br />
                        <br />
                        <br />
                        <asp:Label ID="Label2" runat="server" Text="Current Password" ForeColor="White"></asp:Label>
                        <asp:TextBox ID="oldpass" runat="server" CssClass="auto-style9" Height="27px" Width="200px"></asp:TextBox>
                    </td>
                    <td class="auto-style8">
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <br />
                        <asp:Label ID="Label3" runat="server" Text="New Password" ForeColor="White"></asp:Label>
                        <asp:TextBox ID="newpass" runat="server" CssClass="auto-style12" Height="27px" TextMode="Password" Width="200px"></asp:TextBox>
                    </td>
                    <td class="auto-style11">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style18">
                        <br />
                        <asp:Label ID="Label4" runat="server" Text="Confirm Password" ForeColor="White"></asp:Label>
                        <asp:TextBox ID="conpass" runat="server" CssClass="auto-style14" Height="27px" Width="200px"></asp:TextBox>
                        <br />
                    </td>
                    <td class="auto-style19"></td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Save Password" Width="144px" />
                        <asp:Button ID="Button2" runat="server" CssClass="auto-style15" OnClick="Button2_Click" Text="Cancel" Width="144px" />
                    </td>
                    <td class="auto-style20"></td>
                </tr>
            </table>
        </div>
        <p class="auto-style17">
            <asp:Label ID="lblmsg" runat="server" CssClass="auto-style16" ForeColor="Red" Height="35px" Width="370px"></asp:Label>
        </p>
    </form>
</body>
</html>
