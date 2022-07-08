<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="WebApplication1.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            align-content:center;
            font-size: medium;
            height: 578px;
             position: fixed;
             left:17%;
            top: 55px;
            width: 886px;
            text-align: center;
        }
        .Forget{
            align-content:center;
        }
        .Hyperlink
        {
            align-content:center;
        }
        h2{
            color:white;
        }
        .field{
            text-align:left;
            position: fixed;
        }
        .auto-style3 {
            color: #FF0000;
        }
        .auto-style4 {
            margin-left: 66px;
        }
        .auto-style5 {
            margin-left: 35px;
        }
        body{
            background-image:url(Images/dashboard_background.jpg);
              background-position: center;
             background-repeat: no-repeat;
                background-size: cover;
                height:100%;
        }
        
        .auto-style6 {
            margin-left: 64px;
        }
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <h2>Login Page</h2>
            <br />
            <br />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="uname" runat="server" Height="30px" OnTextChanged="TextBox1_TextChanged" Width="250px" align="center" placeholder="username" CssClass="auto-style4"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="UserName Not Entered" ControlToValidate="uname" CssClass="auto-style3"></asp:RequiredFieldValidator>
            <br />
            <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="pass" runat="server" Height="30px" OnTextChanged="TextBox1_TextChanged" Width="250px" placeholder="password" TextMode="Password" CssClass="auto-style5"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password Not Entered" ControlToValidate="pass" CssClass="auto-style3"></asp:RequiredFieldValidator>
            <br />
            <br />
           
            <asp:Button ID="Button1" runat="server" Height="48px" Text="Login" Width="258px" OnClick="Button1_Click" CssClass="auto-style6" />
            
                <br />
            <br />
            <br />
            <br />
           
            <asp:HyperLink ID="HyperLink1" runat="server" href="Registration.aspx">Sign Up</asp:HyperLink>
          
            <br />
            <br />
            <div class="Forget">
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Forgot Password?</asp:LinkButton>
                </div>
            <br />
            <br />
            <br />
                <div class="field">
            </div>
                    <br />
            <br />
            <br />
            <br />
            <br />
            </strong>
        </div>
    </form>
</body>
</html>
