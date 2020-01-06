<%@ page language="java" contentType="text/html; charset=UTF-8" deferredSyntaxAllowedAsLiteral="true"
         pageEncoding="UTF-8" %>
<%@include file="../taglib.jsp" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>用户信息</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi"/>
    <%--引用Echarts--%>
    <script type="text/javascript" src="${ctx}/public/lib/echarts/echarts.min-1.js"></script>

</head>
<body>

<div class="x-body layui-anim layui-anim-up">
    <blockquote class="layui-elem-quote">当前页面为：
        <span class="x-red">数据比较</span></blockquote>
</div>
<div class="x-body">
    <div id="main" style="width: 80%;height: 80%">

    </div>
</div>
</body>
</html>
<script type="text/javascript">
    var myChart = echarts.init(document.getElementById('main'));

    option = {
        title: {
            text: '数据统计',
            subtext: '数据来自数据库'
        },
        tooltip: {
            trigger: 'axis',
            axisPointer: {
                type: 'shadow'
            }
        },
        legend: {
            // data: ['文章数', '2012年']
            data: ['总数量']
        },
        grid: {
            left: '3%',
            right: '4%',
            bottom: '3%',
            containLabel: true
        },
        xAxis: {
            type: 'value',
            boundaryGap: [0, 0.01]
        },
        yAxis: {
            type: 'category',
            data: ['文章数', '会员数', '回复数', '商品数']
        },
        series: [
            {
                name: '总数量',
                type: 'bar',
                data:getData()
            }
        ]
    };

    myChart.setOption(option);
    function getData() {
        var thisdata = [66,12,99,67]
        return thisdata;
    }
</script>
