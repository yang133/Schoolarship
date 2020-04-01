<%--
  Created by IntelliJ IDEA.
  User: 杨珊珊
  Date: 2020/3/31
  Time: 19:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>天津农学院奖学金评定系统</title>
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
    <script type="text/javascript" src="/eams/static/scripts/jquery/jquery,jquery.ui.core.js?bg=3.4.3"></script>
    <script type="text/javascript" src="/eams/static/scripts/plugins/jquery-form,jquery-history,jquery-colorbox,jquery-chosen.js?bg=3.4.3"></script>
    <script type="text/javascript" src="/eams/static/js/plugins/jquery.subscribe,/js/struts2/jquery.struts2,jquery.ui.struts2.js?bg=3.4.3"></script>
    <script type="text/javascript" src="/eams/static/scripts/beangle/beangle,beangle-ui.js?bg=3.4.3"></script>
    <script type="text/javascript">var App = {contextPath:"/eams"};var funcInit = function () {jQuery.struts2_jquery.version="3.6.1";beangle.contextPath=App.contextPath;jQuery.scriptPath = App.contextPath+"/static/";jQuery.struts2_jquerySuffix = "";jQuery.ajaxSettings.traditional = true;jQuery.ajaxSetup ({cache: false});};</script>
    <script type="text/javascript" src="/eams/static/scripts/my97/WdatePicker-4.72.js?compress=no"></script>
    <link id="jquery_theme_link" rel="stylesheet" href="/eams/static/themes/smoothness/jquery-ui.css?s2j=3.6.1" type="text/css"/>
    <link id="beangle_theme_link" href="/eams/static/themes/default/beangle-ui,colorbox,chosen.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="/eams/static/css/foundation.css" type="text/css"/>
    <script type="text/javascript" src="/eams/static/scripts/highcharts.js"></script>

    <script src="/eams/static/scripts/require.config.js?v=3"></script>
    <script>
        require.baseUrl="/eams/static/scripts";
    </script>
    <script src="/eams/static/scripts/require.js"></script>
    <script type="text/javascript" src="/eams/static/scripts/require.js"></script>

    <!-- backbone & underscore -- fontend MVC framework -->
    <script type="text/javascript" src="/eams/static/scripts/underscore.min.js"></script>
    <script type="text/javascript" src="/eams/static/scripts/backbone.min.js"></script>
    <script type="text/javascript" src="/eams/static/scripts/underscore.string.min.js"></script>
    <script>
        require(['underscore.string'], function(_s) {
            _.str = _s;
            _.mixin(_.str.exports());
        });
        funcInit();
        //beangle.ajaxhistory = false;
    </script>

    <!--第三方插件css-->
    <link href="/eams/static/deps/bootstrap-3.3.5-dist/css/bootstrap.css" rel="stylesheet"  type="text/css">
    <link href="/eams/static/deps/font-awesome-4.4.0/css/font-awesome.min.css" rel="stylesheet"  type="text/css">
    <link href="/eams/static/deps/bootsnav/bootsnav.css" rel="stylesheet"  type="text/css">
    <link href="/eams/static/images/css.css?_v=1001" rel="stylesheet" type="text/css">

    <script src="/eams/static/scripts/danymicfix.js"></script>
    <script>
        if (window != top) {setTimeout("top.location.href = location.href", 500);}
        var timer;
        function resizeIframe() {
            if(timer) {
                clearInterval(timer);
            }
            timer = setInterval(danymicfix, 500);
        }

        function openUrl(link, trace) {
            var traces = (trace||[]);

            if(traces.length == 0) {
                $(link).parents('li').children('a').each(function() {
                    traces.splice(0, 0, $(this).text());
                });
            } else {
                traces = traces.split('|');
            }

            var location = '<span class="fa fa-map-marker"></span>&nbsp;您当前位置：';

            for(var i=0; i<traces.length-1; ++i) {
                location += traces[i] + ' &gt ';
            }

            $('#current-bar').html(location + '<span>' + traces[traces.length-1] + '</span>');
            return bg.Go(link, 'iframeMain');
        }
    </script>

</head>
<body>


