<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="Fruit.HomePage" %>

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
            <img style="width: 420px; height: 720px;" src="/Image/left.png" /></div>
            <div style="width: 851px; float:left; height: 715px;">
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <div style="float:left; width: 80px; margin-left: 243px;"><img style="width: 70px; height: 70px; margin-top: 12px;" src="/Image/logo.png" /></div>
                <div style="float:left; margin-top: 0px;"><h1 style="margin-left: 0px; margin-bottom: 0px;">先辈水果店</h1></div>
                <div style="height: 228px; margin-left: 310px; margin-top: 161px;">
                    <asp:Button ID="Button1" runat="server" Text="系统功能介绍" Height="70px" Width="200px" style="margin-left: 0px" BackColor="#23274F" BorderStyle="None" ForeColor="White" Font-Size="Large" OnClick="Button1_Click" />
                    <br/>
                    <br/>
                    <asp:Button ID="Button2" runat="server" Text="进入系统" Height="70px" Width="200px" style="margin-left: 0px" BackColor="#23274F" BorderStyle="None" ForeColor="White" OnClick="Button2_Click" Font-Size="Large" />
                </div>
                </div>
        </div>
    </form>
</body>
</html>
