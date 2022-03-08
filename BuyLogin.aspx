<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BuyLogin.aspx.cs" Inherits="Fruit.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 720px; width: 1280px; margin-left: 300px; background-color:#AE92D6">
        <div style="float:left; width: 420px; height: 720px;">
            <img style="width: 420px; height: 720px; margin-left: 0px;" src="/Image/left.png" />
        </div>
        <div style="width: 851px; float:left; height: 715px;">
            <div style="float:left; width: 110px; margin-left: 40px; margin-top: 30px;">
                <asp:ImageButton ID="ImageButton1" runat="server" style="height: 50px; width: 50px;" src="/Image/back.png" OnClick="ImageButton1_Click"/>
            </div>
            <h1 style="margin-left: 30px; margin-top: 36px">买家登录</h1>
            <div style="margin-left: 167px; margin-top: 53px; width: 363px; height: 303px;">
                <div style="height: 87px; margin: 75px 30px 30px 30px">
                    <h3 style="border-bottom:2px solid #555199; margin-bottom: 11px;">用户名</h3>
                    <asp:TextBox ID="TextBox1" runat="server" Height="40px" Width="300px" BorderStyle="None" Font-Size="Large"></asp:TextBox>
                </div>
                <div style="height: 94px; margin: 30px">
                    <h3 style="border-bottom:2px solid #555199; margin-bottom: 11px;">密码</h3>
                    <asp:TextBox ID="TextBox2" runat="server" Height="40px" Width="300px" BorderStyle="None" Font-Size="Large" TextMode="Password"></asp:TextBox>
                </div>
                <div style="height: 74px; width: 386px; margin-left: 34px">
                    <asp:CheckBox ID="CheckBox1" runat="server" BorderStyle="None" Font-Size="Large" Text="记住密码" />
                    <asp:Button ID="Button1" runat="server" Text="登录" Height="50px" style="margin: 10px" Width="170px" BackColor="#23274F" BorderStyle="None" ForeColor="White" Font-Size="Large" OnClick="Button1_Click" />
                </div>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
