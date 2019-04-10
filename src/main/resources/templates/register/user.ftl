<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <title>Yummy - 会员注册</title>
    <link rel="stylesheet" href="/static/css/picnic.min.css" type="text/css" media="all"/>
    <script type="text/javascript" src="/static/js/jquery-1.12.2.min.js"></script>
    <script>
        function getCode() {
            $.post("/user/code", {mail: $("#email").val()}, function(data, status){
                $("#info").val(data);
            });
        }
    </script>
</head>
<body>
<article class="card" style="padding-top: 20px">
    <header>
        <div align="center">
            <form method="post" action="/user/register" style="width: 350px">
                <div style="background-color: #fff;border: 1px solid #d8dee2;padding: 20px">
                    <label><input id="email" type="email" name="email" placeholder="邮箱" style="margin-bottom: 10px"></label>
                    <div class="flex two">
                        <div class="half">
                            <input type="text" name="code" placeholder="验证码">
                        </div>
                        <div class="half">
                            <button type="button" onclick="getCode()" style="margin: 0">获取验证码</button>
                        </div>
                    </div>
                    <label><input type="password" name="password" placeholder="设置密码" style="margin-bottom: 10px"></label>
                    <input class='success' type="submit" value="注册" style="height: 40px;width: 50%">
                    <a href="/index">
                        <input id="return" class='warning' type="button" value="返回" style="height: 40px;width: 50%">
                    </a>
                </div>
            </form>
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