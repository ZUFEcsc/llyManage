<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%><!DOCTYPE html>
<html>
<head>
<%@ include file="bootstrap.jsp"%>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<title>用户注册认证</title>
<link rel="stylesheet" href="../res/layui/css/layui.css">
</head>
<body class="layui-layout-body">

	<div class="layui-layout layui-layout-admin">
		<div class="layui-header" style="height: 80px;">
			<div class="layui-logo" style="line-height: 80px;">
				<img src="../img/you2.png" style="height: 55px; opacity: 0.9;">
			</div>
			<!-- 头部区域（可配合layui已有的水平导航） -->
			<span
				style="color: #e8e9e9; line-height: 80px; font-size: 24px; margin-left: 200px;">用户注册认证</span>
			<ul class="layui-nav layui-layout-right" style="line-height: 80px;">
				<li class="layui-nav-item"><a href="index.jsp"> 返回首页</a></li>
				<li class="layui-nav-item"><a href="#">帮助</a></li>
			</ul>
		</div>

		<div style="padding: 10px; background-color: #F2F2F2;">
			<div class="layui-row layui-col-space15">
				<div class=" layui-field-title"
					style="margin-top: 10px; margin-left: 21%; margin-bottom: 10px">

					<i class="iconfont icon-shuzi1"
						style="font-size: 24px; color: #57aef1;"></i> <span
						style="font-size: 22px; color: #57aef1;">用户账号申请</span> <img alt=""
						src="../img/hr.png" width="16%"><i
						class="iconfont icon-shuzi2"
						style="font-size: 24px; color: #c7cdd3;"></i> <span
						style="font-size: 22px; color: #c7cdd3;">用户身份认证</span> <img alt=""
						src="../img/hr.png" width="16%"><i
						class="iconfont icon-shuzi3"
						style="font-size: 24px; color: #c7cdd3;"></i> <span
						style="font-size: 22px; color: #c7cdd3;">用户注册成功</span>

				</div>
				<div class="layui-col-md2"></div>
				<div class="layui-col-md8">

					<div class="layui-card">
						<!-- style="overflow-y:scroll; overflow-x:hidden;" -->
						<form action="OneRegistServlet" method="post">
							<div class="layui-card-header">
								<strong style="font-size:18px;">账号申请</strong>
							</div>
							<div class="layui-card-body">

								<div class="form-row">
									<div class="form-group col-md-4">
										<label>账号名称</label> <input class="form-control"
											aria-describedby="emailHelp" placeholder="请输入账号" name="username"> <small
											id="emailHelp" class="form-text text-muted">以字母开头，可包含数字1-9的4-12个字符。</small>
									</div>

								</div>


								<div class="form-row">
									<div class="form-group col-md-4">
										<label>密码</label> <input class="form-control" type="password"
											placeholder="请输入密码" name="password"> <small id="emailHelp"
											class="form-text text-muted">须由字母、数字和特殊字符中的至少两种组成。</small>
									</div>
									
								</div>
								
								<div class="form-row">
							
									<div class="form-group col-md-4">
										<label>再次输入密码</label> <input class="form-control"
											type="password" placeholder="请再次输入密码"><small id="emailHelp"
											class="form-text text-muted">为二次确认设置密码无误，请再次输入相同的密码。</small>
									</div>
								</div>
								
								<div class="form-row">
									<div class="form-group col-md-5">
										<label>联系邮箱</label> <input class="form-control"
											placeholder="请输入联系邮箱" name="email">
									</div>
								</div>

								<div class="form-group">
									<div class="form-row"
										style="margin-top: 15px; margin-left: 45%;">
										<button type="submit" class="layui-btn layui-btn-normal"><span
											style="padding: 0 15px;">下一步</span></button>
									</div>
								</div>

							</div>
						</form>
		
					</div>
				</div>


			</div>
		</div>

		<div
			style="position: fixed; width: 100%; bottom: 0; height: 44px; line-height: 44px; text-align: center; background-color: #eee;">

			© 溜溜游团队出品</div>
	</div>
	<script src="../res/layui/layui.js"></script>
	<script>
		//JavaScript代码区域
		layui.use('element', function() {
			var element = layui.element;
		});
	</script>

</body>
</html>
