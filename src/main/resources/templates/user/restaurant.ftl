<!DOCTYPE html>
<html lang="ch">
<head>
    <meta charset="utf-8"/>
    <title>Yummy - 餐厅菜单</title>
    <link rel="stylesheet" href="/static/css/picnic.min.css" type="text/css" media="all"/>
</head>
<body>
<nav>
    <a href="#" class="brand">
        <span>订单填写</span>
    </a>
    <div class="menu">
        <a href="/user/index" class="pseudo button">餐厅列表</a>
        <a href="/user/order" class="pseudo button">我的订单</a>
        <a href="/user/info" class="pseudo button">个人资料</a>
    </div>
</nav>
<div style="padding: 100px 80px">
    <article class="card">
        <header>
            <#assign r=restaurant?eval>
            <p>餐厅名称：${r.name}</p>
            <p>${r.description}</p>
            <p>地址：${r.address} || 联系电话：${r.phone}</p>
        </header>
        <footer>
            <form method='post' action="/order/add">
                <input type="hidden" name="restId" value=${r.id}>
                <div>
                    <table class="primary">
                        <thead>
                        <tr>
                            <th>菜品名称</th>
                            <th>菜品单价</th>
                            <th>剩余数量</th>
                            <th>订购数量</th>
                        </tr>
                        </thead>
                        <tbody>
                        <#assign dishJson=dishList?eval />
                        <#list dishJson as item>
                            <tr>
                                <td>${item.name}</td>
                                <td>${item.price}</td>
                                <td>${item.num}</td>
                                <td>
                                    <label>
                                        <input type='number' min=0 max=${item.num} name=${item.id} value=0 />
                                    </label>
                                </td>
                            </tr>
                        </#list>
                        </tbody>
                    </table>
                </div>
                <div>
                    填写备注:
                    <label>
                        <textarea name="remark" maxlength="100"></textarea>
                    </label>
                </div>
                <div>
                    <#assign addressList=addressJson?eval>
                    <label>
                        <select name="address">
                            <#list addressList as item>
                                <option value=${item.id}>${item.detail}</option>
                            </#list>
                        </select>
                    </label>
                </div>
                <input type="submit" value="提交订单" style="height: 40px;width: 300px">
            </form>
        </footer>
    </article>
</div>
</body>
</html>