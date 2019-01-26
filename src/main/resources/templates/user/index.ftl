<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <title>Yummy - 会员首页</title>
    <link rel="stylesheet" href="/static/css/picnic.min.css" type="text/css" media="all"/>
    <script type="text/javascript" src="/static/js/jquery-1.12.2.min.js"></script>
    <script>
    </script>
</head>
<body>
<nav class="demo">
    <a href="/user/index" class="brand">
        <span>Yummy!</span>
    </a>
    <div class="menu">
        <a href="/user/index" class="pseudo button">餐厅列表</a>
        <a href="/user/order" class="pseudo button">我的订单</a>
        <a href="/user/info" class="pseudo button">个人资料</a>
    </div>
</nav>
<div class="flex four" style="padding: 70px 100px">
    <#assign json=data?eval />
    <#list json as item>
    <article class="card">
        <header>
            <h4>${item.name}</h4>
            <p>地址：${item.address}</p>
            <p>联系电话：${item.phone}</p>
        </header>
        <footer>
            <a class="button" href="/user/restaurant/${item.id}">进入</a>
        </footer>
    </article>
    </#list>
</div>
</body>
</html>
