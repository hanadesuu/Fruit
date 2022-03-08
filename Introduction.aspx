<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Introduction.aspx.cs" Inherits="Fruit.Introduction" %>

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
            <img style="width: 420px; height: 720px;" src="/Image/left.png" />
        </div>
            <div style="width: 851px; float:left; height: 715px;">
        <div style="float:left; width: 110px; margin-left: 40px; margin-top: 30px;">
            <asp:ImageButton ID="ImageButton1" runat="server" style="height: 50px; width: 50px;" src="/Image/back.png" OnClick="ImageButton1_Click"/>
        </div>
                <h1 style="margin-left: 30px; margin-top: 36px">功能介绍</h1>
        <br />
        <br />
        <div>
            <div style="border: 3px solid #555199; float:left; width: 250px; height: 411px; margin-left: 37px; padding:3px"><h2>客户</h2>
                Customer
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                1、维护个人信息<br />
                2、查询水果信息<br />
                3、订购水果</div>
            <div style="border: 3px solid #555199; float:left; width: 250px; height: 411px; margin-left: 37px; padding:3px"><h2>店员</h2>
                Employee<br />
                <br />
                <br />
                <br />
                <br />
                <br />
                1、维护个人信息<br />
                2、水果信息查询<br />
                3、水果折扣管理<br />
                4、订单处理<br />
                5、水果信息汇总

            </div>
            &nbsp;</div>
        </div>
    </form>
</body>
</html>
