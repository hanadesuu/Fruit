<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Fruit.Register" %>

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
            <h1 style="margin-left: 30px; margin-top: 36px">买家用户注册</h1>
            <div style="margin-left: 167px; margin-top: 11px; width: 567px; height: 574px;">
                <div style="height: 60px; margin: 5px">
                    <h3 style="border-bottom:2px solid #555199; margin-bottom: 11px; width: 350px;">姓名</h3>
                    <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="300px" BorderStyle="None" Font-Size="Large"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*请输入姓名" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
                <div style="height: 60px; margin: 5px">
                    <h3 style="border-bottom:2px solid #555199; margin-bottom: 11px; width: 350px;">密码</h3>
                    <asp:TextBox ID="TextBox2" runat="server" Height="30px" Width="300px" BorderStyle="None" Font-Size="Large" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*请输入密码" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
                <div style="height: 60px; margin: 5px">
                    <h3 style="border-bottom:2px solid #555199; margin-bottom: 11px; width: 350px;">再次输入密码</h3>
                    <asp:TextBox ID="TextBox3" runat="server" Height="30px" Width="300px" BorderStyle="None" Font-Size="Large" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="*请输入密码" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" ErrorMessage="*两次密码不一致" ForeColor="Red"></asp:CompareValidator>
                </div>
                <div style="height: 36px; margin: 5px">
                    <h3 style="border-bottom:2px solid #555199; margin-bottom: 11px; width: 350px;">性别<asp:RadioButton ID="RadioButton1" runat="server" Text="男" />
                        <asp:RadioButton ID="RadioButton2" runat="server" Text="女" />
                    </h3>
                </div>
                <div style="height: 60px; margin: 5px">
                    <h3 style="border-bottom:2px solid #555199; margin-bottom: 11px; width: 350px;">电子邮箱</h3>
                    <asp:TextBox ID="TextBox4" runat="server" Height="30px" Width="300px" BorderStyle="None" Font-Size="Large" TextMode="Email"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="*请输入邮箱" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox4" ErrorMessage="*请输入正确的邮箱" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator>
                </div>
                <div style="height: 60px; margin: 5px">
                    <h3 style="border-bottom:2px solid #555199; margin-bottom: 11px; width: 350px;">电话</h3>
                    <asp:TextBox ID="TextBox5" runat="server" Height="30px" Width="300px" BorderStyle="None" Font-Size="Large"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="*请输入电话" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
                <div style="height: 60px; margin: 5px">
                    <h3 style="border-bottom:2px solid #555199; margin-bottom: 11px; width: 350px;">地址</h3>
                    <asp:TextBox ID="TextBox6" runat="server" Height="30px" Width="300px" BorderStyle="None" Font-Size="Large"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox6" ErrorMessage="*请输入地址" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
                <div style="height: 131px; width: 193px; margin-left: 34px">
                    <asp:Button ID="Button1" runat="server" Text="注册" Height="50px" style="margin: 10px" Width="170px" BackColor="#23274F" BorderStyle="None" ForeColor="White" Font-Size="Large" OnClick="Button1_Click" />
                    
                    <asp:Label ID="Label1" runat="server" ForeColor="Red" Text="注册成功！" Visible="False"></asp:Label>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FruitConnectionString %>" OnSelecting="SqlDataSource1_Selecting" SelectCommand="SELECT * FROM [Customer]"></asp:SqlDataSource>
                    
                </div>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
