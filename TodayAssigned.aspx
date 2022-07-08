<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TodayAssigned.aspx.cs" Inherits="WebApplication1.TodayAssigned" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            width: 100%;
            color:white;
        }
        .auto-style4 {
            width: 81px;
            height: 29px;
        }
        .auto-style5 {
            width: 131px;
            height: 29px;
        }
        .auto-style6 {
            width: 81px;
            height: 26px;
        }
        .auto-style7 {
            width: 131px;
            height: 26px;
        }
        .auto-style8 {
            height: 26px;
        }
        .auto-style9 {
            width: 111px;
            height: 26px;
        }
        .auto-style10 {
            width: 111px;
            height: 29px;
        }
        .auto-style11 {
            width: 76px;
            height: 26px;
        }
        .auto-style12 {
            width: 76px;
            height: 29px;
        }
        .auto-style13 {
            width: 130px;
            height: 26px;
        }
        .auto-style14 {
            width: 130px;
            height: 29px;
        }
        .auto-style15 {
            width: 60px;
            height: 26px;
        }
        .auto-style16 {
            width: 60px;
            height: 29px;
        }
        .auto-style17 {
            width: 56px;
            height: 26px;
        }
        .auto-style18 {
            width: 56px;
            height: 29px;
        }
        .auto-style19 {
            height: 29px;
        }
        body{
            background-image:url(Images/dashboard_background.jpg);
              background-position: center;
             background-repeat: no-repeat;
                background-size: cover;
                height:100%;
        }
        h2{
            color:white;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style2">
           <h2>Today Assigned</h2>
        </div>
        <table class="auto-style3">
            <tr>
                <td class="auto-style6">
                    &nbsp;</td>
                <td class="auto-style7">
                    <asp:Label ID="Label3" runat="server" Text="Team Member" ></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:Label ID="Label4" runat="server" Text="Ticket No."></asp:Label>
                </td>
                <td class="auto-style11">
                    <asp:Label ID="Label5" runat="server" Text="Task"></asp:Label>
                </td>
                <td class="auto-style13">
                    <asp:Label ID="Label6" runat="server" Text="Planned Effort"></asp:Label>
                </td>
                <td class="auto-style15">
                    <asp:Label ID="Label7" runat="server" Text="Status"></asp:Label>
                </td>
                <td class="auto-style17">
                    <asp:Label ID="Label8" runat="server" Text="Date"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:Label ID="Label9" runat="server" Text="Actions"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    </td>
                <td class="auto-style5">
                    <asp:DropDownList ID="list1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="UserData" DataValueField="UserData">
                        <asp:ListItem>SELECT</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style10">
                    <asp:TextBox ID="list2" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style12">
                    <asp:DropDownList ID="list3" runat="server" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                        <asp:ListItem>Select One</asp:ListItem>
                        <asp:ListItem>Investigation</asp:ListItem>
                        <asp:ListItem>Development</asp:ListItem>
                        <asp:ListItem>Testing</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style14">
                    <asp:DropDownList ID="list4" runat="server" AutoPostBack="True">
                        <asp:ListItem>Select One</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>20</asp:ListItem>
                        <asp:ListItem>30</asp:ListItem>
                        <asp:ListItem>40</asp:ListItem>
                        <asp:ListItem>50</asp:ListItem>
                        <asp:ListItem>60</asp:ListItem>
                        <asp:ListItem>70</asp:ListItem>
                        <asp:ListItem>80</asp:ListItem>
                        <asp:ListItem>90</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style16">
                    <asp:TextBox ID="list5" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style18">
                    <asp:TextBox ID="list6" runat="server" TextMode="Date"></asp:TextBox>
                </td>
                <td class="auto-style19">
                    <asp:ImageButton ID="I1" runat="server" Height="21px" ImageUrl="~/Images/tick.png" OnClick="ImageButton1_Click1"/>
                    <asp:ImageButton ID="btnReset" runat="server" Height="21px" type="reset" ImageUrl="~/Images/cross.png" OnClick="ImageButton2_Click" />
                  
                </td>
            </tr>
        </table>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" SelectCommand="SELECT [UserData] FROM [RegistrationData]"></asp:SqlDataSource>
        <div class="auto-style2">
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal" Height="363px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1" Width="1296px">
            <Columns>
                <asp:BoundField DataField="SNo" HeaderText="SNo" />
                <asp:BoundField DataField="TeamMember" HeaderText="Team Members" />
                <asp:BoundField DataField="TicketNo" HeaderText="Ticket No." />
                <asp:BoundField DataField="Task" HeaderText="Task" />
                <asp:BoundField DataField="PlannedEffort" HeaderText="Planned Effort" />
                <asp:BoundField DataField="Status" HeaderText="Status" />
                <asp:BoundField DataField="Date" HeaderText="Date" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#487575" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#275353" />
        </asp:GridView>
    </form>

    
</body>
</html>
