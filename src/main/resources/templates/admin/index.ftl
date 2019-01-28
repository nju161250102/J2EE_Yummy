<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <title>Yummy - 管理员首页</title>
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
    <form method="post" action="/admin/check">
    <table class="primary">
        <thead>
        <tr>
            <th>ID</th>
            <th>名称</th>
            <th>地址</th>
            <th>描述</th>
            <th>联系电话</th>
        </tr>
        </thead>
        <tbody>
        <#assign list=data?eval />
        <#list list as item>
        <tr>
            <td>
                <label>
                    <input type="checkbox" name="checkList" value="${item.stringId}">
                    <span class="checkable">${item.stringId}</span>
                </label>
            </td>
            <td>${item.name}</td>
            <td>${item.address}</td>
            <td>${item.description}</td>
            <td>${item.phone}</td>
        </tr>
        </#list>
        </tbody>
    </table>
        <input type="submit" value="审核通过"/>
    </form>
</div>
</body>
</html>