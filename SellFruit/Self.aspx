<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Self.aspx.cs" Inherits="Fruit.SellFruit.Self" %>

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
                <h1 style="color:white; margin-left: 1px; width: 246px;">卖家系统</h1>
            </div>
            <asp:Button ID="Button1" runat="server" Text="个人信息" BackColor="#706E97" BorderStyle="None" Font-Bold="True" Font-Size="Large" ForeColor="White" Height="80px" OnClick="Button1_Click" Width="240px" />
            <asp:Button ID="Button2" runat="server" Text="管理水果" BackColor="#23274F" BorderStyle="None" Font-Bold="True" Font-Size="Large" ForeColor="White" Height="80px" OnClick="Button2_Click" Width="240px" />
            <asp:Button ID="Button3" runat="server" Text="管理订单" BackColor="#23274F" BorderStyle="None" Font-Bold="True" Font-Size="Large" ForeColor="White" Height="80px" OnClick="Button3_Click" Width="240px" />
        </div>
        <div style="width: 1040px; float:left; height: 720px; background-color:#AE92D6">
            <div style="float:left; width: 907px;">
                <h1 style="margin-left: 30px; margin-top: 36px; width: 198px;">个人信息</h1>
            </div>
            <div style="float:left; height: 62px; width: 96px; padding-left: 30px;padding-top:30px">
                <asp:Button ID="Button7" runat="server" Text="退出" BackColor="#23274F" BorderStyle="None" Font-Size="Large" ForeColor="White" Height="39px" OnClick="Button7_Click" Width="73px" />
            </div>
            <div style="margin-left: 263px; margin-top: 182px">
                <asp:DetailsView ID="DetailsView1" runat="server" Height="89px" Width="385px" AutoGenerateRows="False" DataKeyNames="EmployeeCode" DataSourceID="SqlDataSource1" Font-Size="X-Large" style="margin-top: 168px" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                    <EditRowStyle BackColor="#999999" />
                    <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                    <Fields>
                        <asp:BoundField DataField="EmployeeCode" HeaderText="卖家编号" ReadOnly="True" SortExpression="EmployeeCode" />
                        <asp:BoundField DataField="Name" HeaderText="姓名" SortExpression="Name" />
                        <asp:BoundField DataField="Password" HeaderText="密码" SortExpression="Password" />
                        <asp:BoundField DataField="IsManager" HeaderText="是否是管理员" SortExpression="IsManager" />
                    </Fields>
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FruitConnectionString %>" SelectCommand="SELECT * FROM [Employee] WHERE ([EmployeeCode] = @EmployeeCode)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="00001" Name="EmployeeCode" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
