<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <title>Yummy - 管理员统计</title>
    <link rel="stylesheet" href="/static/css/picnic.min.css" type="text/css" media="all"/>
    <script type="text/javascript" src="/static/js/jquery-1.12.2.min.js"></script>
    <script>
    </script>
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
<div style="padding: 100px 80px">
    <#assign json=result?eval>
    <h3>平台总用户数：${json.userNum}</h3>
    <h3>平台总餐厅数：${json.restaurantNum}</h3>
    <h3>平台上线总收入：${json.benefitSum}</h3>
</div>
</body>
</html>