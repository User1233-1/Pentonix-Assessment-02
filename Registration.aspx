<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="WebApplication1.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>Registration Page</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 427px;
            margin-left: 351px;
            align-content:center;
            
        }
        .auto-style2 {
            width: 619px;
            color: #232210;
        }
        .auto-style3 {
            width: 619px;
            text-align: center;
        }
        .auto-style4 {
            color:white;
            text-align: center;
        }
        .auto-style5 {
            font-size: x-large;
            color: #232210;
        }
        .auto-style6 {
            width: 619px;
            height: 26px;
        }
        .auto-style7 {
            height: 26px;
        }
        .auto-style8 {
            color: #FF0000;
        }
        .auto-style9 {
            width: 96px;
            height: 33px;
            color: #232210;
        }
        .auto-style10 {
            width: 619px;
            text-align: center;
            height: 42px;
        }
        .auto-style11 {
            color: #232210;
        }
        body{
             background-image:url(Images/dashboard_background.jpg);
              background-position: center;
             background-repeat: no-repeat;
                background-size: cover;
                height:100%;
        }
    </style>
</head>
<body style="margin-left: 0px">
    <form id="form1" runat="server">
        <div class="auto-style4">
            <h2>Registration Page</h2>
        </div>
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox1" runat="server" Width="180px" placeholder="First Name" CssClass="auto-style11"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please Enter First Name" ForeColor="Red" CssClass="auto-style11"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox2" runat="server" Width="180px" placeholder="Last Name" CssClass="auto-style11"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please Enter Last Name" ForeColor="Red" CssClass="auto-style11"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox3" runat="server" Width="180px" placeholder="Email" TextMode="Email" CssClass="auto-style11"></asp:TextBox>
                    </td>
                    <td class="auto-style8">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox3" ErrorMessage="Please Enter Email" ForeColor="Red" CssClass="auto-style11"></asp:RequiredFieldValidator>
                        <span class="auto-style11">
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage=" You must Enter a Valid Email" ForeColor="Red" ControlToValidate="TextBox3" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </span>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6"></td>
                    <td class="auto-style7"></td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox4" runat="server" Width="180px" placeholder="Mobile Number" TextMode="Phone" CssClass="auto-style11"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Please Enter Valid Mobile Number" ForeColor="Red" CssClass="auto-style11"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6"></td>
                    <td class="auto-style7"></td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox5" runat="server" Width="180px" placeholder="User Name" CssClass="auto-style11"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="Please Enter User/Admin" ForeColor="Red" CssClass="auto-style11"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                </tr>
                 <tr>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox6" runat="server" Width="180px" placeholder="Password" TextMode="Password" CssClass="auto-style11"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox6" ErrorMessage="Please Enter Password" ForeColor="Red" CssClass="auto-style11"></asp:RequiredFieldValidator>
                     </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                </tr>

                <tr>
                    <td class="auto-style3">
                        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" Height="37px" Width="88px" CssClass="auto-style11" />
                    </td>
                   </tr>
                    <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                </tr>
                    <tr>
                    <td class="auto-style10">
                        <input id="Reset1" type="reset" value="Cancel" class="auto-style9" /><span class="auto-style11"> </span>  
                    </td>
                     </tr>






            </table>
        </div>
    </form>
</body>
</html>
