<!DOCTYPE html>
<html lang="ch">
<head>
    <meta charset="utf-8"/>
    <title>Yummy - 会员首页</title>
    <link rel="stylesheet" href="/static/css/picnic.min.css" type="text/css" media="all"/>
</head>
<body>
<nav class="demo">
    <a href="/restaurant/index" class="brand">
        <span>Yummy!</span>
    </a>
    <div class="menu">
        <a href="/restaurant/index" class="pseudo button">菜品列表</a>
        <a href="/restaurant/record" class="pseudo button">送餐记录</a>
        <a href="/restaurant/statistic" class="pseudo button">财务统计</a>
        <a href="/restaurant/info" class="pseudo button">个人资料</a>
    </div>
</nav>
<div style="padding: 100px 80px">
    <table class="primary">
        <thead>
        <tr>
            <th>订单状态</th>
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
                <td>${item.createTime}</td>
                <td>${item.sum}</td>
                <td>
                    <a class="button" href="/order/info/${item.id}">查看</a>
                </td>
            </tr>
        </#list>
        </tbody>
    </table>
</div>
</body>
</html>