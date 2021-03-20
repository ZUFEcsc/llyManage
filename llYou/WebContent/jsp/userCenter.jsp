<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%><!DOCTYPE html>
<html>
<head>
<%@ include file="bootstrap.jsp"%>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<title>用户_个人中心</title>
<style>
.uc-tr{
	height:45px;
}
</style>
<link rel="stylesheet" href="../res/layui/css/layui.css">
</head>
<body class="layui-layout-body">
	<div class="layui-layout layui-layout-admin">
		<%@ include file="lly-header.jsp"%>
		<div class="layui-side layui-bg-black">
			<div class="layui-side-scroll">
				<!-- 左侧导航区域（可配合layui已有的垂直导航） -->
				<%@ include file="user-card.jsp"%>
				<ul class="layui-nav layui-nav-tree" lay-filter="test">
					<li class="layui-nav-item layui-nav-itemed"><a class=""
						href="javascript:;">招聘查询</a>
						<dl class="layui-nav-child">
							<dd>
								<a href="userSearch.jsp">招聘信息查询</a>
							</dd>
						</dl></li>
					<li class="layui-nav-item"><a href="javascript:;">我的招聘</a>
						<dl class="layui-nav-child">
							<dd>
								<a href="userSearch.jsp">我的招聘进度</a>
							</dd>
						</dl></li>
				</ul>
			</div>
		</div>

		<div class="layui-body">
			<!-- 内容主体区域 -->
			<fieldset class="layui-elem-field layui-field-title"
				style="margin-top: 20px;">
				<legend>
					<i class="layui-icon layui-icon-username"
						style="font-size: 30px; color: #1E9FFF;"></i> 个人中心
				</legend>
			</fieldset>
			<div style="padding: 10px; background-color: #F2F2F2;">
				<div class="layui-row layui-col-space15">
					<div class="layui-col-md6">
						<div class="layui-card">
							<div style="display: inline-block;">
								<img src="../img/lc.png" style="float:left; padding:5px 10px;">
							</div>
							<div class="layui-card-body" style="display: inline-block;">
								<table>
								<colgroup>
								    <col width="160">
								    <col>
								  </colgroup>
									<tbody>
										<tr class="uc-tr">
											<td>姓名：</td>
											<td>民族：</td>
										</tr>
										<tr class="uc-tr">
											<td>性别：</td>
											<td>政治面貌：</td>
										</tr>
										<tr class="uc-tr">
											<td>所属企业：</td>
											<td>担任职位：</td>
										</tr>
										<tr class="uc-tr">
											<td>所属企业：</td>
											<td>担任职位：</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
					
					<div class="layui-col-md6">
						<div class="layui-card">
							<div class="layui-card-header">个人分析</div>
							<div class="layui-card-body">
								内容
							</div>
							<div class="layui-card-body">内容</div>
							<div class="layui-card-body">内容</div>
							<div class="layui-card-body">内容</div>
						</div>
					</div>
					
					<div class="layui-col-md12">
						<div class="layui-card">
					
							<div class="layui-card-header">学生档案</div>
							<div class="layui-card-body">内容</div>
							<div class="layui-card-body">内容</div>
							<div class="layui-card-body">内容</div>
							<div class="layui-card-body">内容</div>
							<div class="layui-card-body">内容</div>
						</div>
					</div>
					
					<div class="layui-col-md12">
						<div class="layui-card">
							<div class="layui-card-header">就职档案</div>
							<div class="layui-card-body">内容</div>
							<div class="layui-card-body">内容</div>
							<div class="layui-card-body">内容</div>
							<div class="layui-card-body">内容</div>
							<div class="layui-card-body">内容</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<%@ include file="lly-footer.jsp"%>
	</div>
	<script src="../res/layui/layui.js"></script>
	<script>
		//JavaScript代码区域
		layui.use('element', function() {
			var element = layui.element;
		});
	</script>

	<script>
		layui.use('element', function() {
			var $ = layui.jquery, element = layui.element; //Tab的切换功能，切换事件监听等，需要依赖element模块

		});
	</script>

</body>
</html>
