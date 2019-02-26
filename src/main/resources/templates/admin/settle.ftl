<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <title>Yummy - 管理员首页</title>
    <link rel="stylesheet" href="/static/css/picnic.min.css" type="text/css" media="all"/>
</head>
<body>
<nav class="demo">
    <a href="/admin/index" class="brand">
        <span>Yummy!</span>
    </a>
    <div class="menu">
        <a href="/admin/index" class="pseudo button">审核</a>
        <a href="/admin/settle" class="pseudo button">结算</a>
        <a href="/admin/statistic" class="pseudo button">统计</a>
    </div>
</nav>
<div align="center" style="margin-top: 70px">
    <form method="post" action="/order/settle">
        <input type="submit" value="一键结算">
    </form>
    <h3>${info!}</h3>
</div>
</body>
</html>