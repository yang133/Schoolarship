<%--
  Created by IntelliJ IDEA.
  User: 杨珊珊
  Date: 2020/4/2
  Time: 22:05
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
                <h3>您好,&nbsp;&nbsp;<span>${sessionScope.user.realname}</span>&nbsp;&nbsp;</h3>
                <a href="/eams/security/my.action"><img src="/eams/static/images/wdzh-icon.png" style="margin-bottom: 3px;"> 我的账户</a>
                &nbsp;
                <a><img src="/eams/static/images/fwcs-icon.png"> <span>12</span> 次/访问</a>
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
                            <td class="c_939aaa">Chrome-75.0.3770.100</td>
                        </tr>
                    </table>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>

    <div class="col-md-6">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tbody>
            <tr>
                <td align="center" valign="top">
                    <table width="1147" border="0" cellspacing="0" cellpadding="0">
                        <tbody>
                        <tr>
                            <td width="468" align="left" valign="top">
                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tbody>
                                    <tr>
                                        <td height="67" valign="top" colspan="3"><a href="tnxw/yxdt.htm"><img width="468" height="42" src="/gong/images/index_27.jpg"></a></td></tr>
                                    <tr>
                                        <td></td></tr>
                                    <tr>
                                        <td><!--#begineditable viewid="53328" name="院系动态"--><table width="100%" cellspacing="3" cellpadding="0">

                                            <tbody><tr><td align="center" valign="middle" width="10" nowrap=""><span class="leaderfont53328"><img src="/gong/images/sanjiao.jpg" align="absmiddle" border="0"></span></td>
                                                <td valign="middle" align="left">


                                                    <a href="info/1038/8053.htm" class="c53328" title="种艺相伴，共抗疫情——农学与资源环境学院开展种艺画活动" target="_blank">
                                                        种艺相伴，共抗疫情——农学与资源环境学院开展种...
                                                    </a>



                                                </td>

                                                <td valign="middle" align="right" class="timestyle53328" width="1%" nowrap="">2020-03-30</td></tr><tr><td colspan="4" height="3" style="background-image:url(/gong/images/line.jpg)"></td></tr>
                                            <tr><td align="center" valign="middle" width="10" nowrap=""><span class="leaderfont53328"><img src="/gong/images/sanjiao.jpg" align="absmiddle" border="0"></span></td>
                                                <td valign="middle" align="left">


                                                    <a href="info/1038/8045.htm" class="c53328" title="水利工程学院开展“世界水日”、“中国水周”线上系列宣传活动" target="_blank">
                                                        水利工程学院开展“世界水日”、“中国水周”线上...
                                                    </a>



                                                </td>

                                                <td valign="middle" align="right" class="timestyle53328" width="1%" nowrap="">2020-03-27</td></tr><tr><td colspan="4" height="3" style="background-image:url(/gong/images/line.jpg)"></td></tr>
                                            <tr><td align="center" valign="middle" width="10" nowrap=""><span class="leaderfont53328"><img src="/gong/images/sanjiao.jpg" align="absmiddle" border="0"></span></td>
                                                <td valign="middle" align="left">


                                                    <a href="info/1038/8032.htm" class="c53328" title="农学与资源环境学院教师“不误农时助春耕”" target="_blank">
                                                        农学与资源环境学院教师“不误农时助春耕”
                                                    </a>



                                                </td>

                                                <td valign="middle" align="right" class="timestyle53328" width="1%" nowrap="">2020-03-27</td></tr><tr><td colspan="4" height="3" style="background-image:url(/gong/images/line.jpg)"></td></tr>
                                            <tr><td align="center" valign="middle" width="10" nowrap=""><span class="leaderfont53328"><img src="/gong/images/sanjiao.jpg" align="absmiddle" border="0"></span></td>
                                                <td valign="middle" align="left">


                                                    <a href="info/1038/7976.htm" class="c53328" title="水产学院积极行动 为毕业生就业保驾护航" target="_blank">
                                                        水产学院积极行动 为毕业生就业保驾护航
                                                    </a>



                                                </td>

                                                <td valign="middle" align="right" class="timestyle53328" width="1%" nowrap="">2020-03-18</td></tr><tr><td colspan="4" height="3" style="background-image:url(/gong/images/line.jpg)"></td></tr>
                                            <tr><td align="center" valign="middle" width="10" nowrap=""><span class="leaderfont53328"><img src="/gong/images/sanjiao.jpg" align="absmiddle" border="0"></span></td>
                                                <td valign="middle" align="left">


                                                    <a href="info/1038/7964.htm" class="c53328" title="不一样的课堂，同样的倾注——基础科学学院有机化学教学团队在线教学工作纪实" target="_blank">
                                                        不一样的课堂，同样的倾注——基础科学学院有机化...
                                                    </a>



                                                </td>

                                                <td valign="middle" align="right" class="timestyle53328" width="1%" nowrap="">2020-03-17</td></tr><tr><td colspan="4" height="3" style="background-image:url(/gong/images/line.jpg)"></td></tr>
                                            <tr><td align="center" valign="middle" width="10" nowrap=""><span class="leaderfont53328"><img src="/gong/images/sanjiao.jpg" align="absmiddle" border="0"></span></td>
                                                <td valign="middle" align="left">


                                                    <a href="info/1038/7962.htm" class="c53328" title="农学与资源环境学院学生助扶贫、保春耕、阻疫情" target="_blank">
                                                        农学与资源环境学院学生助扶贫、保春耕、阻疫情
                                                    </a>



                                                </td>

                                                <td valign="middle" align="right" class="timestyle53328" width="1%" nowrap="">2020-03-17</td></tr><tr><td colspan="4" height="3" style="background-image:url(/gong/images/line.jpg)"></td></tr>
                                            </tbody></table><!--#endeditable--></td></tr>
                                    <tr>
                                        <td height="34">&nbsp;</td></tr></tbody></table></td>
                            <td width="20">&nbsp;</td>
                            <td width="160" valign="top">
                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tbody>
                                    <tr>
                                        <td height="67" valign="top"><img width="160" height="42" src="/gong/images/index_29.jpg"></td></tr>
                                    <tr>
                                        <td align="center" valign="top"><!--#begineditable viewid="130399" name="上滚图片"-->



                                            <script language="javascript">
                                                //-->
                                            </script>
                                            <script language="javascript" src="/gong/system/resource/js/vsbpreloadimg.js"></script>
                                            <center>
                                                <table height="215" cellspacing="0" align="center" border="0">
                                                    <tbody><tr>
                                                        <td>
                                                            <div id="u_u9_demo" style="OVERFLOW:hidden;HEIGHT:215px;COLOR:#ffffff">
                                                                <table align="left" border="0">
                                                                    <tbody><tr>
                                                                        <td id="u_u9_demo1" valign="top">
                                                                            <table border="0" cellspacing="0" cellpadding="2"><tbody><tr>
                                                                                <td align="center">
                                                                                    <table cellpadding="0" cellspacing="0" border="0" style="WORD-WRAP: break-word">
                                                                                        <tbody><tr>
                                                                                            <td width="160" height="108" valign="middle" align="center" style="border:1px solid #000000"><a href="tnxw/tnxs.htm" target="_blank" onclick="_addDynClicks('wbimage',1262676646,13398)"><img name="u_u9_img" border="0" src="https://www.tjau.edu.cn/images/tjxs.jpg" alt="" title="" width="160" height="108"></a></td>
                                                                                        </tr>
                                                                                        </tbody></table></td>
                                                                            </tr><tr>
                                                                                <td align="center">
                                                                                    <table cellpadding="0" cellspacing="0" border="0" style="WORD-WRAP: break-word">
                                                                                        <tbody><tr>
                                                                                            <td width="160" height="108" valign="middle" align="center" style="border:1px solid #000000"><a href="/gong/tnxw/kjbf.htm" target="_blank" onclick="_addDynClicks('wbimage',1262676646,13399)"><img name="u_u9_img" border="0" src="https://www.tjau.edu.cn/image/xczx1.jpg" alt="" title="" width="160" height="108"></a></td>
                                                                                        </tr>
                                                                                        </tbody></table></td>
                                                                            </tr></tbody></table>
                                                                        </td>
                                                                    </tr><tr>
                                                                        <td id="u_u9_demo2" valign="top">
                                                                            <table border="0" cellspacing="0" cellpadding="2"><tbody><tr>
                                                                                <td align="center">
                                                                                    <table cellpadding="0" cellspacing="0" border="0" style="WORD-WRAP: break-word">
                                                                                        <tbody><tr>
                                                                                            <td width="160" height="108" valign="middle" align="center" style="border:1px solid #000000"><a href="/gong/tnxw/tnxs.htm" target="_blank" onclick="_addDynClicks('wbimage',1262676646,13398)"><img name="u_u9_img" border="0" src="https://www.tjau.edu.cn/images/tjxs.jpg" alt="" title="" width="160" height="108"></a></td>
                                                                                        </tr>
                                                                                        </tbody></table></td>
                                                                            </tr><tr>
                                                                                <td align="center">
                                                                                    <table cellpadding="0" cellspacing="0" border="0" style="WORD-WRAP: break-word">
                                                                                        <tbody><tr>
                                                                                            <td width="160" height="108" valign="middle" align="center" style="border:1px solid #000000"><a href="/gong/tnxw/kjbf.htm" target="_blank" onclick="_addDynClicks('wbimage',1262676646,13399)"><img name="u_u9_img" border="0" src="https://www.tjau.edu.cn/image/xczx1.jpg" alt="" title="" width="160" height="108"></a></td>
                                                                                        </tr>
                                                                                        </tbody></table></td>
                                                                            </tr></tbody></table>
                                                                        </td>
                                                                    </tr>
                                                                    </tbody></table>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    </tbody></table>
                                                <script language="javascript">
                                                    var u_u9_imgs = new VsbPreloadImgArray();
                                                    function u_u9_init_img()
                                                    {

                                                        u_u9_imgs.addImg("\/images\/tjxs.jpg", "0", u_u9_onimgload);

                                                        u_u9_imgs.addImg("\/image\/xczx1.jpg", "1", u_u9_onimgload);

                                                    }
                                                    function u_u9_onimgload(img, imgid)
                                                    {
                                                        var imgobjs = document.getElementsByName("u_u9_img");
                                                        var imgindex = new Number(imgid);
                                                        img.showImg(imgobjs[imgindex], 160, 108, true, true);
                                                        img.showImg(imgobjs[imgindex+ 2], 160, 108, true, true);
                                                    }
                                                    var u_u9_MyMar;
                                                    var u_u9_speed3;
                                                    function u_u9_Marquee()
                                                    {
                                                        try
                                                        {
                                                            if(document.getElementById("u_u9_demo2").offsetHeight-document.getElementById("u_u9_demo").scrollTop<=0)
                                                            {
                                                                document.getElementById("u_u9_demo").scrollTop-=document.getElementById("u_u9_demo1").offsetHeight
                                                            }
                                                            else
                                                            {
                                                                document.getElementById("u_u9_demo").scrollTop++;
                                                            }
                                                        }
                                                        catch(e)
                                                        {
                                                        }
                                                    }
                                                    function u_u9_clearInterval()
                                                    {
                                                        clearInterval(u_u9_MyMar);
                                                    }
                                                    function u_u9_setInterval()
                                                    {
                                                        u_u9_MyMar = setInterval(u_u9_Marquee,u_u9_speed3);
                                                    }
                                                    function u_u9_init()
                                                    {
                                                        u_u9_speed3 = 20;
                                                        if(u_u9_speed3 < 1)
                                                        {
                                                            u_u9_speed3 = 1;
                                                        }

                                                        document.getElementById("u_u9_demo").onmouseover = u_u9_clearInterval;
                                                        document.getElementById("u_u9_demo").onmouseout = u_u9_setInterval;
                                                        document.getElementById("u_u9_demo2").innerHTML = document.getElementById("u_u9_demo1").innerHTML;

                                                        u_u9_init_img();
                                                        u_u9_setInterval();
                                                    }
                                                    u_u9_init();
                                                </script>
                                            </center><!--#endeditable--></td></tr>
                                    <tr>
                                        <td>&nbsp;</td></tr></tbody></table></td>
                            <td width="20">&nbsp;</td>
                            <td width="479" valign="top">
                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tbody>
                                    <tr>
                                        <td height="67" align="left" valign="top" colspan="3"><a href="/gong/tnxw/tzgg.htm"><img width="479" height="42" src="/gong/images/index_31.png"></a></td></tr>
                                    <tr>
                                        <td><!--#begineditable viewid="53327" name="媒体聚焦"--><table width="100%" cellspacing="3" cellpadding="0">

                                            <tbody><tr><td align="center" valign="middle" width="10" nowrap=""><span class="leaderfont53327"><img src="/gong/images/sanjiao.jpg" align="absmiddle" border="0"></span></td>
                                                <td valign="middle" align="left">


                                                    <a href="/gong/info/1035/7966.htm" class="c53327" title="我校教务处编制发布《本科教学工作简报》" target="_blank">
                                                        我校教务处编制发布《本科教学工作简报》
                                                    </a>



                                                </td>

                                                <td valign="middle" align="right" class="timestyle53327" width="1%" nowrap="">2020-03-18</td></tr><tr><td colspan="4" height="3" style="background-image:url(/gong/images/line.jpg)"></td></tr>
                                            <tr><td align="center" valign="middle" width="10" nowrap=""><span class="leaderfont53327"><img src="/gong/images/sanjiao.jpg" align="absmiddle" border="0"></span></td>
                                                <td valign="middle" align="left">


                                                    <a href="/gong/info/1035/7843.htm" class="c53327" title="“津门战疫”和“健康码” 出门到底扫哪个？权威解答来了……" target="_blank">
                                                        “津门战疫”和“健康码” 出门到底扫哪个？权威解答...
                                                    </a>



                                                </td>

                                                <td valign="middle" align="right" class="timestyle53327" width="1%" nowrap="">2020-03-06</td></tr><tr><td colspan="4" height="3" style="background-image:url(/gong/images/line.jpg)"></td></tr>
                                            <tr><td align="center" valign="middle" width="10" nowrap=""><span class="leaderfont53327"><img src="/gong/images/sanjiao.jpg" align="absmiddle" border="0"></span></td>
                                                <td valign="middle" align="left">


                                                    <a href="info/1035/7840.htm" class="c53327" title="关于实施天津疫情防控和复工复产“健康码”的通告" target="_blank">
                                                        关于实施天津疫情防控和复工复产“健康码”的通告
                                                    </a>



                                                </td>

                                                <td valign="middle" align="right" class="timestyle53327" width="1%" nowrap="">2020-03-06</td></tr><tr><td colspan="4" height="3" style="background-image:url(/gong/images/line.jpg)"></td></tr>
                                            <tr><td align="center" valign="middle" width="10" nowrap=""><span class="leaderfont53327"><img src="/gong//images/sanjiao.jpg" align="absmiddle" border="0"></span></td>
                                                <td valign="middle" align="left">


                                                    <a href="/gong/info/1035/7837.htm" class="c53327" title="天津“健康码”明白纸" target="_blank">
                                                        天津“健康码”明白纸
                                                    </a>



                                                </td>

                                                <td valign="middle" align="right" class="timestyle53327" width="1%" nowrap="">2020-03-06</td></tr><tr><td colspan="4" height="3" style="background-image:url(/gong/images/line.jpg)"></td></tr>
                                            <tr><td align="center" valign="middle" width="10" nowrap=""><span class="leaderfont53327"><img src="/gong/images/sanjiao.jpg" align="absmiddle" border="0"></span></td>
                                                <td valign="middle" align="left">


                                                    <a href="/gong/info/1035/7794.htm" class="c53327" title="天津市加强野生动物管理若干规定" target="_blank">
                                                        天津市加强野生动物管理若干规定
                                                    </a>



                                                </td>

                                                <td valign="middle" align="right" class="timestyle53327" width="1%" nowrap="">2020-03-03</td></tr><tr><td colspan="4" height="3" style="background-image:url(/gong/images/line.jpg)"></td></tr>
                                            <tr><td align="center" valign="middle" width="10" nowrap=""><span class="leaderfont53327"><img src="/gong/images/sanjiao.jpg" align="absmiddle" border="0"></span></td>
                                                <td valign="middle" align="left">


                                                    <a href="/gong/info/1035/7746.htm" class="c53327" title="天津市人民代表大会常务委员会关于禁止食用野生动物的决定" target="_blank">
                                                        天津市人民代表大会常务委员会关于禁止食用野生动物...
                                                    </a>



                                                </td>

                                                <td valign="middle" align="right" class="timestyle53327" width="1%" nowrap="">2020-02-28</td></tr><tr><td colspan="4" height="3" style="background-image:url(/gong/images/line.jpg)"></td></tr>
                                            </tbody></table><!--#endeditable--></td></tr>
                                    <tr>
                                        <td>&nbsp;</td></tr></tbody></table></td></tr></tbody></table></td></tr>
            </tbody>
        </table>


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
</body>
</html>
