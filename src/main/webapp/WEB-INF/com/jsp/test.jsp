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
                <h3>您好,&nbsp;&nbsp;<span>杨珊珊</span>&nbsp;&nbsp;</h3>
                <a href="/eams/security/my.action"><img src="/eams/static/images/wdzh-icon.png" style="margin-bottom: 3px;"> 我的账户</a>
                &nbsp;
                <a><img src="/eams/static/images/fwcs-icon.png"> <span>9</span> 次/访问</a>
            </div>
            <div class="clearfix"></div>
        </div>

        <div class="clear-2"></div>

        <div class="calendar-box" style="min-height: 300px;">
            <div class="title">
                2019-2020 第 2 学期&nbsp;&nbsp;第 <strong>6</strong> 教学周
                <a href="javascript:viewSemesterInfo(34);"><span class="fa fa-calendar" style="padding-top:6px"></span></a>
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

    <div class="col-md-6">
        <div class="list-box-1" style="min-height: 345px;">
            <h4 class="title">
                <span class="fa fa-list"></span> 快捷入口 <a href="javascript:void(0);" onclick="quickConfig()"><span class="fa fa-cog" style="font-size:20px; padding-top:10px;"></span></a>
            </h4>
            <div class="clear-1"></div>
            <div class="content">
                <div class="scroll-list-1">
                    <div id="carousel-example-generic" class="carousel slide" >
                        <div class="carousel-inner" role="listbox">
                            <div class="item active">
                                <div class="inner-list-2">
                                    <a href="javascript:quickConfig();" class="add-a"></a>
                                    <a href="javascript:void(0);"><div style="min-height:75px; vertical-align:middle;">&nbsp;</div></a>
                                    <a href="javascript:void(0);"><div style="min-height:75px; vertical-align:middle;">&nbsp;</div></a>
                                    <a href="javascript:void(0);"><div style="min-height:75px; vertical-align:middle;">&nbsp;</div></a>
                                    <a href="javascript:void(0);"><div style="min-height:75px; vertical-align:middle;">&nbsp;</div></a>
                                    <a href="javascript:void(0);"><div style="min-height:75px; vertical-align:middle;">&nbsp;</div></a>
                                    <a href="javascript:void(0);"><div style="min-height:75px; vertical-align:middle;">&nbsp;</div></a>
                                    <a href="javascript:void(0);"><div style="min-height:75px; vertical-align:middle;">&nbsp;</div></a>
                                    <a href="javascript:void(0);"><div style="min-height:75px; vertical-align:middle;">&nbsp;</div></a>
                                    <a href="javascript:void(0);"><div style="min-height:75px; vertical-align:middle;">&nbsp;</div></a>
                                    <a href="javascript:void(0);"><div style="min-height:75px; vertical-align:middle;">&nbsp;</div></a>
                                    <a href="javascript:void(0);"><div style="min-height:75px; vertical-align:middle;">&nbsp;</div></a>
                                </div>
                            </div>
                            <div class="item"></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>

        <div class="clear-2"></div>

        <div class="list-box-1" style="min-height:345px;">
            <h4 class="title"><span class="fa fa-download"></span> 文件下载 </h4>
            <div class="clear-1"></div>
            <div class="content">
                <div class="scroll-list-1">
                    <div id="carousel-example-generic-download" class="carousel slide" style="min-height:270px;">
                        <div class="carousel-inner" role="listbox">
                            <div class="item active">
                                <ul class="inner-list-1">
                                </ul>
                            </div>
                            <div class="item ">
                                <ul class="inner-list-1">
                                </ul>
                            </div>
                            <div class="item">
                                <ul class="inner-list-1">
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>

    <div class="col-md-3">
        <div class="list-box-1" style="height:345px;">
            <h4 class="title"><span class="fa fa-book"></span> 今日课程 (<span>0</span>)</h4>
            <div class="clearfix"></div>
            <div class="jrkc-box">
                <table>
                    <tbody>
                    </tbody>
                </table>
            </div>
        </div>

        <div class="clear-2"></div>

        <div class="list-box-1" style="min-height:345px;">
            <h4 class="title"><span class="fa fa-user"></span> 通知公告</h4>
            <div class="clear-1"></div>
            <div class="content">
                <div class="scroll-list-1">
                    <div id="carousel-example-generic-3" class="carousel slide">
                        <div class="carousel-inner" role="listbox" style="min-height:270px;">
                            <div class="item active">
                                <ul class="list-ul-2">
                                </ul>
                            </div>
                            <div class="item ">
                                <ul class="list-ul-2">
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>

</div>

<div style="display:none">
    <div id="quickConfigDiv" >
        <form id="indexForm" name="indexForm" action="/eams/saveMenus.action" method="post"  >

            <input type="hidden" name="quickMenu.id" value="" />

        </form>
        <div class="ui-widget ui-widget-content ui-helper-clearfix ui-corner-all">
            <div class="portlet-content  grid">
            </div>
        </div>
        <script>
            var menuMaxCount=9;
            function moveSelectedOptions(srcSelect, destSelect){
                for (var i=0; i<srcSelect.length; i++){
                    if (srcSelect.options[i].selected){
                        var op = srcSelect.options[i];
                        if(checkNum(destSelect)){
                            for (var i=0; i<srcSelect.length; i++){
                                srcSelect.options[i].selected=false;
                            }
                            alert('最多设置{0}个快捷入口'.replace('{0}', menuMaxCount));
                        }else{
                            if (!hasOption(destSelect, op)){
                                destSelect.options[destSelect.length]= new Option(op.text, op.value);
                            }
                            srcSelect.options[i].selected=false;
                        }
                    }
                }
            }
            function removeSelectedOptions(select){
                var options = select.options;
                for (var i=options.length-1; i>=0; i--){
                    if(options[i].selected){
                        options[i].remove();
                    }
                }
            }
            function hasOption(select, op){
                for (var i=0; i<select.length; i++ ){
                    if (select.options[i].value == op.value)
                        return true;
                }
                return false;
            }
            function checkNum(select){
                if(select.length > (menuMaxCount-1)){
                    return true;
                }
                return false;
            }
            function clearSelected(select){
                var options = select.options;
                for (var i=options.length-1; i>=0; i--){
                    options[i].remove();
                }
            }
            function upMoveOption(select) {
                var options = jQuery('#res_selected option:selected');
                if(options == null || options.length != 1) { alert("请选择一项进行上移！"); return;}
                var option = options[0];
                $(option).insertBefore($(option).prev('option'));
            }

            function downMoveOption(select) {
                var options = jQuery('#res_selected option:selected');
                if(options == null || options.length != 1) { alert("请选择一项进行下移！"); return;}
                var option = options[0];
                $(option).insertAfter($(option).next('option'));
            }
            function save(select){
                var menuIds = "";
                for (var i=0; i<select.length; i++ ){
                    menuIds += select.options[i].value+"_"+i+",";
                }
                if(select.length > 1){
                    menuIds = menuIds.substring(0, menuIds.length-1);
                }
                var form = document.indexForm;
                bg.form.addInput(form, "menuIds", menuIds);
                bg.form.addInput(form, "menuProfileId", 3);
                bg.form.submit(form, "/eams/homeExt!saveMenus.action");
            }
        </script>	</div>
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
</body>
</html>
