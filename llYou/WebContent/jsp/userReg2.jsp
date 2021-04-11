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
<%
		String msg = (String) request.getAttribute("username");
	%>
	<div class="layui-layout layui-layout-admin">
		<div class="layui-header" style="height: 80px;">
			<div class="layui-logo" style="line-height: 80px;">
				<img src="../img/you2.png" style="height: 55px; opacity: 0.9;">
			</div>
			<!-- 头部区域（可配合layui已有的水平导航） -->
			<span
				style="color: #e8e9e9; line-height: 80px; font-size: 24px; margin-left: 200px;">用户注册认证</span>
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
						style="font-size: 22px; color: #c7cdd3;">用户账号申请</span> <img alt=""
						src="../img/hr.png" width="16%"><i
						class="iconfont icon-shuzi2"
						style="font-size: 24px; color: #57aef1;"></i> <span
						style="font-size: 22px; color: #57aef1;">用户身份认证</span> <img alt=""
						src="../img/hr.png" width="16%"><i
						class="iconfont icon-shuzi3"
						style="font-size: 24px; color: #c7cdd3;"></i> <span
						style="font-size: 22px; color: #c7cdd3;">用户注册成功</span>

				</div>
				<div class="layui-col-md2"></div>
				<div class="layui-col-md8">

					<div class="layui-card">
						<!-- style="overflow-y:scroll; overflow-x:hidden;" -->
						<form action="TwoRegistServlet?username=<%=msg %>" method="post">
							<div class="layui-card-header">
								<strong style="font-size:18px;">用户认证</strong>
							</div>
							<div class="layui-card-body">

								<div class="form-row">
									<div class="form-group col-md-3">
										<label>姓名</label> <input class="form-control"
											placeholder="请输入真实姓名" name="name">
									</div>

									<div class="form-group col-sm-2">
										<label>性别</label> <select class="form-control" name="sex">
											<option selected disabled style="display: none;" value="">请选择性别</option>
											<option>男</option>
											<option>女</option>
										</select>
									</div>

									<div class="form-group col-sm-1"></div>

									<div class="form-group col-md-2">
										<label>民族</label> <input class="form-control"
											placeholder="请输入民族" name="nation">
									</div>

									<div class="form-group col-sm-3">
										<label>政治面貌</label> <select class="form-control" name="political_feature">
											<option selected disabled style="display: none;" value="">请选择政治面貌</option>
											<option>群众</option>
											<option>共青团员</option>
											<option>中国共产党党员</option>
											<option>其他</option>
										</select>
									</div>



								</div>

								<div class="form-row">
									<div class="form-group col-md-5">
										<label>身份证</label> <input class="form-control"
											placeholder="请输入身份证" name="identity"> <small
											class="form-text text-muted">我们承诺，不会把您的个人信息透露给任何人。</small>
									</div>
								</div>

							</div>

							<div class="layui-card-header">
								<strong style="font-size:18px;">学习经历</strong>
								 <a href="#"><i class="iconfont icon-jia" style="color:#1e9fff;font-size:20px;"></i></a>
							</div>
							<div class="layui-card-body">
								<div class="form-row">
									<div class="form-group col-md-3">
										<label>就读学校</label> <input class="form-control"
											placeholder="请输入学校名称" name="school">
									</div>
																			
									<div class="form-group col-md">
										<label>所获荣誉</label> <input class="form-control"
											placeholder="请输入所获荣誉" name="honor">
									</div>
																
									<div class="form-group col-md-2">
										<label>在校时间</label> 
										<input type="date" name="inschool" id=""
											class="form-control">
									</div>
									<div class="form-group col-md-2">
										<label>毕业时间</label> <input type="date" name="graduate"
											class="form-control">
									</div>	
									
								</div>

								<div class="form-row">
									<div class="form-group col-md-3">
										<label>学位证书</label> <input type="file"
											class="form-control-file" style="margin-left: 30px;">
									</div>
									<div class="form-group col-md-3">
										<label>其他材料</label> <input type="file"
											class="form-control-file" style="margin-left: 30px;">
									</div>
								</div>

								<div class="form-group">
									<div class="form-row"
										style="margin-top: 15px; margin-left: 43%;">
										
											<button type="submit" class="layui-btn layui-btn-normal"><span
											style="padding: 0 15px;">确认提交</span></button>
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
	<script>
	
	</script>

</body>
</html>
