<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SearchFruit.aspx.cs" Inherits="Fruit.BuyFruit.SearchFruit" %>

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
            <asp:Button ID="Button2" runat="server" Text="查询水果" BackColor="#706E97" BorderStyle="None" Font-Bold="True" Font-Size="Large" ForeColor="White" Height="80px" OnClick="Button2_Click" Width="240px" />
            <asp:Button ID="Button3" runat="server" Text="订购水果" BackColor="#23274F" BorderStyle="None" Font-Bold="True" Font-Size="Large" ForeColor="White" Height="80px" OnClick="Button3_Click" Width="240px" />
            <asp:Button ID="Button4" runat="server" Text="查询订单" BackColor="#23274F" BorderStyle="None" Font-Bold="True" Font-Size="Large" ForeColor="White" Height="80px" OnClick="Button4_Click" Width="240px" />
            <asp:Button ID="Button5" runat="server" Text="会员服务" BackColor="#23274F" BorderStyle="None" Font-Bold="True" Font-Size="Large" ForeColor="White" Height="80px" OnClick="Button5_Click" Width="240px" />
        </div>
        <div style="width: 1040px; float:left; height: 720px; background-color:#AE92D6">
            <div style="float:left; width: 907px;">
                <h1 style="margin-left: 30px; margin-top: 36px; width: 198px;">查询水果</h1>
            </div>
            <div style="float:left; height: 62px; width: 96px; padding-left: 30px;padding-top:30px">
                <asp:Button ID="Button7" runat="server" Text="退出" BackColor="#23274F" BorderStyle="None" Font-Size="Large" ForeColor="White" Height="39px" OnClick="Button7_Click" Width="73px" />
            </div>
            <div style="height: 56px; margin-left: 0px; padding-left:35px">
                <div style="float:left; height: 50px; margin:5px;">选择季节：<asp:DropDownList ID="DropDownList1" runat="server" Height="30px" Width="100px">
                    <asp:ListItem>春</asp:ListItem>
                    <asp:ListItem>夏</asp:ListItem>
                    <asp:ListItem>秋</asp:ListItem>
                    <asp:ListItem>冬</asp:ListItem>
                    </asp:DropDownList></div>
                <div style="float:left; height: 50px; margin:5px;">
                    <asp:Button ID="Button8" runat="server" Text="确定" BackColor="#23274F" BorderStyle="None" Font-Size="Large" ForeColor="White" Height="30px" OnClick="Button8_Click" Width="73px" />
                </div>
            </div>
            <div style="margin-left: 68px">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="FruitCode" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="231px" Width="885px">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="FruitCode" HeaderText="FruitCode" ReadOnly="True" SortExpression="FruitCode" />
                        <asp:BoundField DataField="FruitName" HeaderText="FruitName" SortExpression="FruitName" />
                        <asp:BoundField DataField="ProductionCode" HeaderText="ProductionCode" SortExpression="ProductionCode" />
                        <asp:BoundField DataField="ProductionDate" HeaderText="ProductionDate" SortExpression="ProductionDate" />
                        <asp:BoundField DataField="Season" HeaderText="Season" SortExpression="Season" />
                        <asp:BoundField DataField="Picture" HeaderText="Picture" SortExpression="Picture" />
                        <asp:BoundField DataField="Introduction" HeaderText="Introduction" SortExpression="Introduction" />
                        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                        <asp:BoundField DataField="Discount" HeaderText="Discount" SortExpression="Discount" />
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FruitConnectionString %>" DeleteCommand="DELETE FROM [Fruit] WHERE [FruitCode] = @FruitCode" InsertCommand="INSERT INTO [Fruit] ([FruitCode], [FruitName], [ProductionCode], [ProductionDate], [Season], [Picture], [Introduction], [Price], [Discount]) VALUES (@FruitCode, @FruitName, @ProductionCode, @ProductionDate, @Season, @Picture, @Introduction, @Price, @Discount)" SelectCommand="SELECT * FROM [Fruit] WHERE ([Season] = @Season)" UpdateCommand="UPDATE [Fruit] SET [FruitName] = @FruitName, [ProductionCode] = @ProductionCode, [ProductionDate] = @ProductionDate, [Season] = @Season, [Picture] = @Picture, [Introduction] = @Introduction, [Price] = @Price, [Discount] = @Discount WHERE [FruitCode] = @FruitCode">
                    <DeleteParameters>
                        <asp:Parameter Name="FruitCode" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="FruitCode" Type="String" />
                        <asp:Parameter Name="FruitName" Type="String" />
                        <asp:Parameter Name="ProductionCode" Type="String" />
                        <asp:Parameter DbType="Date" Name="ProductionDate" />
                        <asp:Parameter Name="Season" Type="String" />
                        <asp:Parameter Name="Picture" Type="String" />
                        <asp:Parameter Name="Introduction" Type="String" />
                        <asp:Parameter Name="Price" Type="Int32" />
                        <asp:Parameter Name="Discount" Type="String" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="Season" PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="FruitName" Type="String" />
                        <asp:Parameter Name="ProductionCode" Type="String" />
                        <asp:Parameter DbType="Date" Name="ProductionDate" />
                        <asp:Parameter Name="Season" Type="String" />
                        <asp:Parameter Name="Picture" Type="String" />
                        <asp:Parameter Name="Introduction" Type="String" />
                        <asp:Parameter Name="Price" Type="Int32" />
                        <asp:Parameter Name="Discount" Type="String" />
                        <asp:Parameter Name="FruitCode" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
