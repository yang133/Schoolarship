<%--
  Created by IntelliJ IDEA.
  User: 杨珊珊
  Date: 2020/4/3
  Time: 19:39
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
    <script type="text/javascript" src="/eams/static/scripts/jquery/jquery,jquery.ui.core.js"></script>
    <script type="text/javascript" src="/eams/static/scripts/plugins/jquery-form,jquery-history,jquery-colorbox,jquery-chosen.js"></script>
    <script type="text/javascript" src="/eams/static/js/plugins/jquery.subscribe,/js/struts2/jquery.struts2,jquery.ui.struts2.js"></script>
    <script type="text/javascript" src="/eams/static/scripts/beangle/beangle,beangle-ui.js"></script>

    <script type="text/javascript" src="/eams/static/scripts/my97/WdatePicker-4.72.js"></script>
    <link id="jquery_theme_link" rel="stylesheet" href="/eams/static/themes/smoothness/jquery-ui.css" type="text/css"/>
    <link id="beangle_theme_link" href="/eams/static/themes/default/beangle-ui,colorbox,chosen.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="/eams/static/css/foundation.css" type="text/css"/>
    <script type="text/javascript" src="/eams/static/scripts/highcharts.js"></script>

    <script src="/eams/static/scripts/require.config.js"></script>
    <script>
        require.baseUrl="/eams/static/scripts";
    </script>
    <script src="/eams/static/scripts/require.js"></script>
    <script type="text/javascript" src="/eams/static/scripts/require.js"></script>

    <!-- backbone & underscore -- fontend MVC framework -->
    <script type="text/javascript" src="/eams/static/scripts/underscore.min.js"></script>
    <script type="text/javascript" src="/eams/static/scripts/backbone.min.js"></script>
    <script type="text/javascript" src="/eams/static/scripts/underscore.string.min.js"></script>



</head>
<body style="">

<div id="indexDiv" class="ajax_container">
    <div id="toolbar16267797941" class="toolbar notprint" style="display: none;">
    <div class="toolbar-title">
        <span class="toolbar-icon action-info"></span>
        <strong>添加学生信息</strong>
    </div>
    <div class="toolbar-items" id="toolbar16267797941_items">
    <div class="toolbar-group-separator">&nbsp;</div>
    </div>
    <div class="toolbar-msg" id="toolbar16267797941_msg" style="display: none;"></div>
    <div class="toolbar-line"><img height="1" width="100%" align="top" src="/eams/static/themes/default/icons/16x16/actions/keyline.png"></div>
