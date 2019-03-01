<!DOCTYPE html>
<html lang="ch">
<head>
    <meta charset="utf-8"/>
    <title>Yummy - 会员首页</title>
    <link rel="stylesheet" href="/static/css/picnic.min.css" type="text/css" media="all"/>
</head>
<body>
<nav class="demo">
    <a href="/restaurant/index" class="brand">
        <span>Yummy!</span>
    </a>
    <div class="menu">
        <a href="/restaurant/index" class="pseudo button">菜品列表</a>
        <a href="/restaurant/record" class="pseudo button">送餐记录</a>
        <a href="/restaurant/statistic" class="pseudo button">财务统计</a>
        <a href="/restaurant/info" class="pseudo button">个人资料</a>
    </div>
</nav>
<article class="card">
    <header>
        <div style="padding: 50px">
            <div style="background-color: #fff;border: 1px solid #d8dee2;padding: 20px">
                <form method="post" action="/restaurant/update" style="width: 350px">
                    <#assign jsonInfo=restaurantInfo?eval />
                    <label><input type="text" name="name" placeholder="餐厅名称" value="${jsonInfo.name}" style="margin-bottom: 10px"></label>
                    <label><input type="text" name="phone" placeholder="联系电话" value="${jsonInfo.phone}" style="margin-bottom: 10px"></label>
                    <label><input type="text" name="address" placeholder="餐厅地址" value="${jsonInfo.address}" style="margin-bottom: 10px"></label>
                    <textarea name="description" placeholder="餐厅描述" style="margin-bottom: 10px">${jsonInfo.description}</textarea>
                    <input class='success' type="submit" value="更新" style="height: 40px;width: 50%">
                </form>
            </div>
            <div style="background-color: #fff;border: 1px solid #d8dee2;padding: 20px">
                <form action="/restaurant/cancelUpdate" method="post" style="width: 350px">
                    <input class='button' type="submit" value="取消更改" style="height: 40px;width: 50%">
                </form>
            </div>
            <div style="background-color: #fff;border: 1px solid #d8dee2;padding: 20px">
                <form method="post" action="/restaurant/changePassword">
                    <label><input type="password" name="oldPassword" placeholder="旧密码" style="margin-bottom: 10px"></label>
                    <label><input type="password" name="newPassword" placeholder="设置密码" style="margin-bottom: 10px"></label>
                    <input class='button' type="submit" value="更改密码" style="height: 40px;width: 50%">
                </form>
            </div>
        </div>
    </header>
    <footer>
        <div align="center">
            <h3 id="info">${info!}</h3>
        </div>
    </footer>
</article>
</body>
</html>