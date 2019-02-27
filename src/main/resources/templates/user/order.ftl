<!DOCTYPE html>
<html lang="ch">
<head>
    <meta charset="utf-8"/>
    <title>Yummy - 餐厅菜单</title>
    <link rel="stylesheet" href="/static/css/picnic.min.css" type="text/css" media="all"/>
</head>
<body>
<nav class="demo">
    <a href="#" class="brand">
        <span>我的订单</span>
    </a>
    <div class="menu">
        <a href="/user/index" class="pseudo button">餐厅列表</a>
        <a href="/user/record" class="pseudo button">消费统计</a>
        <a href="/user/info" class="pseudo button">个人资料</a>
    </div>
</nav>
</body>
<div style="padding: 100px 80px">
    <div>
        <form method="post" action="/order/getAll">
            <select name="type" title="订单类型">
                <option value="all" selected>全部订单</option>
                <option value="wait">待支付订单</option>
                <option value="out">超时订单</option>
                <option value="payed">已支付订单</option>
            </select>
            <input type="submit" value="查询" style="height: 40px;width: 50%">
        </form>
    </div>
    <#if orderJson??>
    <table class="primary">
        <thead>
        <tr>
            <th>订单状态</th>
            <th>订单餐厅</th>
            <th>下单时间</th>
            <th>订单金额</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody>
        <#assign orderInfo=orderJson?eval>
        <#list orderInfo as item>
            <tr>
                <td>${item.status}</td>
                <td>${item.restaurant}</td>
                <td>${item.createTime}</td>
                <td>${item.sum}</td>
                <td>
                    <a class="button" href="/order/info/${item.id}">查看</a>
                </td>
            </tr>
        </#list>
        </tbody>
    </table>
    </#if>
</div>
</html>