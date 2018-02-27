<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/commons/global.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="shortcut icon" type="image/x-icon" href="../images/favicon.ico"  media="screen"/>
<title>账号登陆</title>
<meta name="keyword" content="武宣通挽信息网_武宣_通挽镇_历史_网页设计">
<meta name="keyword" content="武宣通挽镇信息网,了解更多详情,请联系当局。本网站内容不严谨,如果错误和雷同,请联系站长进行删除。">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="${path }/static/libs/bootstrap-3.3.5/css/bootstrap.min.css" rel="stylesheet">
<!-- Link Swiper's CSS -->
<link rel="stylesheet" href="${path }/static/libs/swiper3/css/swiper.min.css">

<link rel="stylesheet" href="${path }/static/css/common.css">
<link rel="stylesheet" href="${path }/static/css/login.css">
<script type="text/javascript" src="../js/baidustatic.js"></script>
</head>
<body onkeydown="enterlogin();">
<!-- navbar -->
<header class="navbar navbar-static-top navbarmain" id="top" role="banner">
  <div class="container">
    <div class="navbar-header">
    	<img src="../images/logo.png" class="logo-ico">
      <button class="navbar-toggle collapsed" type="button" data-toggle="collapse" data-target="#bs-navbar" aria-controls="bs-navbar" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
    </div>
    <nav id="bs-navbar" class="collapse navbar-collapse">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#">登录</a></li>
        <li><a href="register.html">注册</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li>
          <a href="../../index.html">首页</a>
        </li>
        <li>
          <a href="aboutme.html">关于我们</a>
        </li>
      </ul>
    </nav>
  </div>
</header>
<div class="content-module container">
	<div class="col-md-8">
		<div class="introdule-module">
			<div class="swiper-container">
			        <div class="swiper-wrapper">
			            <div class="swiper-slide"><img src="${path }/static/images/login1.jpg"></div>
			            <div class="swiper-slide"><img src="${path }/static/images/login2.jpg"></div>
			            <div class="swiper-slide"><img src="${path }/static/images/login3.jpg"></div>
			        </div>
			        <!-- Add Pagination -->
			        <div class="swiper-pagination"></div>
		  </div>
	</div>
	</div>
	<div class="col-md-4">
			<div class="login-module container">
			 <form method="post" id="loginform">
        		<input id="csrf" type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
				<div class="form-show">
						<div class="login-title">可直接使用会员名/邮箱/手机号进行登录</div>
						<div id="login-iframe-loading">
								<div>
									  <div class="form-group">
									  	<span><a class="info-a">忘记登陆名?</a></span>
									    <label for="username" class="form-col">登录名</label>
									    <input type="text" class="form-control" id="username" name="username" placeholder="邮箱/手机号/会员账号">
									  </div>
									  <div class="form-group">
									  <span><a class="info-a">忘记密码?</a></span>
									    <label for="password" class="form-col">登录密码</label>
									    <input type="password" class="form-control" id="password" name="password" placeholder="登录密码">
									  </div>
									  <div class="form-group">
									  		<input class="captcha" type="text" name="captcha" id="captcha" placeholder="请输入验证码"/>
            								<img id="captchaImg" alt="验证码" src="${path }/captcha.jpg" data-src="${path }/captcha.jpg?t=" style="margin-left: 10px;vertical-align:middle;border-radius:4px;width:94.5px;height:34px;cursor:pointer;">
									  </div>
									  <input id="submit" type="button" value="登录" class="btn btn-primary submit btn-block" onclick="javascript: submitForm();">
								</div>
						</div>
						<div class="login-other">
		       			<div class="register">
							    <a href="##" class="info-a" target=" _blank" data-spm-protocol="i">免费注册</a>
							</div>
	       		</div>
		        <div class="agreement">
		            <input type="checkbox" checked="checked"><label class="login-title">我同意并已阅读<a href="#" class="info-a" target="_blank">《网站服务协议》</a></label>
		        </div>
				</div>
				</form>
			</div>
	</div>
	
</div>
<div class="footer">

<div class="container">
    <footer class="row">
      <div class="col-sm-12">
        <small>CopyRight 2016-201 All Rights Reserved. seek.village.org 版权所有 </small>
    </footer>
  </div>
</div>
<script type="text/javascript" src="${path }/static/libs/jquery.min.js"></script>
<script type="text/javascript" src="${path }/static/libs/bootstrap-3.3.5/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${path }/static/js/core/login.js"></script>
<!-- Swiper JS -->
<script src="${path }/static/libs/swiper3/js/swiper.min.js"></script>

<!-- Initialize Swiper -->
<script>
$(function(){
	var swiper = new Swiper('.swiper-container', {
	    pagination: '.swiper-pagination',
	    paginationClickable: true,
	    autoplay:3000
	});
	 
});
</script>
</body>
</html>