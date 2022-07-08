<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TodayAssignedUser.aspx.cs" Inherits="WebApplication1.TodayAssignedUser" %>

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
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            font-size: xx-large;
        }
        .auto-style4 {
            width: 100%;
            color:white;
            align-content:center;
        }
        .auto-style5 {
            width: 132px;
        }
        .auto-style6 {
            width: 116px;
        }
        .auto-style7 {
            width: 118px;
        }
        .auto-style8 {
            width: 161px;
        }
        .auto-style9 {
            width: 115px;
        }
        .auto-style10 {
            width: 194px;
        }
        .auto-style11 {
            margin-left: 520px;
        }
    </style>
</head>
<body style="height: 632px">
    <form id="form1" runat="server">
        <div class="auto-style2">
            <asp:Label ID="Label1" runat="server" CssClass="auto-style3" Text="Today Assigned Work by Admin" ForeColor="White"></asp:Label>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TodayAssignConnectionString %>" SelectCommand="SELECT * FROM [TodayAssignedUser]"></asp:SqlDataSource>
        <br />
        <br />
        <br />
        <br />
        <table class="auto-style4">
            <tr>
                <td class="auto-style5">Ticket No.</td>
                <td class="auto-style6">Task</td>
                <td class="auto-style7">Status</td>
                <td class="auto-style8">Comment</td>
                <td class="auto-style9">Date</td>
                <td class="auto-style10">Edit</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="tno" runat="server"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:Label ID="task" runat="server"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:DropDownList ID="list1" runat="server">
                        <asp:ListItem>Select Item</asp:ListItem>
                        <asp:ListItem>Not Started</asp:ListItem>
                        <asp:ListItem>In Progress</asp:ListItem>
                        <asp:ListItem>Completed</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="t3" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style9">
                    <asp:Label ID="date" runat="server"></asp:Label>
                </td>
                <td class="auto-style10">
                    <asp:Button ID="Button1" runat="server" Height="31px" OnClick="Button1_Click" Text="Update" Width="113px" />
                </td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        <br />
        <div class="auto-style11">
            <asp:Label ID="Label2" runat="server"></asp:Label>
        </div>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    </form>
</body>
</html>
