<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <title>Yummy - 餐厅注册</title>
    <link rel="stylesheet" href="/static/css/picnic.min.css" type="text/css" media="all"/>
</head>
<body>
<article class="card" style="padding-top: 20px">
    <header>
        <div align="center">
            <form method="post" action="/restaurant/register" style="width: 350px">
                <div style="background-color: #fff;border: 1px solid #d8dee2;padding: 20px">
                    <label><input type="text" name="name" placeholder="名称" style="margin-bottom: 10px"></label>
                    <label><input type="text" name="address" placeholder="地址" style="margin-bottom: 10px"></label>
                    <label><input type="text" name="phone" placeholder="联系方式" style="margin-bottom: 10px"></label>
                    <label><input type="password" name="password" placeholder="设置密码" style="margin-bottom: 10px"></label>
                    <textarea name="description" placeholder="详细描述" style="margin-bottom: 10px"></textarea>
                    <input class='success' type="submit" value="注册" style="height: 40px;width: 50%">
                    <a href="/index">
                        <input id="return" class='warning' type="button" value="返回" style="height: 40px;width: 50%">
                    </a>
                </div>
            </form>
            <footer>
                <div align="center">
                    <h3 id="info">${info!}</h3>
                </div>
            </footer>
        </div>
    </header>
</body>
</html>