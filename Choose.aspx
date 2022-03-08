<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Choose.aspx.cs" Inherits="Fruit.Choose" %>

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
                <h1 style="margin-left: 30px; margin-top: 36px">登录选择</h1>
                <div style="height: 308px; width: 399px; margin-left: 123px; margin-top: 93px;">
                    <h3 style="border-bottom:2px solid #555199; margin-bottom: 11px;">已有账号</h3>
                        <div style="height: 68px">
                            <div style="float:left;">
                                <asp:Button ID="Button1" runat="server" Text="买家登录" Height="50px" style="margin: 10px" Width="170px" BackColor="#23274F" BorderStyle="None" ForeColor="White" Font-Size="Large" OnClick="Button1_Click" />
                            </div>
                            <div style="float:left">
                                <asp:Button ID="Button2" runat="server" Text="卖家登录" Height="50px" style="margin: 10px" Width="170px" BackColor="#23274F" BorderStyle="None" ForeColor="White" Font-Size="Large" OnClick="Button2_Click" />
                            </div>
                        </div>
                        <div style="height: 84px">
                            <div style="float:left">
                            </div>
                            <div style="float:left">
                            </div>
                        </div>
                        <div style="height: 33px">
                            <h3 style="border-bottom:2px solid; border-bottom-color:#555199" >尚无账号</h3>
                        </div>
                        <div>
                            <asp:Button ID="Button5" runat="server" Text="注册页面入口" Height="50px" style="margin: 10px" Width="360px" BackColor="#23274F" BorderStyle="None" ForeColor="White" Font-Size="Large" OnClick="Button5_Click" />
                        </div>
                </div>

            </div>
        </div>
    </form>
</body>
</html>
