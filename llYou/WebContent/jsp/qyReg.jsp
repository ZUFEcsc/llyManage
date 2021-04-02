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
							style="font-size: 24px; color: #57aef1;"></i> <span
							style="font-size: 22px; color: #57aef1;">企业信息填写</span> <img
							alt="" src="../img/hr.png" width="16%"><i class="iconfont icon-shuzi2"
							style="font-size: 24px; color: #c7cdd3;"></i> <span
							style="font-size: 22px; color: #c7cdd3;">企业身份认证</span> <img
							alt="" src="../img/hr.png" width="16%"><i class="iconfont icon-shuzi3"
							style="font-size: 24px; color: #c7cdd3;"></i> <span
							style="font-size: 22px; color: #c7cdd3;">企业注册成功</span>

					</div>
				<div class="layui-col-md2"></div>
				<div class="layui-col-md8">

					<div class="layui-card">
						<!-- style="overflow-y:scroll; overflow-x:hidden;" -->
						<form>
							<div class="layui-card-header">
								<strong>企业信息</strong>
							</div>
							<div class="layui-card-body">

								<div class="form-row">
									<div class="form-group col-md-4">
										<label>企业名称</label> <input class="form-control"
											aria-describedby="emailHelp" placeholder="请输入企业名称">
									</div>
									<div class="form-group col-md-2">
										<label>所属行业</label> <input class="form-control"
											placeholder="请输入所属行业">
									</div>
									<div class="form-group col-md-2">
										<label>企业类型</label> <input class="form-control"
											placeholder="请输入企业类型">
									</div>
									<div class="form-group col-md-2">
										<label>企业规模</label> <select class="form-control">
											<option selected>1-20 人</option>
											<option>...</option>
										</select>
									</div>
							
								</div>
								

								<div class="form-row">
									<div class="form-group col-md-2">
										<label>法人代表</label> <input class="form-control"
											placeholder="请输入法人代表">
									</div>
									<div class="form-group col-md-5">
										<label>联系邮箱</label> <input class="form-control"
											placeholder="请输入联系邮箱">
									</div>
									<div class="form-group col-md-3">
										<label>成立日期</label> <input type="date" name="birth"
											class="form-control" value="2010-01-01">
									</div>

								</div>

								<div class="form-row">
									<div class="form-group col-md">
										<label>企业简介</label>
										<textarea class="form-control"
											id="exampleFormControlTextarea1" rows="3"></textarea>
									</div>
								</div>
							
							</div>
							
							
							<div class="layui-card-header">
								<strong>账号分配</strong>
							</div>
							<div class="layui-card-body">
								<div class="form-row">
									<div class="col-md-2">
										<label>HR账号</label> <select class="form-control">
											<option selected>1 人</option>
											<option>...</option>
										</select>
									</div>
									<div class="col-md-2">
										<label>部门主管账号</label> <select class="form-control">
											<option selected>1 人</option>
											<option>...</option>
										</select>
									</div>
									<div class="col-md-2">
										<label>办公室主任账号</label> <select class="form-control">
											<option selected>1 人</option>
											<option>...</option>
										</select>
									</div>
									<div class="col-md-2">
										<label>项目经理账号</label> <select class="form-control">
											<option selected>1 人</option>
											<option>...</option>
										</select>
									</div>
								</div>
								<div class="form-group">
									<div class="form-row" style="margin-top:15px;margin-left:45%;">
										<a href="#" class="btn btn-primary"><span style="padding:0 15px;">下一步</span></a>
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
