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
<div style="padding: 100px 80px">
    <div>
        <table class="primary">
            <thead>
            <tr>
                <th>名称</th>
                <th>价格</th>
                <th>剩余数量</th>
                <th>销售开始日期</th>
                <th>销售结束日期</th>
                <th>操作</th>
            </tr>
            </thead>
            <tbody>
            <#assign dishJson=dishList?eval />
            <#list dishJson as item>
                <tr>
                    <td>${item.name}</td>
                    <td>${item.price}</td>
                    <td>${item.num}</td>
                    <td>${item.startDate}</td>
                    <td>${item.endDate}</td>
                    <td>
                        <#if item.hasItem=1>
                            <a class="button" href="/dish/info/${item.id}">
                                <#if item.price==0>
                                    编辑
                                <#else>
                                    查看
                                </#if>
                            </a>
                        </#if>
                    </td>
                </tr>
            </#list>
            </tbody>
        </table>
    </div>

    <label for="modal_simple" class="button">新增菜品</label>

    <div class="modal">
        <input id="modal_simple" type="checkbox" />
        <label for="modal_simple" class="overlay"></label>
        <article>
            <header>
                <h3>新增菜品</h3>
                <label for="modal_simple" class="close">&times;</label>
            </header>
            <section class="content">
                <form method="post" action="/dish/add" style="width: 350px">
                    <div style="background-color: #fff;border: 1px solid #d8dee2;padding: 20px">
                        <label><input type="text" name="name" placeholder="名称" style="margin-bottom: 10px"></label>
                        <label><input type="text" name="price" placeholder="价格" style="margin-bottom: 10px"></label>
                        <label><input type="number" name="num" placeholder="数量" style="margin-bottom: 10px"></label>
                        <label><input type="date" name="startDate" placeholder="销售开始日期" style="margin-bottom: 10px"></label>
                        <label><input type="date" name="endDate" placeholder="销售结束日期" style="margin-bottom: 10px"></label>
                        <label><input type="hidden" name="type" value="simple"></label>
                        <input class='success' type="submit" value="提交" style="height: 40px;width: 50%">
                    </div>
                </form>
            </section>
            <footer>
                <label for="modal_simple" class="button dangerous">
                    取消
                </label>
            </footer>
        </article>
    </div>

    <label for="modal_package" class="button">新增套餐</label>

    <div class="modal">
        <input id="modal_package" type="checkbox" />
        <label for="modal_package" class="overlay"></label>
        <article>
            <header>
                <h3>新增套餐</h3>
                <label for="modal_package" class="close">&times;</label>
            </header>
            <section class="content">
                <form method="post" action="/dish/add" style="width: 350px">
                    <div style="background-color: #fff;border: 1px solid #d8dee2;padding: 20px">
                        <label><input type="text" name="name" placeholder="名称" style="margin-bottom: 10px"></label>
                        <label><input type="number" name="num" placeholder="数量" style="margin-bottom: 10px"></label>
                        <label><input type="date" name="startDate" placeholder="销售开始日期" style="margin-bottom: 10px"></label>
                        <label><input type="date" name="endDate" placeholder="销售结束日期" style="margin-bottom: 10px"></label>
                        <label><input type="hidden" name="type" value="package"></label>
                        <input class='success' type="submit" value="提交" style="height: 40px;width: 50%">
                    </div>
                </form>
            </section>
            <footer>
                <label for="modal_package" class="button dangerous">
                    取消
                </label>
            </footer>
        </article>
    </div>

</div>
</body>
</html>