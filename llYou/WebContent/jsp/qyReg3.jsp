<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%><!DOCTYPE html>
<html>
<head>
<%@ include file="bootstrap.jsp"%>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<title>企业注册认证</title>
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
				style="color: #e8e9e9; line-height: 80px; font-size: 24px; margin-left: 200px;">企业注册认证</span>
			<ul class="layui-nav layui-layout-right" style="line-height: 80px;">
				<li class="layui-nav-item"><a href="Login"> 返回首页</a></li>
				<li class="layui-nav-item"><a href="#">帮助</a></li>
			</ul>
		</div>

		<div style="padding: 10px; background-color: #F2F2F2;">
			<div class="layui-row layui-col-space15">
				<div class=" layui-field-title"
					style="margin-top: 10px; margin-left: 21%; margin-bottom: 10px">

					<i class="iconfont icon-shuzi1"
						style="font-size: 24px; color: #c7cdd3;"></i> <span
						style="font-size: 22px; color: #c7cdd3;">企业信息填写</span> <img alt=""
						src="../img/hr.png" width="16%"><i
						class="iconfont icon-shuzi2"
						style="font-size: 24px; color: #c7cdd3;"></i> <span
						style="font-size: 22px; color: #c7cdd3;">企业身份认证</span> <img alt=""
						src="../img/hr.png" width="16%"><i
						class="iconfont icon-shuzi3"
						style="font-size: 24px; color: #57aef1;"></i> <span
						style="font-size: 22px; color: #57aef1;">企业注册成功</span>

				</div>
				<div class="layui-col-md2"></div>
				<div class="layui-col-md8">

					<div class="layui-card">

						<div class="layui-card-body" style="margin-left: 40%;">

							<div class="col-sm" style="margin-top:15px;">
								<span style="font-size: 28px; color: #23262e;">提交成功 </span>
								
								<i class="iconfont icon-gougou" style="font-size: 28px; color: #57aef1;"></i>
							</div>
						</div>
						
						<div class="layui-card-body" style="margin-left: 28%;">
							<span style="font-size: 22px; color: #929496;">您的注册申请已经提交，待管理员审核</span><br>
							<span style="font-size: 22px; color: #929496;">通过后会通过邮箱通知，注意查收</span><br>
							
						</div>
						
						<div class="layui-card-body" style="margin-left: 35%;">
						
							<a href="#" class="layui-btn layui-btn-normal"><span
								style="padding: 0 15px;">查看回复</span></a> <a href="index.jsp"
								class="layui-btn layui-btn-warm" style="margin-left: 30px;"><span
								style="padding: 0 15px;">返回首页</span></a>

						</div>

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
