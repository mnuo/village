<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/commons/global.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>404-资源未找到</title>
    </head>
    <body>
		<div class="error-container">
			<div class="well">
				<h1 class="grey lighter smaller">
					<span class="info bigger-125">
						<i class="ace-icon fa fa-sitemap"></i>
						HTTP 404
					</span>
					指定页面不存在
				</h1>
				<hr />
				<h3 class="lighter smaller">系统没有发现你要找的页面</h3>
				<div>

					<div class="space"></div>
					<h4 class="smaller">请尝试以下操作:</h4>

					<ul class="list-unstyled spaced inline bigger-110 margin-15">
						<li>
							<i class="ace-icon fa fa-hand-o-right info"></i>
							检查地址是否输入错误
						</li>

						<li>
							<i class="ace-icon fa fa-hand-o-right info"></i>
							检查是否处于联网状态
						</li>

						<li>
							<i class="ace-icon fa fa-hand-o-right info"></i>
							联系管理员
						</li>
					</ul>
				</div>

				<hr />

				<div class="center">
					<a href="${ctxPath}/" class="btn btn-grey">
						<i class="ace-icon fa fa-arrow-left"></i>
						返回
					</a>
				</div>
			</div>
		</div>
    </body>
</html>