<%--
  Created by IntelliJ IDEA.
  User: 杨珊珊
  Date: 2020/4/1
  Time: 23:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>天津农学院教学管理系统</title>
    <meta http-equiv="content-type" content="text/html;charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta http-equiv="pragma" content="no-cache" />
    <meta http-equiv="cache-control" content="no-cache" />
    <meta http-equiv="expires" content="0" />
    <meta http-equiv="content-style-type" content="text/css" />
    <meta http-equiv="content-script-type" content="text/javascript" />
    <script type="text/javascript">
        window.$BG_LANG='zh';
    </script>
    <script type="text/javascript" src="/eams/static/scripts/jquery/jquery,/scripts/beangle/beangle.js"></script>
    <link id="beangle_theme_link" rel="stylesheet" href="/eams/static/themes/default/beangle-ui.css" type="text/css"/>

    <link href="/eams/static/deps/bootstrap-3.3.5-dist/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="/eams/static/deps/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="/eams/static/deps/bootstrap-datetimepicker/css/bootstrap-datetimepicker.min.css" rel="stylesheet" type="text/css" />
    <link href="/eams/static/images/education.css" rel="stylesheet" type="text/css" />

    <script type="text/javascript" src="/eams/static/scripts/css_browser_selector.js"></script>
    <script type="text/javascript" src="/eams/static/scripts/sha1.js"></script>

</head>
<body>
<jsp:include page="../teacher/teacherhead.jsp"></jsp:include>
<div id="main-content">
    <div class="grid-2">
        <div id="current-bar"><span class="fa fa-map-marker"></span>&nbsp;您当前位置：我的 &gt; <span>学籍信息</span></div>
        <iframe id="iframeMain" name="iframeMain" scrolling="no" frameborder="0" style="overflow: auto; margin: auto; width: 1213px; height: 500px;" onload="resizeIframe();" src="/eams/stdDetail.action">
        </iframe>
    </div>
</div>

</body>
</html>
