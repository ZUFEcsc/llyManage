<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%><!DOCTYPE html>
<html>
<head>
<%@ include file="bootstrap.jsp"%>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<title>主页</title>
<link rel="stylesheet" href="../res/layui/css/layui.css">
</head>
<body class="layui-layout-body">
	<div class="layui-layout layui-layout-admin">
		<div class="layui-header" style="height:80px;">
			<div class="layui-logo" style="line-height:80px;">
			<img src="../img/you2.png" style="height:55px;opacity: 0.9;">
			</div>
			<!-- 头部区域（可配合layui已有的水平导航） -->
			<ul class="layui-nav layui-layout-left" style="line-height:80px;">
				<li class="layui-nav-item"><a href="">首页</a></li>
				<li class="layui-nav-item"><a href="">产品中心</a></li>
				<li class="layui-nav-item"><a href="">服务支持</a></li>
				<li class="layui-nav-item"><a href="javascript:;">请登录</a>
					<dl class="layui-nav-child">
						<dd>
							<a href="login.jsp">用户登录</a>
						</dd>
						<dd>
							<a href="adminLogin.jsp">系统管理员登录</a>
						</dd>
						<dd>
							<a href="enterpriseLogin.jsp">企业成员登录</a>
						</dd>
					</dl></li>
			</ul>
			<!-- 
			<ul class="layui-nav layui-layout-right" style="line-height:80px;">
				<li class="layui-nav-item"><a href="javascript:;"> <img
						src="../img/avatar.png" class="layui-nav-img"> 陈沈清
				</a>
					<dl class="layui-nav-child">
						<dd>
							<a href="userCenter.jsp">个人中心</a>
						</dd>
						<dd>
							<a href="">我的消息</a>
						</dd>
					</dl></li>
				<li class="layui-nav-item"><a href="">退出登录</a></li>
			</ul>
			 -->
		</div>

		<div class="layui-carousel" id="test10">
			<div carousel-item="">
				<div>
					<img src="../img/index1.png" style="width:100%;">
				</div>
				<div>
					<img src="../img/index2.png" style="width:100%;">
				</div>
				<div>
					<img src="../img/index1.png" style="width:100%;">
				</div>
				<div>
					<img src="../img/index2.png" style="width:100%;">
				</div>
				<div>
					<img src="../img/index1.png" style="width:100%;">
				</div>
			</div>
		</div>

		<div
			style="position: fixed; width: 100%; bottom: 0; height: 44px; line-height: 44px; text-align: center; background-color: #eee;">
			<!-- 底部固定区域 -->
			© 溜溜游团队出品
		</div>
	</div>
	<script src="../res/layui/layui.js"></script>
	<script>
		//JavaScript代码区域
		layui.use('element', function() {
			var element = layui.element;
		});

		layui.use([ 'carousel', 'form' ],
				function() {
					var carousel = layui.carousel, form = layui.form;

					//图片轮播
					carousel.render({
						elem : '#test10',
						width : '100%',
						height : '640px',
						interval : 5000
					});

					var $ = layui.$, active = {
						set : function(othis) {
							var THIS = 'layui-bg-normal', key = othis
									.data('key'), options = {};

							othis.css('background-color', '#5FB878').siblings()
									.removeAttr('style');
							options[key] = othis.data('value');
							ins3.reload(options);
						}
					};

					//监听开关
					form.on('switch(autoplay)', function() {
						ins3.reload({
							autoplay : this.checked
						});
					});

					$('.demoSet').on('keyup', function() {
						var value = this.value, options = {};
						if (!/^\d+$/.test(value))
							return;

						options[this.name] = value;
						ins3.reload(options);
					});

					//其它示例
					$('.demoTest .layui-btn').on('click', function() {
						var othis = $(this), type = othis.data('type');
						active[type] ? active[type].call(this, othis) : '';
					});
				});
	</script>

</body>
</html>
