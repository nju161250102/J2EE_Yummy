<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <title>Yummy - 消费统计</title>
    <link rel="stylesheet" href="/static/css/picnic.min.css" type="text/css" media="all"/>
</head>
<body>
<nav class="demo">
    <a href="/user/index" class="brand">
        <span>Yummy!</span>
    </a>
    <div class="menu">
        <a href="/user/index" class="pseudo button">餐厅列表</a>
        <a href="/user/order" class="pseudo button">我的订单</a>
        <a href="/user/record" class="pseudo button">消费统计</a>
        <a href="/user/info" class="pseudo button">个人资料</a>
    </div>
</nav>
<div style="position: relative;width: 300px; margin: 20px; padding-top: 40px">
    <form method="post" action="/user/record">
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
                <th>餐厅</th>
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