<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageFruit.aspx.cs" Inherits="Fruit.SellFruit.ManageFruit" %>

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
            <asp:Button ID="Button1" runat="server" Text="个人信息" BackColor="#23274F" BorderStyle="None" Font-Bold="True" Font-Size="Large" ForeColor="White" Height="80px" OnClick="Button1_Click" Width="240px" />
            <asp:Button ID="Button2" runat="server" Text="管理水果" BackColor="#706E97" BorderStyle="None" Font-Bold="True" Font-Size="Large" ForeColor="White" Height="80px" OnClick="Button2_Click" Width="240px" />
            <asp:Button ID="Button3" runat="server" Text="管理订单" BackColor="#23274F" BorderStyle="None" Font-Bold="True" Font-Size="Large" ForeColor="White" Height="80px" OnClick="Button3_Click" Width="240px" />
        </div>
        <div style="width: 1040px; float:left; height: 720px; background-color:#AE92D6">
            <div style="float:left; width: 907px;">
                <h1 style="margin-left: 30px; margin-top: 36px; width: 198px;">管理水果</h1>
            </div>
            <div style="float:left; height: 62px; width: 96px; padding-left: 30px;padding-top:30px">
                <asp:Button ID="Button7" runat="server" Text="退出" BackColor="#23274F" BorderStyle="None" Font-Size="Large" ForeColor="White" Height="39px" OnClick="Button7_Click" Width="73px" />
            </div>
            <div style="margin-left: 50px; margin-top: 130px">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="FruitCode" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="225px" style="margin-left: 0px">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="FruitCode" HeaderText="水果编号" ReadOnly="True" SortExpression="FruitCode" />
                        <asp:BoundField DataField="FruitName" HeaderText="水果名称" SortExpression="FruitName" />
                        <asp:BoundField DataField="ProductionCode" HeaderText="生产地编号" SortExpression="ProductionCode" />
                        <asp:BoundField DataField="ProductionDate" HeaderText="生产日期" SortExpression="ProductionDate" />
                        <asp:BoundField DataField="Season" HeaderText="季节" SortExpression="Season" />
                        <asp:BoundField DataField="Picture" HeaderText="图片" SortExpression="Picture" />
                        <asp:BoundField DataField="Introduction" HeaderText="介绍" SortExpression="Introduction" />
                        <asp:BoundField DataField="Price" HeaderText="价格" SortExpression="Price" />
                        <asp:BoundField DataField="Discount" HeaderText="折扣" SortExpression="Discount" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FruitConnectionString %>" SelectCommand="SELECT * FROM [Fruit]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Fruit] WHERE [FruitCode] = @original_FruitCode AND (([FruitName] = @original_FruitName) OR ([FruitName] IS NULL AND @original_FruitName IS NULL)) AND (([ProductionCode] = @original_ProductionCode) OR ([ProductionCode] IS NULL AND @original_ProductionCode IS NULL)) AND (([ProductionDate] = @original_ProductionDate) OR ([ProductionDate] IS NULL AND @original_ProductionDate IS NULL)) AND (([Season] = @original_Season) OR ([Season] IS NULL AND @original_Season IS NULL)) AND (([Picture] = @original_Picture) OR ([Picture] IS NULL AND @original_Picture IS NULL)) AND (([Introduction] = @original_Introduction) OR ([Introduction] IS NULL AND @original_Introduction IS NULL)) AND (([Price] = @original_Price) OR ([Price] IS NULL AND @original_Price IS NULL)) AND (([Discount] = @original_Discount) OR ([Discount] IS NULL AND @original_Discount IS NULL))" InsertCommand="INSERT INTO [Fruit] ([FruitCode], [FruitName], [ProductionCode], [ProductionDate], [Season], [Picture], [Introduction], [Price], [Discount]) VALUES (@FruitCode, @FruitName, @ProductionCode, @ProductionDate, @Season, @Picture, @Introduction, @Price, @Discount)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Fruit] SET [FruitName] = @FruitName, [ProductionCode] = @ProductionCode, [ProductionDate] = @ProductionDate, [Season] = @Season, [Picture] = @Picture, [Introduction] = @Introduction, [Price] = @Price, [Discount] = @Discount WHERE [FruitCode] = @original_FruitCode AND (([FruitName] = @original_FruitName) OR ([FruitName] IS NULL AND @original_FruitName IS NULL)) AND (([ProductionCode] = @original_ProductionCode) OR ([ProductionCode] IS NULL AND @original_ProductionCode IS NULL)) AND (([ProductionDate] = @original_ProductionDate) OR ([ProductionDate] IS NULL AND @original_ProductionDate IS NULL)) AND (([Season] = @original_Season) OR ([Season] IS NULL AND @original_Season IS NULL)) AND (([Picture] = @original_Picture) OR ([Picture] IS NULL AND @original_Picture IS NULL)) AND (([Introduction] = @original_Introduction) OR ([Introduction] IS NULL AND @original_Introduction IS NULL)) AND (([Price] = @original_Price) OR ([Price] IS NULL AND @original_Price IS NULL)) AND (([Discount] = @original_Discount) OR ([Discount] IS NULL AND @original_Discount IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_FruitCode" Type="String" />
                        <asp:Parameter Name="original_FruitName" Type="String" />
                        <asp:Parameter Name="original_ProductionCode" Type="String" />
                        <asp:Parameter DbType="Date" Name="original_ProductionDate" />
                        <asp:Parameter Name="original_Season" Type="String" />
                        <asp:Parameter Name="original_Picture" Type="String" />
                        <asp:Parameter Name="original_Introduction" Type="String" />
                        <asp:Parameter Name="original_Price" Type="Int32" />
                        <asp:Parameter Name="original_Discount" Type="String" />
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
                    <UpdateParameters>
                        <asp:Parameter Name="FruitName" Type="String" />
                        <asp:Parameter Name="ProductionCode" Type="String" />
                        <asp:Parameter DbType="Date" Name="ProductionDate" />
                        <asp:Parameter Name="Season" Type="String" />
                        <asp:Parameter Name="Picture" Type="String" />
                        <asp:Parameter Name="Introduction" Type="String" />
                        <asp:Parameter Name="Price" Type="Int32" />
                        <asp:Parameter Name="Discount" Type="String" />
                        <asp:Parameter Name="original_FruitCode" Type="String" />
                        <asp:Parameter Name="original_FruitName" Type="String" />
                        <asp:Parameter Name="original_ProductionCode" Type="String" />
                        <asp:Parameter DbType="Date" Name="original_ProductionDate" />
                        <asp:Parameter Name="original_Season" Type="String" />
                        <asp:Parameter Name="original_Picture" Type="String" />
                        <asp:Parameter Name="original_Introduction" Type="String" />
                        <asp:Parameter Name="original_Price" Type="Int32" />
                        <asp:Parameter Name="original_Discount" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
