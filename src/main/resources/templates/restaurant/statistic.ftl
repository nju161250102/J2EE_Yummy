<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <title>Yummy - 财务统计</title>
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
<div style="position: relative;width: 300px; margin: 20px; padding-top: 40px">
    <form method="post" action="/restaurant/statistic">
        <label><input type="date" name="startDate"></label>
        <label><input type="date" name="endDate"></label>
        <input type="submit" value="查询">
    </form>
</div>

<div style="margin-left: 20px">
    <#if result??>
        <table class="primary">
            <thead>
            <tr>
                <th>用户</th>
                <th>订单总额</th>
                <th>支付总额</th>
                <th>取消订单总额</th>
                <th>退款总额</th>
            </tr>
            </thead>
            <tbody>
            <#assign json=result?eval>
            <#list json as item>
                <tr>
                    <td>${item.restName}</td>
                    <td>${item.orderSum}</td>
                    <td>${item.orderPayment}</td>
                    <td>${item.cancelSum}</td>
                    <td>${item.refund}</td>
                </tr>
            </#list>
            </tbody>
        </table>
    </#if>
</div>
</body>
</html>