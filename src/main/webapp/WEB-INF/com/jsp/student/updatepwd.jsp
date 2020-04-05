<%--
  Created by IntelliJ IDEA.
  User: 杨珊珊
  Date: 2020/4/4
  Time: 14:41
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
<jsp:include page="stuhead.jsp"></jsp:include>

<form id="form5155711781" class="listform" name="form5155711781" action="updatepwd" method="post"
      onsubmit="return onsubmitform5155711781()">

    <fieldset>
        <legend>我的账户</legend>
        <ol><li><label for="password5155711781" class="title"><em class="required">*</em>
            旧密码:</label><input type="password" id="password5155711781" title="旧密码" name="oldPassword"  maxlength="40"  style="width:100px" /> </li>
            <li><label for="password5155711782" class="title"><em class="required">*</em>
                新密码:</label><input type="password" id="password5155711782" title="新密码" name="password"  maxlength="40"  style="width:100px" /> </li>
            <li><label for="password5155711783" class="title"><em class="required">*</em>
                确认密码:</label><input type="password" id="password5155711783" title="确认密码" name="repeatedPassword"  maxlength="40"  style="width:100px" /> </li>

            <li class="foot">    <input type="hidden" name="user.id" value="33917"/>
                <input type="reset" value="重置"/>&nbsp;&nbsp;<input type="submit"  value="提交" onclick="bg.form.submit('form5155711781',null,null,checkLogin);return false;"/>

            </li>
        </ol>
    </fieldset>
</form>

</body>
</html>
