<%--
  Created by IntelliJ IDEA.
  User: 杨珊珊
  Date: 2020/3/26
  Time: 19:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=8" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script>if (top.location != self.location) {top.location = self.location;}</script>
    <title>天津农学院奖学金评定系统</title>
    <link href="/aexp/style/login.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="/aexp/resource/jQuery/jquery-1.3.2.min.js"></script>
    <script type="text/javascript" src="/aexp/basic/md5.js"></script>
</head>
<script type="text/javascript">
    window.onresize = function(){
        if(!-[1,]) {window.location.reload()};
    }
    window.opener = null;

    function onLoad() {
        document.loginForm.username.focus();
        var arr = document.cookie.match(new RegExp("(^| )username=([^;]*)(;|$)"));
        if (arr != null) {
            document.loginForm.username.value = unescape(arr[2]);
        }
        getValidateCode();
    }
    function getValidateCode() {
        $("#vcodeDiv>IMG[flag=VIMG]").attr("src","/aexp/images/ValidateImage.jpg?t="+Math.random());
    }
    function mySubmit() {
        if (document.loginForm.username.value == "") {
            alert("请输入用户名");
            document.loginForm.username.focus();
            return false;
        }
        if (document.loginForm.password.value == "") {
            alert("请输入密码");
            document.loginForm.password.focus();
            return false;
        }
        var users=document.loginForm.username.value;
        var username=hex_md5(document.loginForm.username.value);
        var password=hex_md5(document.loginForm.password.value);
        $("#username").val(username);
        $("#password").val(password);
        if (document.loginForm.validateCode.value == ""||document.loginForm.validateCode.value == "请点击") {
            alert("请输入验证码");
            document.loginForm.validateCode.focus();
            return false;
        }
        document.cookie = "username="+ escape(users);
        return true;
    }
    function showValidateCode(ipt, flag) {
        setTimeout(function() {
            if (flag == 1) {
                var inp = $(ipt);
                if (ipt.value == "请点击") {
                    ipt.value = "";
                    ipt.style.color = "";
                }
            } else {
                if (ipt.value == "") {
                    ipt.value = "请点击";
                    ipt.style.color = "#a3a3a3";
                }
            }
        }, 20);
    }
    function showValidateCode1(ipt, flag) {
        setTimeout(function() {
            if (flag == 1) {
                var inp = $(ipt);
                if (ipt.value == ipt.title) {
                    ipt.value = "";
                    ipt.style.color = "";
                }
            } else {
                if (ipt.value == "") {
                    ipt.value = ipt.title;
                    ipt.style.color = "#a3a3a3";
                }
            }
        }, 20);
    }
</script>
<body onload="onLoad()">
<form action="login" method="post" name="loginForm" id="loginForm" onsubmit="return mySubmit();">
    <div class="wapper">
        0<div id="loginbox">
            <div id="login">
                <div class="logo" href="#"><img src="/aexp/resources/custom_logo/tjac.gif"/></div>
                <h2>奖学金评定系统</h2>
                <ul>
                    <li>
                        <label>用户名</label>
                        <input name="no" id="no" onblur="showValidateCode1(this,0)" onfocus="showValidateCode1(this,1)"
                               title="请输入职工号或学号" type="text" value="请输入职工号或学号" class="input_form"
                               style="color:#a3a3a3;ime-mode:disabled;"/>
                    </li>
                    <li>
                        <label>密&nbsp;&nbsp;&nbsp;码</label>
                        <input name="password" id="password" type="password" autocomplete="off"/>
                    </li>
                    <li>
                        <label>验证码</label>
                        <input name="validateCode" class="inpwth" onblur="showValidateCode(this,0)" onfocus="showValidateCode(this,1)"
                               type="text" maxlength="4" title="请输入验证码" value="请点击" class="input_form"
                               style="color:#a3a3a3;width: 84px;ime-mode:disabled;" />
                        <div class="vcode" id="vcodeDiv">
                            <img flag="VIMG" title="验证码看不清？点击获取新验证码" src="/aexp/images/ValidateImage.jpg?t=0.49343710865870927" onclick="getValidateCode()"
                                 style="width:86px;height:29px;cursor:hand;"/>
                            <a href="javascript:void(0)" onclick="getValidateCode()" title="验证码看不清？点击获取新验证码">看不清图片？</a>
                            <input name="code" type="hidden" id="code" value="dologin" />
                            <input name="productCode" type="hidden" value="/aexp"/>
                        </div>
                    </li>
                    <li>
                        <label>角&nbsp;&nbsp;&nbsp;色</label>
                        <select name="juese" title="请选择角色" class="juese">
                            <option value="1">教师</option>
                            <option value="2">学生</option>
                            <option value="3">教务处</option>
                        </select>
                    </li>
                    <li>
                        <div class="lbtn">
                            <button type="submit" id="btnShow">登 录</button>
                            <a href="#" onclick="window.open('getPassword.jsp', null, 'width=640,height=420,scrollbars=no,resizable=no,menubar=yes')">找回密码</a>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div id="footer">
        <p>Copyright&copy;2000-2020天津农学院All rights reserved</p>
        <p><span style="font-size: 14px"><a href="http://www.zxtdsoft.com/" target="_blank" style="color:#011e54">我提供技术支持</a></span></p>
    </div>
</form>
</body>

</html>
