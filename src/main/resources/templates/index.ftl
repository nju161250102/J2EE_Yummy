<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <title>Yummy - 首页</title>
    <link rel="stylesheet" href="/static/css/picnic.min.css" type="text/css" media="all"/>
</head>
<header>
    <nav class="demo">
        <a href="#" class="brand">Yummy!</a>

        <div class="menu">
            <a href="/register/user" class="button icon-puzzle">会员注册</a>
            <a href="/register/restaurant" class="button icon-puzzle">餐厅注册</a>
        </div>
    </nav>
</header>
<body>
<article class="card" style="padding-top: 100px">
    <header>
        <div align="center">
            <h2 style="margin: 0">登录</h2>
        </div>
    </header>
    <footer>
        <div align="center">
            <form method="post" action="/login" style="width: 350px">
                <div style="background-color: #fff;border: 1px solid #d8dee2;padding: 20px">
                    <label><input type="email" name="username" placeholder="用户名" style="margin-bottom: 10px"></label>
                    <label><input type="password" name="password" placeholder="密码" style="margin-bottom: 10px"></label>
                    <input type="submit" value="登录" style="height: 40px;width: 50%">
                </div>
            </form>
        </div>
    </footer>
</article>
</body>
</html>