</div>
    <script type="text/javascript">
        bar = bg.ui.toolbar("toolbar16267797941",'学籍信息');
        bar.addBlankItem();

        bar.addHr();
    </script><div id="tabPane1" class="ui-tabs ui-widget ui-widget-content ui-corner-all">
        <ul class="ui-tabs-nav ui-helper-reset ui-helper-clearfix ui-widget-header ui-corner-all" role="tablist"><li id="tab_121219252" class="ui-state-default ui-corner-top ui-tabs-active ui-state-active" role="tab" tabindex="0" aria-controls="tabPage1" aria-labelledby="ui-id-1" aria-selected="true"><a href="#tabPage1" title="学籍信息" class="ui-tabs-anchor" role="presentation" tabindex="-1" id="ui-id-1"><span>学籍信息</span></a></li><li id="tab_1360961920" class="ui-state-default ui-corner-top" role="tab" tabindex="-1" aria-controls="tabPage2" aria-labelledby="ui-id-2" aria-selected="false"><a href="#tabPage2" title="资料申请修改" class="ui-tabs-anchor" role="presentation" tabindex="-1" id="ui-id-2"><span>资料申请修改</span></a></li><li id="tab_1265011266" class="ui-state-default ui-corner-top" role="tab" tabindex="-1" aria-controls="tabPage7" aria-labelledby="ui-id-3" aria-selected="false"><a href="#tabPage7" title="联系信息" class="ui-tabs-anchor" role="presentation" tabindex="-1" id="ui-id-3"><span>联系信息</span></a></li></ul>
        <script type="text/javascript">
            jQuery(document).ready(function () {
                var options_tab_tab_121219252 = {};
                options_tab_tab_121219252.id = "tab_121219252";
                options_tab_tab_121219252.href = "#tabPage1";
                options_tab_tab_121219252.label = "学籍信息";
                var tabs = jQuery('#tabPane1').data('taboptions');
                if(!tabs) {
                    tabs = [];
                }
                tabs.push(options_tab_tab_121219252);
                jQuery('#tabPane1').data('taboptions', tabs);
            });
        </script>
        <script type="text/javascript">
            jQuery(document).ready(function () {
                var options_tab_tab_1360961920 = {};
                options_tab_tab_1360961920.id = "tab_1360961920";
                options_tab_tab_1360961920.href = "#tabPage2";
                options_tab_tab_1360961920.label = "资料申请修改";
                var tabs = jQuery('#tabPane1').data('taboptions');
                if(!tabs) {
                    tabs = [];
                }
                tabs.push(options_tab_tab_1360961920);
                jQuery('#tabPane1').data('taboptions', tabs);
            });
        </script>
        <script type="text/javascript">
            jQuery(document).ready(function () {
                var options_tab_tab_1265011266 = {};
                options_tab_tab_1265011266.id = "tab_1265011266";
                options_tab_tab_1265011266.href = "#tabPage7";
                options_tab_tab_1265011266.label = "联系信息";
                var tabs = jQuery('#tabPane1').data('taboptions');
                if(!tabs) {
                    tabs = [];
                }
                tabs.push(options_tab_tab_1265011266);
                jQuery('#tabPane1').data('taboptions', tabs);
            });
        </script>
        <div id="tabPage1" class="ajax_container ui-tabs-panel ui-widget-content ui-corner-bottom" aria-labelledby="ui-id-1" role="tabpanel" aria-expanded="true" aria-hidden="false" style="display: block;">
            <br>
            <table style="width:95%" align="center" class="infoTable" id="studentInfoTb">
                <tbody><tr>
                    <td colspan="5" style="font-weight:bold;text-align:center" class="darkColumn">学籍信息</td>
                </tr>
                <tr>
                    <td width="25%" class="title" style="width:18%">学号：</td>
                    <td width="25%">1608054428</td>
                    <td width="25%" class="title" style="width:18%">姓名：</td>
                    <td>杨珊珊</td>
                    <td width="11%" rowspan="5" id="photoImg">
                        <img width="80px" height="110px" src="/eams/showSelfAvatar.action" alt="杨珊珊" title="杨珊珊">
                    </td>
                </tr>
                <tr>
                    <td class="title" style="width:18%">英文名：</td>
                    <td>YangShanShan</td>
                    <td class="title" style="width:18%">性别：</td>
                    <td>女</td>
                </tr>
                <tr>
                    <td class="title" style="width:18%">年级：</td>
                    <td>2016</td>
                    <td class="title" style="width:18%">学制：</td>
                    <td>4</td>
                </tr>
                <tr>
                    <td class="title" style="width:18%">项目：</td>
                    <td>本科</td>
                    <td class="title" style="width:18%">学历层次：</td>
                    <td>本科</td>
                </tr>
                <tr>
                    <td class="title" style="width:18%">学生类别：</td>
                    <td>默认学生类别</td>
                    <td class="title" style="width:18%">院系：</td>
                    <td>计算机与信息工程学院</td>
                </tr>
                <tr>
                    <td class="title" style="width:18%">专业：</td>
                    <td>软件工程</td>
                    <td class="title" style="width:18%">方向：</td>
                    <td></td>
                </tr>
                <tr>
                </tr>
                <tr>
                    <td class="title" style="width:18%">入校时间：</td>
                    <td>2016-08-18</td>
                    <td class="title" style="width:18%">毕业时间：</td>
                    <td>2020-08-18</td>
                </tr>
                <tr>
                    <td class="title" style="width:18%">行政管理院系：</td>
                    <td>计算机与信息工程学院</td>
                    <td class="title" style="width:18%">学习形式：</td>
                    <td>普通全日制</td>
                </tr>
                <tr>
                    <td class="title" style="width:18%">是否在籍：</td>
                    <td>是</td>
                    <td class="title" style="width:18%">是否在校：</td>
                    <td>是</td>
                </tr>
                <tr>
                    <td class="title" style="width:18%">所属校区：</td>
                    <td>东校区</td>
                    <td class="title" style="width:18%">所属班级：</td>
                    <td>16软件4班</td>
                </tr>
                <tr>
                    <td class="title" style="width:18%">学籍生效日期：</td>
                    <td>2016-08-18</td>
                    <td class="title" style="width:18%">是否有学籍：</td>
                    <td>是</td>
                </tr>
                <tr>
                    <td class="title" style="width:18%">学籍状态：</td>
                    <td>有</td>
                    <td class="title" style="width:18%">是否在职：</td>
                    <td>否</td>
                </tr>
                <tr>
                    <td class="title" style="width:18%">备注：</td>
                    <td colspan="3"></td>
                </tr>
                </tbody></table>
            <script>
            </script>
        </div>

        <div id="tabPage2" class="ajax_container ui-tabs-panel ui-widget-content ui-corner-bottom" aria-labelledby="ui-id-2" role="tabpanel" aria-expanded="false" aria-hidden="true" style="display: none;"><form id="applyEditForm" class="listform" name="applyEditForm" action="/eams/stdDetail!applyEdit.action" method="post" target="indexDiv" onsubmit="return onsubmitapplyEditForm()">

            <fieldset class="emptytitle">

                <ol><li><label for="mail" class="title"><em class="required">*</em>电子邮件:</label><input type="text" id="mail" title="电子邮件" name="contact.mail" value="" maxlength="100"></li>
                    <li><label for="phone" class="title"><em class="required">*</em>联系电话:</label><input type="text" id="phone" title="联系电话" name="contact.phone" value="13475067188" maxlength="100"></li>
                    <li><label for="mobile" class="title"><em class="required">*</em>移动电话:</label><input type="text" id="mobile" title="移动电话" name="contact.mobile" value="13475067188" maxlength="100"></li>
                    <li><label for="address" class="title"><em class="required">*</em>联系地址:</label><textarea id="address" title="联系地址" name="contact.address" style="width:400px;height:30px;">山东省惠民县铁匠魏村152号</textarea></li>
                    <li class="foot">						<input value="提交" onclick="bg.form.submit('applyEditForm',null,null,validateData);return false;" type="submit">&nbsp;
                        <input type="reset" name="reset1" value="重置" class="buttonStyle">
                    </li>
                </ol>
            </fieldset>
        </form>
            <script>
                bg.ui.load("validity");
                function onsubmitapplyEditForm(){
                    var res=null;
                    jQuery.validity.start();
                    jQuery('#mail').require().match('notBlank').match('email').maxLength(20);
                    jQuery('#phone').require().match('notBlank').maxLength(20);
                    jQuery('#address').require().match('notBlank').maxLength(100).maxLength(400);
                    jQuery('#mobile').require().match('notBlank').maxLength(20);

                    res = jQuery.validity.end().valid;
                    if(false==res) return false;
                    return res;
                }
            </script>
        </div>

        <div id="tabPage7" class="ajax_container ui-tabs-panel ui-widget-content ui-corner-bottom" aria-labelledby="ui-id-3" role="tabpanel" aria-expanded="false" aria-hidden="true" style="display: none;">
            <style>
                table.infoContactTable {
                    vertical-align: middle;
                    width:100%;
                    border-collapse: collapse;
                    background-color: #EEEEEE;
                }

                table.infoContactTable td {
                    border: 1px solid #FFFFFF;
                }
                table.infoContactTable th {
                    background-color: #E1ECFF;
                    height: 22px;
                }

                .infoContactTable .title{
                    height: 22px;
                    width: 10%;
                    background-color:#F5EDDB;
                    padding-left: 2px;
                    padding-right: 2px;
                    text-align:center;
                }
                .infoContactTable .content{
                    padding-left: 1px;
                    padding-right: 1px;
                }

            </style>
            <table style="width:95%" align="center" class="infoTable">
                <tbody><tr>
                    <td colspan="4" style="font-weight:bold;text-align:center" class="darkColumn">联系信息</td>
                </tr>
                <tr>
                    <td class="title" style="width:18%">电子邮件：</td>
                    <td style="width:20%"></td>
                    <td class="title" style="width:18%">联系电话：</td>
                    <td style="width:34%">13475067188</td>
                </tr>
                <tr>
                    <td class="title" style="width:18%">移动电话：</td>
                    <td style="width:20%">13475067188</td>
                    <td class="title" style="width:18%">联系地址：</td>
                    <td style="width:34%">山东省惠民县铁匠魏村152号</td>
                </tr>
                <tr class="darkColumn">
                    <td colspan="4" style="font-weight:bold;text-align:center" class="darkColumn">家庭联系信息</td>
                </tr>
                <tr>
                    <td class="title" style="width:18%">家庭电话：</td>
                    <td style="width:20%"></td>
                    <td class="title" style="width:18%">家庭地址：</td>
                    <td style="width:34%"></td>
                </tr>
                <tr>
                    <td class="title" style="width:18%">家庭地址邮编：</td>
                    <td style="width:20%"></td>
                    <td class="title">火车站：</td>
                    <td style="width:34%"></td>
                </tr>
                </tbody></table>
            <table style="width:95%" align="center" class="infoContactTable">
                <tbody><tr>
                    <td class="title">家庭成员</td>
                    <td class="title">与本人关系</td>
                    <td class="title">监护人</td>
                    <td class="title">证件类型</td>
                    <td class="title">证件号码</td>
                    <td class="title">联系电话</td>
                    <td class="title">工作单位</td>
                    <td class="title">工作邮编</td>
                    <td class="title">工作地址</td>
                </tr>
                </tbody></table>
        </div>

    </div>
    <script type="text/javascript">
        jQuery(document).ready(function () {
            var options_tabPane1 = {};
            options_tabPane1.jqueryaction = "tabbedpanel";
            options_tabPane1.id = "tabPane1";

            jQuery.struts2_jquery_ui.bind(jQuery('#tabPane1'),options_tabPane1);

        });
    </script>
