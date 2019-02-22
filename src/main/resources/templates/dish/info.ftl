<!DOCTYPE html>
<html lang="ch">
<head>
    <meta charset="utf-8"/>
    <title>Yummy - 套餐编辑</title>
    <link rel="stylesheet" href="/static/css/picnic.min.css" type="text/css" media="all"/>
</head>
<body>
<div>
    <div>
        <table class="primary">
            <thead>
            <tr>
                <th>名称</th>
                <th>价格</th>
                <th>数量</th>
                <th>操作</th>
            </tr>
            </thead>
            <tbody>
            <#assign dishJson=itemList?eval />
            <#list dishJson as item>
                <tr>
                    <td>${item.name}</td>
                    <td>${item.price}</td>
                    <td>${item.num}</td>
                    <td>
                        <#if edit=true>
                            <a class="button" href="/dishItem/delete/${item.id}">删除此项</a>
                        </#if>
                    </td>
                </tr>
            </#list>
            </tbody>
        </table>
    </div>
    <#if edit=true>
    <div>
        <form method="post" action="/dishItem/add" style="width: 350px">
            <div style="background-color: #fff;border: 1px solid #d8dee2;padding: 20px">
                <label><input type="text" name="name" placeholder="名称" style="margin-bottom: 10px"></label>
                <label><input type="text" name="price" placeholder="价格" style="margin-bottom: 10px"></label>
                <label><input type="number" name="num" placeholder="数量" style="margin-bottom: 10px"></label>
                <input class='success' type="submit" value="提交" style="height: 40px;width: 50%">
            </div>
        </form>
    </div>
    <a class="button success" href="/dish/finish">完成编辑</a>
    </#if>
</div>
</body>
</html>