<%@ page language="java" contentType="text/html; charset=UTF-8" deferredSyntaxAllowedAsLiteral="true"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>用户信息</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi"/>
    <link rel="shortcut icon" href="${ctx}/public/logo.ico" type="image/x-icon"/>
    <link rel="stylesheet" href="${ctx}/public/css/font.css">
    <link rel="stylesheet" href="${ctx}/public/css/xadmin.css">
    <script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script type="text/javascript" src="${ctx}/public/lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="${ctx}/public/js/xadmin.js"></script>
    <!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
    <!--[if lt IE 9]>
    <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
    <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>
<div class="x-nav">
      <span class="layui-breadcrumb">
        <a href="">首页</a>
        <a>
          <cite>数据统计</cite></a>
      </span>
</div>
<div class="x-body">
    <div class="layui-row" style="" align="center">
        <h2 class="x-a">下方我的桌面中展示的数据维护</h2>
    </div>
    <table class="layui-table">
        <thead>
        <tr>
            <th>序号</th>
            <th>文章数</th>
            <th>会员数</th>
            <th>回复数</th>
            <th>商品数</th>
            <th>操作</th>
        </thead>
        <tbody>
        <c:forEach items="${dataStatistics}" var="dataItem" varStatus="stat">
            <tr>
                <td>${stat.index+1}</td>
                <td>${dataItem.articleNumber}</td>
                <td>${dataItem.membershipNumber}</td>
                <td>${dataItem.replyNumber }</td>
                <td>${dataItem.commodityNumber}</td>
                <td class="td-manage">
                    <!--  <a onclick="member_stop(this,'10001')" href="javascript:;"  title="启用">
                       <i class="layui-icon">&#xe601;</i>
                     </a> -->
                    <a title="编辑" onclick="edit()">
                        <i class="layui-icon">&#xe642;</i>
                    </a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
<!--编辑按钮点击弹出层-->
<div id="editArea" style="display: none">
    <form class="layui-form">
        <div class="layui-form-item">
            <div class="layui-inline">
                <label class="layui-form-label">文章数</label>
                <div class="layui-input-inline">
                    <input type="text" name="articleNumber"autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-inline">
                <label class="layui-form-label">会员数</label>
                <div class="layui-input-inline">
                    <input type="text" name="membershipNumber"autocomplete="off" class="layui-input">
                </div>
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-inline">
                <label class="layui-form-label">回复数</label>
                <div class="layui-input-inline">
                    <input type="text" name="replyNumber"autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-inline">
                <label class="layui-form-label">商品数</label>
                <div class="layui-input-inline">
                    <input type="text" name="commodityNumber" autocomplete="off" class="layui-input">
                </div>
            </div>
        </div>
    </form>
</div>
<!--完 -->
</body>
</html>
<script>
    layui.use('laydate', function () {
        var laydate = layui.laydate;
        //执行一个laydate实例
        laydate.render({
            elem: '#start' //指定元素
        });

        //执行一个laydate实例
        laydate.render({
            elem: '#end' //指定元素
        });
    });
    function edit() {
        $.post('${ctx}/findById')
        layer.open({
            type: 1,
            title: "编辑数据统计",
            content: $('#editArea'),
            area:['40%','40%'],
            btn:['确认','取消']

        })
    }


</script>