<div id="main-top">
    <div class="grid">
        <a href="/eams/homeExt!main.action" target="iframeMain" onclick="return openUrl(this, '首页')" class='logo'>
            <img src="/eams/static/images/logo.png" />&nbsp;&nbsp; <img src="/eams/static/images/logo-line.png" />&nbsp;&nbsp; 奖学金评定系统
        </a>

        <div class="right-menu">
            <a href="/eams/logoutExt.action" class="login-out"><span class="fa fa-power-off"></span> </a>
            <div class="personal-list">
                <div class="pic">
                    <div class="mask"></div>
                    <img src="/eams/showSelfAvatar.action?user.name=1608054428" onerror="this.src='/eams/static/images/head-default.png'; this.onerror=null" />
                </div>
                <a href="/eams/security/my.action" target="iframeMain" onclick="return openUrl(this, '我的账户')" class="personal-name">${sessionScope.user.realname}(${sessionScope.user.no}) </a>
            </div>
            <table>
                <tbody>
                <tr>
                    <form id="form4460356481" name="form4460356481" action="/eams/homeExt.action" method="post"  >

                        <td><span style="padding:0 2px;color:#FFF;font-weight:bold;">${sessionScope.user.rolename}</span></td>
                        <td><input type="hidden" name="security.userCategoryId" value="1" style="width:70px"/></td>

                    </form>
                </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>

<div id="main-nav">
    <div class="top-menu-search">
        <div class="search-box">
            <input type="text"/>
            <button type="button" /><span class="fa fa-search"></span></button>
            <div class="down-box" style="display:none">
                <ul>
                    <li style="display:none"><a href="/eams/thesis/topic/topic-for-std.action" target="iframeMain" onclick="return openUrl(this)" oriName="毕设自主选题">我的账户</a></li>
                    <li style="display:none"><a href="/eams/stdDetail.action" target="iframeMain" onclick="return openUrl(this)" oriName="学籍信息">我的信息</a></li>
                    <li style="display:none"><a href="/eams/thesis/result/student.action" target="iframeMain" onclick="return openUrl(this)" oriName="毕业论文">申请奖学金</a></li>
                    <li style="display:none"><a href="/eams/stdTextbookOrderLine.action" target="iframeMain" onclick="return openUrl(this)" oriName="教材选定">教材选定</a></li>
                    <li style="display:none"><a href="/eams/courseTableForStd.action" target="iframeMain" onclick="return openUrl(this)" oriName="我的课表">我的课表</a></li>
                    <li style="display:none"><a href="/eams/stdElectCourse.action" target="iframeMain" onclick="return openUrl(this)" oriName="选课">选课</a></li>
                    <li style="display:none"><a href="/eams/stdExamTable.action" target="iframeMain" onclick="return openUrl(this)" oriName="我的考试">我的考试</a></li>
                    <li style="display:none"><a href="/eams/teach/grade/course/person.action" target="iframeMain" onclick="return openUrl(this)" oriName="我的成绩">我的成绩</a></li>
                    <li style="display:none"><a href="/eams/quality/stdEvaluate.action" target="iframeMain" onclick="return openUrl(this)" oriName="量化评教">量化评教</a></li>
                </ul>
                <ul>
                    <li style="display:none"><a href="javascript:void(0);" >没有搜索结果</a></li>
                </ul>

            </div>
        </div>
    </div>
    <ul class="top-nav">
        <li><a href="/eams/homeExt!main.action" target="iframeMain" onclick="return openUrl(this)" style="outline:none">首页</a></li>

        <li>
            <a href="#">信息管理</a>
            <ul class="second-ul second-ul-right">
                <li><a href="/eams/thesis/topic/topic-for-std.action" target="iframeMain" onclick="return openUrl(this)">学生信息管理</a></li>

                <li><a href="/eams/stdDetail.action" target="iframeMain" onclick="return openUrl(this)">审核学生加分申请</a></li>

                <li><a href="/eams/thesis/result/student.action" target="iframeMain" onclick="return openUrl(this)">修改个人密码</a></li>

                <li><a href="/eams/stdTextbookOrderLine.action" target="iframeMain" onclick="return openUrl(this)">查看公告</a></li>

                <li><a href="/eams/courseTableForStd.action" target="iframeMain" onclick="return openUrl(this)">我的课表</a></li>

                <li><a href="/eams/stdElectCourse.action" target="iframeMain" onclick="return openUrl(this)">选课</a></li>

                <li><a href="/eams/stdExamTable.action" target="iframeMain" onclick="return openUrl(this)">我的考试</a></li>

                <li><a href="/eams/teach/grade/course/person.action" target="iframeMain" onclick="return openUrl(this)">我的成绩</a></li>

            </ul>
        </li>
        <li>
            <a href="#">奖学金管理</a>
            <ul class="second-ul second-ul-right">
                <li><a href="/eams/quality/stdEvaluate.action" target="iframeMain" onclick="return openUrl(this)">综合成绩奖学金</a></li>
                <li><a href="/eams/stdExamTable.action" target="iframeMain" onclick="return openUrl(this)">待申请奖学金</a></li>
                <li><a href="/eams/stdExamTable.action" target="iframeMain" onclick="return openUrl(this)">奖学金申请结果</a></li>
            </ul>
        </li>
    </ul>
</div>



</body>
</html>
