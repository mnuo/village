<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/commons/global.jsp" %>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <link rel="shortcut icon" type="image/x-icon" href="${path }/static/images/core/favicon.ico"  media="screen"/>
    <title>管理中心</title>
  	<link rel="stylesheet" href="${path }/static/css/index.css">
  	<link href="${path }/static/libs/bootstrap-3.3.5/css/bootstrap.min.css" rel="stylesheet">
  	<link href="${path }/static/css/iconfont/iconfont.css" rel="stylesheet">
  	<link href="${path }/static/css/message.css" rel="stylesheet">
  	<link rel="stylesheet" type="text/css" href="${path }/static/css/navigation-bar.css" />
</head>
<body>
		<div class="wrap" ng-controller="IndexController" ng-init="initializeController()">
				<header class="per-header">
					<div class="per-title">
						<div class="left-title">
							<a href="#" class="icon-title"><span class="icon-logo"></span></a>
						</div>
						<div class="main-title opacity9"><span>中心管理</span></div>
						<div class="main-title-right opacity9"><span>yu11115@163.com</span></div>
						<div class="main-title-right opacity9"><span>帮助文档</span></div>
					</div>
				</header>
				<div class="per-left-title content-font" shorcut="false">
					<div class="contant-left-title" onclick="javascripts:toggerLi(this);">
						<i class="iconfont icon-caidanmian" ></i>
					</div>
					<div class="left-li" id="left-menu">
					</div>
				</div>
				<div id="container">
					<%@include file="/commons/navigationbar.jsp" %>
						<div class="wrap-container">
								<div class="child-wrap content-right" id="welcome"><iframe width="100%" height="100%" style="border: 0px;" src="http://www.baidu.com"></iframe></div>
						</div>
				</div>
				<div id="messageContainer" class="message-container">
					<%@include file="core/message/message.jsp" %>
				</div>
		</div>
</body>
<script type="text/javascript">
	var basePath = '${path }';
</script>
<script type="text/javascript" src="${path }/static/libs/jquery-1.10.1.min.js"></script>
<script type="text/javascript" src="${path }/static/libs/bootstrap-3.3.5/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${path }/static/js/core/index.js"></script>
<script type="text/javascript" src="${path }/static/js/core/message.js"></script>

<%-- [EasyUI] --%>
<link id="easyuiTheme" rel="stylesheet" type="text/css" href="${staticPath }/static/easyui/themes/gray/easyui.css" />
<link id="easyuiTheme" rel="stylesheet" type="text/css" href="${staticPath }/static/easyui/themes/icon.css" />
<script type="text/javascript" src="${staticPath }/static/easyui/jquery.easyui.min.js" charset="utf-8"></script>
<script type="text/javascript" src="${staticPath }/static/easyui/locale/easyui-lang-zh_CN.js" charset="utf-8"></script>
<%-- [扩展JS] --%>
<script type="text/javascript" src="${staticPath }/static/extJs.js" charset="utf-8"></script>
<link rel="stylesheet" type="text/css" href="${staticPath }/static/foundation-icons/foundation-icons.css" />
	
</html>