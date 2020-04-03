<%--
  Created by IntelliJ IDEA.
  User: 杨珊珊
  Date: 2020/4/2
  Time: 11:08
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
    <link href="/eams/static/deps/bootstrap-3.3.5-dist/css/bootstrap.css" rel="stylesheet" type="text/css">
    <link href="/eams/static/deps/font-awesome-4.4.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="/eams/static/deps/bootsnav/bootsnav.css" rel="stylesheet" type="text/css">
    <link href="/eams/static/images/admincss.css?_v=1001" rel="stylesheet" type="text/css">
    <link href="/eams/static/deps/bootstrap-3.3.5-dist/css/bootstrap.min.css" type="text/css">

    <script src="/eams/static/deps/bootstrap-3.3.5-dist/js/bootstrap.min.js"></script>
    <script>
        var t = null;
        t = setTimeout(time,1000);
        function time(){
            clearTimeout(t);
            dt = new Date();
            var y=dt.getFullYear();
            var M=dt.getMonth()+1;
            var d=dt.getDate();
            var h=dt.getHours();
            var m=dt.getMinutes();
            var s=dt.getSeconds();
            if(M<10)M = "0"+M;
            if(d<10)d = "0"+d;
            if(h<10)h = "0"+h;
            if(m<10)m = "0"+m;
            if(s<10)s = "0"+s;
            $('#curTime').text(y+"-"+M+"-"+d+" "+h+":"+m+":"+s);
            t = setTimeout(time,1000);
        }

        function getNoticeInfo(id){
            window.open("noticeSearch!info.action?notice.id="+id, '', 'scrollbars=yes,left=0,top=0,width=600,height=350,status=yes');
        }

        function quickConfig(){
            bg.Go("/eams/homeExt!quickConfig.action?menuProfileId=3", "quickConfigDiv");
            jQuery.colorbox({
                transition : 'none',
                title : "快捷入口配置",
                speed:1000,
                width:"800px",
                height: "400px",
                inline:true,
                href:"#quickConfigDiv"
            });
        }

        function openQuickMenu(link){
            var locateStr = $(link).prev().val();
            var location = '<span class="fa fa-map-marker"></span> 您当前位置：';
            window.parent.$('#current-bar').html(location + '<span>' + locateStr + '</span>');
        }

        function openUrlWithName(link, title){
            var location = '<span class="fa fa-map-marker"></span> 您当前位置：';
            window.parent.$('#current-bar').html(location + '<span>' + title + '</span>');
        }
    </script>

</head>
<body>
<div class="row">
    <div class="col-md-3">
        <div id="personal-info" style="min-height: 120px;">
            <div class="pic">
                <div class="mask"></div>
                <img src="/eams/showSelfAvatar.action?user.name=1608054428" onerror="this.src='/eams/static/images/head-default.png'; this.onerror=null">
            </div>
            <div class="text">
                <h3>您好,&nbsp;&nbsp;<span>${sessionScope.user.realname}</span>&nbsp;&nbsp;</h3>
                <a href="/eams/security/my.action"><img src="/eams/static/images/wdzh-icon.png" style="margin-bottom: 3px;"> 我的账户</a>
                &nbsp;

            </div>
            <div class="clearfix"></div>
        </div>

        <div class="clear-2"></div>

        <div class="calendar-box" style="min-height: 300px;">
            <div class="title">
                2019-2020 第 2 学期&nbsp;&nbsp;第 <strong>6</strong> 教学周

            </div>

            <div class="title-2">
                <a href="javascript:void(0);" class="pre-btn"></a>
                <span>2020 年 04 月 </span>
                <a href="javascript:void(0);" class="next-btn"></a>
            </div>

            <div class="content">
                <table>
                    <thead>
                    <tr>
                        <th>周日</th>
                        <th>周一</th>
                        <th>周二</th>
                        <th>周三</th>
                        <th>周四</th>
                        <th>周五</th>
                        <th>周六</th>
                    </tr>
                    </thead>
                    <tbody>
                    </tbody>
                </table>
            </div>
        </div>

        <div class="clear-2"></div>

        <div class="list-box-1" style="min-height: 250px;">
            <h4 class="title"><span class="fa fa-file-text"></span> 登录信息</h4>
            <div class="clear-1"></div>
            <div class="content">
                <div class="zjdl">
                    <h5>最近登录</h5>
                    <table>
                        <tr>
                            <td width="40%">时间:</td>
                            <td class="c_939aaa"><span id="curTime"></span></td>
                        </tr>
                        <tr>
                            <td>IP:</td>
                            <td class="c_939aaa">211.68.250.78</td>
                        </tr>
                        <tr>
                            <td>登录设备:</td>
                            <td class="c_939aaa">Chrome-57.0.2987.98</td>
                        </tr>
                    </table>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>







</div>

</div>


<script type = "text/javascript" >
    var bg_lang= "zh";
    function viewSemesterInfo(semesterId) {
        var data = {version:1};
        data.semesterId = semesterId;
        jQuery.colorbox({
            href:"/eams/base/calendar-info.action",
            speed : 0,
            data: data,
            width:"90%",
            height:"85%",
            overlayClose:false
        });
    }
</script>
<script src="/eams/static/scripts/home-calendbar-box.js?v=1001"></script>

<script type="text/javascript">
    $(function() {
        if(bg.Go != undefined) {
            var originalGo = bg.Go;
            bg.Go = function (obj, target, historyMode, historyData) {
                if(target == "main") {
                    target = "_self";
                }

                return originalGo(obj, target, historyMode, historyData);
            }
        }

        $(".toolbar").each(function() {
            if($(this).prev().length==0 && $(this).find(".toolbar-item").length==0) {
                $(this).css("display", "none");
            }
        });
        $(".search-widget").css("margin-left", "auto");
    });
</script>
<jsp:include page="../notice.jsp"></jsp:include>
</body>
</html>
