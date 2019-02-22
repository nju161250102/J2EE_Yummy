<!DOCTYPE html>
<html lang="ch">
<head>
    <meta charset="utf-8"/>
    <title>Yummy - 支付结果</title>
    <link rel="stylesheet" href="/static/css/picnic.min.css" type="text/css" media="all"/>
</head>
<nav class="demo">
    <a href="#" class="brand">
        <span>支付结果</span>
    </a>
    <div class="menu">
        <a href="/user/index" class="pseudo button">返回首页</a>
    </div>
</nav>
<body>
<#assign result=resultJson?eval>
    <h2>
        <#if result.success>
            支付成功
        <#else>
            支付失败
        </#if>
    </h2>
    <p>${result.info}</p>
</body>
</html>