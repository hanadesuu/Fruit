<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Buy.aspx.cs" Inherits="Fruit.BuyFruit.Buy" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 720px; width: 1280px; margin-left: 300px">
        <div style="float:left; width: 240px; height: 720px; background-color:#23274F">
            <div style="margin-top: 30px; width: 189px; margin-left: 24px; margin-bottom:60px;">
                <h1 style="color:white; margin-left: 1px; width: 246px;">买家系统</h1>
            </div>
            <asp:Button ID="Button1" runat="server" Text="个人信息" BackColor="#23274F" BorderStyle="None" Font-Bold="True" Font-Size="Large" ForeColor="White" Height="80px" OnClick="Button1_Click" Width="240px" />
            <asp:Button ID="Button2" runat="server" Text="查询水果" BackColor="#23274F" BorderStyle="None" Font-Bold="True" Font-Size="Large" ForeColor="White" Height="80px" OnClick="Button2_Click" Width="240px" />
            <asp:Button ID="Button3" runat="server" Text="订购水果" BackColor="#706E97" BorderStyle="None" Font-Bold="True" Font-Size="Large" ForeColor="White" Height="80px" OnClick="Button3_Click" Width="240px" />
            <asp:Button ID="Button4" runat="server" Text="查询订单" BackColor="#23274F" BorderStyle="None" Font-Bold="True" Font-Size="Large" ForeColor="White" Height="80px" OnClick="Button4_Click" Width="240px" />
            <asp:Button ID="Button5" runat="server" Text="会员服务" BackColor="#23274F" BorderStyle="None" Font-Bold="True" Font-Size="Large" ForeColor="White" Height="80px" OnClick="Button5_Click" Width="240px" />
        </div>
        <div style="width: 1040px; float:left; height: 720px; background-color:#AE92D6">
            <div style="float:left; width: 907px;">
                <h1 style="margin-left: 30px; margin-top: 36px; width: 198px;">&nbsp;订购水果</h1>
            </div>
            <div style="float:left; height: 104px; width: 96px; padding-left: 30px;padding-top:30px">
                <asp:Button ID="Button7" runat="server" Text="退出" BackColor="#23274F" BorderStyle="None" Font-Size="Large" ForeColor="White" Height="39px" OnClick="Button7_Click" Width="73px" />
            </div>
            <div style="height: 297px; margin-left: 0px; padding-left:35px">
                <div style=" height: 206px; margin:5px;">
                    <br />
                    <br />
                    水果编号：<asp:DropDownList ID="DropDownList1" runat="server" Height="30px" Width="100px" DataSourceID="SqlDataSource1" DataTextField="FruitCode" DataValueField="FruitCode">
                    </asp:DropDownList>

                    <br />

                    <br />

                    购买数量（斤）（填写整数）：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

                    <br />
                    <br />

                    <asp:Button ID="Button6" runat="server" Text="购买" BackColor="#23274F" BorderStyle="None" Font-Size="Large" ForeColor="White" Height="30px" OnClick="Button8_Click" Width="73px" />
                    <asp:Label ID="Label2" runat="server" ForeColor="Red" Text="购买成功！" Visible="False"></asp:Label>
                </div>
            </div>
        </div>
    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FruitConnectionString %>" SelectCommand="SELECT [FruitCode] FROM [Fruit]">
                </asp:SqlDataSource>
    </form>
</body>
</html>
