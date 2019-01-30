<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <title>Yummy - 会员首页</title>
    <link rel="stylesheet" href="/static/css/picnic.min.css" type="text/css" media="all"/>
    <script type="text/javascript" src="/static/js/jquery-1.12.2.min.js"></script>
    <script>
    </script>
</head>
<body>
<nav class="demo">
    <a href="/user/index" class="brand">
        <span>Yummy!</span>
    </a>
    <div class="menu">
        <a href="/user/index" class="pseudo button">餐厅列表</a>
        <a href="/user/order" class="pseudo button">我的订单</a>
        <a href="/user/info" class="pseudo button">个人资料</a>
    </div>
</nav>
<article class="card">
    <header>
        <div style="padding: 50px">
            <div style="background-color: #fff;border: 1px solid #d8dee2;padding: 20px">
                <form method="post" action="/user/update" style="width: 350px">
                    <#assign jsonInfo=userInfo?eval />
                    <label><input type="text" name="name" placeholder="姓名" value="${jsonInfo.name}" style="margin-bottom: 10px"></label>
                    <label><input type="text" name="phone" placeholder="联系电话" value="${jsonInfo.phone}" style="margin-bottom: 10px"></label>
                    <label><input type="text" name="cardNum" placeholder="绑定卡号" value="${jsonInfo.cardNum}" style="margin-bottom: 10px"></label>
                    <label><input type="text" name="cardPassword" placeholder="卡密码" value="" style="margin-bottom: 10px"></label>
                    <input class='success' type="submit" value="更新" style="height: 40px;width: 50%">
                </form>
            </div>
            <br>
            <div style="background-color: #fff;border: 1px solid #d8dee2;padding: 20px">
                <form action="/address/setDefault" method="post" style="width: 350px">
                    <table class="primary">
                        <thead>
                        <tr>
                            <th>ID</th>
                            <th>地址</th>
                        </tr>
                        </thead>
                        <tbody>
                        <#assign address=userAddress?eval />
                        <#list address as item>
                            <tr>
                                <td>
                                    <label>
                                        <input type='radio' name="default" value="${item.id}" ${(item.status == 0)?string("", "checked")}>
                                        <span class="checkable"> </span>
                                    </label>
                                </td>
                                <td>${item.detail}</td>
                            </tr>
                        </#list>
                        </tbody>
                    </table>
                    <input class='success' type="submit" value="设为默认" style="height: 40px;width: 50%">
                </form>

                <form action="/address/add" method="post" style="width: 350px">
                    <label><input type="text" name="address" placeholder="新地址" style="margin-bottom: 10px"></label>
                    <br>
                    <input class='button' type="submit" value="加入列表" style="height: 40px;width: 50%">
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