<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <title>Yummy - 错误提示</title>
    <link rel="stylesheet" href="/static/css/picnic.min.css" type="text/css" media="all"/>
</head>
<body>
<h1>Oops!您的访问出现了问题</h1>
<#if infos??>
    <#list infos as item>
        <h3>${item}</h3>
    </#list>
</#if>
</body>
</html>