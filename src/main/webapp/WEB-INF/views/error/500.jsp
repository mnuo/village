<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../commons/global.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HTTP 500</title>
    </head>
    <body>
		<div class="error-container">
			<div class="well">
				<h1 class="grey lighter smaller">
					<span class="info bigger-125">
						<i class="ace-icon fa fa-random"></i>
						HTTP 500
					</span>
					出错啦
				</h1>

				<hr />
				<h3 class="lighter smaller">
					我们正在努力
					<i class="ace-icon fa fa-wrench icon-animated-wrench bigger-125"></i>
					排查!
				</h3>

				<div class="space"></div>

				<div>
					<h4 class="lighter smaller">与此同时,请根据以下错误信息进行尝试修复:</h4>

					<ul class="list-unstyled spaced inline bigger-110 margin-15">
						<li>
							<i class="ace-icon fa fa-exclamation-triangle"></i>
							${error}
						</li>
					</ul>
				</div>

				<hr />
				<div class="space"></div>

				<div class="center">
					<a href="${path}/login" class="btn btn-grey">
						<i class="ace-icon fa fa-arrow-left"></i>
						返回登陆
					</a>
				</div>
			</div>
		</div>
    </body>
</html>