</div>

<script>
    function validateData() {
        var mail = jQuery("#mail").val();
        var phone = jQuery("#phone").val();
        var mobile = jQuery("#mobile").val();
        var address = jQuery("#address").val();
        if (mail=="" && phone=="13475067188"
            && mobile=="13475067188" && address=="山东省惠民县铁匠魏村152号") {
            alert("请修改资料后再进行提交!");
            return false;
        }
        var mobileReg = /^1[0-9]{10}$/;
        var phoneReg =/^([0-9]{3,4}-)?[0-9]{7,8}$/;
        if(!(phoneReg.test(phone) || mobileReg.test(phone))){
            alert("请输入正确的联系电话");
            return false;
        }
        if(!mobileReg.test(mobile)){
            alert("请输入正确的移动电话");
            return false
        }

        return true;
    }
</script>

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



<div id="cboxOverlay" style="display: none;"></div><div id="colorbox" class="" role="dialog" tabindex="-1" style="display: none;"><div id="cboxWrapper"><div><div id="cboxTopLeft" style="float: left;"></div><div id="cboxTopCenter" style="float: left;"></div><div id="cboxTopRight" style="float: left;"></div></div><div style="clear: left;"><div id="cboxMiddleLeft" style="float: left;"></div><div id="cboxContent" style="float: left;"><div id="cboxTitle" style="float: left;"></div><div id="cboxCurrent" style="float: left;"></div><button type="button" id="cboxPrevious"></button><button type="button" id="cboxNext"></button><button id="cboxSlideshow"></button><div id="cboxLoadingOverlay" style="float: left;"></div><div id="cboxLoadingGraphic" style="float: left;"></div></div><div id="cboxMiddleRight" style="float: left;"></div></div><div style="clear: left;"><div id="cboxBottomLeft" style="float: left;"></div><div id="cboxBottomCenter" style="float: left;"></div><div id="cboxBottomRight" style="float: left;"></div></div></div><div style="position: absolute; width: 9999px; visibility: hidden; display: none; max-width: none;"></div></div></body>



</html>