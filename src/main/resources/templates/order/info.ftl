<!DOCTYPE html>
<html lang="ch">
<head>
    <meta charset="utf-8"/>
    <title>Yummy - 订单查看</title>
    <link rel="stylesheet" href="/static/css/picnic.min.css" type="text/css" media="all"/>
</head>
<body>
<nav class="demo">
    <a href="/user/order" class="brand">
        <span>我的订单</span>
    </a>
</nav>
<#assign order=orderJson?eval>
<div style="padding: 100px 80px">
    <article class="card">
        <header>
            <p>餐厅名称：${order.restaurant}</p>
            <p>下单时间：${order.createTime}</p>
            <p>地址：${order.remark}</p>
        </header>
        <footer>
            <table class="primary">
                <thead>
                <tr>
                    <th>菜品名称</th>
                    <th>菜品单价</th>
                    <th>订购数量</th>
                </tr>
                </thead>
                <tbody>
                <#list order.items as item>
                    <tr>
                        <td>${item.name}</td>
                        <td>${item.price}</td>
                        <td>${item.num}</td>
                    </tr>
                </#list>
                </tbody>
            </table>
        </footer>
        <div>
            总计：${order.sum}
            <#if order.status==0>
                <form method="post" action="/order/pay/${order.id}">
                    <label>
                        密码：
                        <input type="password" name="password" max="6">
                    </label>
                    <input type="submit" value="支付">
                </form>
            </#if>
            <#if order.status==1>
                <a class="button" href="/order/confirm/${order.id}">确认收货</a>
                <a class="button" href="/order/cancel/${order.id}">取消订单</a>
            </#if>
            <#if order.status==3>
                <a class="button dangerous" href="#">已取消</a>
            </#if>
            <#if order.status==4>
                <a class="button dangerous" href="#">已收货</a>
            </#if>
        </div>
    </article>
</div>
</body>
</html>