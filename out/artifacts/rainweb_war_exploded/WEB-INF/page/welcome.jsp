<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title></title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi"/>
    <link rel="shortcut icon" href="${ctx}/public/logo.ico" type="image/x-icon"/>
    <link rel="stylesheet" href="${ctx}/public/css/font.css">
    <link rel="stylesheet" href="${ctx}/public/css/xadmin.css">
</head>
<body>
<div class="x-body layui-anim layui-anim-up">
    <blockquote class="layui-elem-quote">欢迎管理员：
        <span class="x-red">${sessionScope.user_session.username }</span></blockquote>
    <fieldset class="layui-elem-field">
        <legend>数据统计</legend>
        <div class="layui-field-box">
            <div class="layui-col-md12">
                <div class="layui-card">
                    <div class="layui-card-body">
                        <div class="layui-carousel x-admin-carousel x-admin-backlog" lay-anim="" lay-indicator="inside"
                             lay-arrow="none" style="width: 100%; height: 90px;">
                            <div carousel-item="">
                                <ul class="layui-row layui-col-space10 layui-this">
                                    <li class="layui-col-xs2">
                                        <a href="javascript:;" class="x-admin-backlog-body">
                                            <h3>文章数</h3>
                                            <p>
                                                <cite>${dataStatistics.articleNumber}</cite></p>
                                        </a>
                                    </li>
                                    <li class="layui-col-xs2">
                                        <a href="javascript:;" class="x-admin-backlog-body">
                                            <h3>会员数</h3>
                                            <p>
                                                <cite>${dataStatistics.membershipNumber}</cite></p>
                                        </a>
                                    </li>
                                    <li class="layui-col-xs2">
                                        <a href="javascript:;" class="x-admin-backlog-body">
                                            <h3>回复数</h3>
                                            <p>
                                                <cite>${dataStatistics.replyNumber}</cite></p>
                                        </a>
                                    </li>
                                    <li class="layui-col-xs2">
                                        <a href="javascript:;" class="x-admin-backlog-body">
                                            <h3>商品数</h3>
                                            <p>
                                                <cite>${dataStatistics.commodityNumber}</cite></p>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </fieldset>
    <fieldset class="layui-elem-field">
        <legend>系统通知</legend>
        <div class="layui-field-box">
            <table class="layui-table" lay-skin="line">
                <tbody>
                <tr>
                    <td>
                        <a class="x-a" href="/" target="_blank">当前为开发测试版</a>
                    </td>
                </tr>
                </tbody>
            </table>
        </div>
    </fieldset>
    <fieldset class="layui-elem-field">
        <legend style="color: red">最新公告</legend>
        <div class="layui-field-box">
            <table class="layui-table" lay-skin="line">
                <tbody>
                <tr>
                    <td>
                        <a class="x-a" href="/" target="_blank">【标题】 ${notice.title}</a>
                    </td>
                    <td>
                        <a class="x-a" href="/" target="_blank">【内容】 ${notice.content}</a>
                    </td>
                    <td>
                        <a class="x-a" href="/" target="_blank">【发布日期】 ${notice.createDate}</a>
                    </td>
                    <td>
                        <a class="x-a" href="/" target="_blank">【发布用户】 ${notice.userName}</a>
                    </td>
                </tr>

                </tbody>
            </table>
        </div>
    </fieldset>
    <fieldset class="layui-elem-field">
        <legend>系统信息</legend>
        <div class="layui-field-box">
            <table class="layui-table">
                <tbody>
                <tr>
                    <th>当前版本</th>
                    <td>1.0</td>
                </tr>
                <tr>
                    <th>服务器地址</th>
                    <td>Localhost</td>
                </tr>
                <tr>
                    <th>操作系统</th>
                    <td>Windows</td>
                </tr>
                <tr>
                    <th>运行环境</th>
                    <td>Apache/2.4.23 (Win32) OpenSSL/1.0.2j mod_fcgid/2.3.9</td>
                </tr>
                <tr>
                    <th>Tomcat版本</th>
                    <td>8.5.31</td>
                </tr>
                <tr>
                    <th>开发工具</th>
                    <td>IntelliJ IDEA</td>
                </tr>
                <tr>
                    <th>MYSQL版本</th>
                    <td>5.5.53</td>
                </tr>
                <tr>
                    <th>ThinkPHP</th>
                    <td>5.0.18</td>
                </tr>
                <tr>
                    <th>上传附件限制</th>
                    <td>2M</td>
                </tr>
                <tr>
                    <th>执行时间限制</th>
                    <td>30s</td>
                </tr>
                <tr>
                    <th>剩余空间</th>
                    <td>86015.2M</td>
                </tr>
                </tbody>
            </table>
        </div>
    </fieldset>
    <fieldset class="layui-elem-field">
        <legend>开发者</legend>
        <div class="layui-field-box">
            <table class="layui-table">
                <tbody>
                <tr>
                    <th>版权所有</th>
                    <td>LZN</td>
                </tr>
                <tr>
                    <th>开发者</th>
                    <td>LZN</td>
                </tr>
                </tbody>
            </table>
        </div>
    </fieldset>
</div>
<script>
    var _hmt = _hmt || [];
    (function () {
        var hm = document.createElement("script");
        hm.src = "https://hm.baidu.com/hm.js?b393d153aeb26b46e9431fabaf0f6190";
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(hm, s);
    })();
</script>
</body>
</html>