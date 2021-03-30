<%@ page language="java" import="java.util.*,dao.*,bean.*"
	contentType="text/html; charset=utf-8" pageEncoding="utf-8"%><!DOCTYPE html>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html>
<head>
<%@ include file="bootstrap.jsp"%>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<style>
.layui-timeline-item {
	height: 55px;
}

.layui-timeline-item i {
	font-size: 25px;
}
</style>
<title>部门主管页面</title>
<link rel="stylesheet" href="../res/layui/css/layui.css">
</head>
<body class="layui-layout-body">
	<div class="layui-layout layui-layout-admin">
		<%@ include file="lly-header.jsp"%>
		<div class="layui-side layui-bg-black">
			<div class="layui-side-scroll">
				<!-- 用户卡片 -->
				<div style="margin: 10px 35px;">
					<div class="userCard-img"
						style="display: inline-block; padding-right: 5px;">
						<img src="../img/avatar.png"
							style="border-radius: 50% !important; width: 42px; margin-bottom: 10px;">
					</div>
					<div class="userCard-text" style="display: inline-block;">
						<h5 style="padding-bottom: 4px">陈沈清</h5>
						<span class="layui-badge layui-bg-orange">部门主管</span>
					</div>
				</div>

				<ul class="layui-nav layui-nav-tree" lay-filter="test">
					<li class="layui-nav-item layui-nav-itemed"><a class=""
						href="javascript:;">项目管理</a>
						<dl class="layui-nav-child">
							<dd>
								<a href="#" class="site-demo-active" data-url="XMXX"
									data-id="XMXX" data-type="tabXMXX">项目信息</a>
							</dd>
							<dd>
								<a href="#" class="site-demo-active" data-url="TJXM"
									data-id="TJXM" data-type="tabTJXM">添加项目</a>
							</dd>
						</dl></li>
					<li class="layui-nav-item layui-nav-itemed"><a
						href="javascript:;">项目评价</a>
						<dl class="layui-nav-child">
							<dd>
								<a href="#" class="site-demo-active" data-url="NMPJ"
									data-id="NMPJ" data-type="tabNMPJ">年末评价</a>
							</dd>
							<dd>
								<a href="#" class="site-demo-active" data-url="ZDSJ"
									data-id="ZDSJ" data-type="tabZDSJ">重大事件评价</a>
							</dd>
						</dl></li>
				</ul>
			</div>
		</div>

		<div class="layui-body">
			<!-- 内容主体区域 -->
			<div class="layui-tab layui-tab-brief" lay-filter="demo">
				<ul class="layui-tab-title">
					<li class="layui-this" lay-id="XMXX">项目信息 <!--lay-allowclose="true"(div) <i class="layui-icon layui-unselect layui-tab-close">ဆ</i> -->
					</li>
				</ul>
				<div class="layui-tab-content">
					<!-- 项目信息  -->
					<div class="layui-tab-item layui-show" id="item-XMXX">
						<div>
							<form style="float: left; margin-left: 5px;">
								<div class="form-row">
									<div class="form-group col-md">
										<select class="form-control">
											<option selected disabled style="display: none;" value="">所有项目信息</option>
											<option>1</option>
											<option>2</option>
											<option>3</option>
											<option>4</option>
										</select>
									</div>
									<a href="#" type="submit"><i
										class="layui-icon layui-icon-search"
										style="font-size: 30px; color: #1E9FFF;"></i></a>
								</div>

							</form>
							<form style="float: right; margin-right: 15px;">
								<div class="form-row">
									<div class="form-group col-md">
										<input type="date" name="birth" class="form-control"
											value="2000-01-01">
									</div>
									<div class="form-group">
										<i class="layui-icon layui-icon-right"
											style="font-size: 30px;"></i>
									</div>
									<div class="form-group col-md">
										<input type="date" name="birth" class="form-control"
											value="2000-01-01">
									</div>
									<a href="#" type="submit"><i
										class="layui-icon layui-icon-search"
										style="font-size: 30px; color: #1E9FFF;"></i></a>
								</div>
							</form>
							<sapn style="float: right;line-height:45px;">请选择时间段：</sapn>
							<hr>
						</div>

						<div class="layui-row layui-col-space15">
							<div class="layui-col-md3">
								<div class="layui-card">
									<div class="layui-card-header" style="background: #ffc107;">
										<strong>Y2019876</strong> <span style="float: right;">
											<i class="iconfont icon-jiazaizhong"
											style="color: #ffffff; font-size: 18px;"></i> 进行中…
										</span>
									</div>
									<div class="layui-card-body">
										<i class="iconfont icon-xiangmu" style="color: #5FB878;"></i>
										项目姓名：教练我想打篮球<br> <i class="iconfont icon-zhaopingangwei"
											style="color: #5FB878;"></i> 项目负责人：三井<br> <i
											class="iconfont icon-suggestion" style="color: #5FB878;"></i>
										项目内容：安西教练，我想打篮球555<br> <i
											class="iconfont icon-lunkuohua2_yonghu"
											style="color: #5FB878;"></i> 项目成员：安西教练、三井寿<br> <i
											class="iconfont icon-shijian" style="color: #5FB878;"></i>
										起始时间：2019-08-07<br> <i
											class="iconfont icon-jiezhishijian" style="color: #5FB878;"></i>
										结束时间：2021-04-20（预计）<br> <a href="#"
											style="margin-left: 80%"> 查看详细</a>

									</div>
								</div>
							</div>
							<div class="layui-col-md3">
								<div class="layui-card">
									<div class="layui-card-header" style="background: #5fb878;">
										<strong>Y2019876</strong> <span style="float: right;">
											<i class="iconfont icon-gougou" style="color: #ffffff;"></i>
											已结束
										</span>
									</div>
									<div class="layui-card-body">
										<i class="iconfont icon-xiangmu" style="color: #5FB878;"></i>
										项目姓名：教练我想打篮球<br> <i class="iconfont icon-zhaopingangwei"
											style="color: #5FB878;"></i> 项目负责人：三井<br> <i
											class="iconfont icon-suggestion" style="color: #5FB878;"></i>
										项目内容：安西教练，我想打篮球555<br> <i
											class="iconfont icon-lunkuohua2_yonghu"
											style="color: #5FB878;"></i> 项目成员：安西教练、三井寿<br> <i
											class="iconfont icon-shijian" style="color: #5FB878;"></i>
										起始时间：2019-08-07<br> <i
											class="iconfont icon-jiezhishijian" style="color: #5FB878;"></i>
										结束时间：2021-04-20（预计）<br> <a href="#"
											style="margin-left: 80%"> 查看详细</a>

									</div>
								</div>
							</div>
						</div>
					</div>


					<!-- 添加项目 -->
					<div class="layui-tab-item " id="item-TJXM" style="display: none;">
						添加项目</div>


					<div class="layui-tab-item " id="item-NMPJ" style="display: none;">
						年末评价</div>


					<div class="layui-tab-item " id="item-ZDSJ" style="display: none;">
						重大事件评价</div>
						
						
				</div>
			</div>

			<%@ include file="lly-footer.jsp"%>
		</div>
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

			var active = {
				tabXMXX : function() {
					element.tabChange('demo', 'XMXX');
				},
				tabTJXM : function() {
					if ($("#item-TJXM")[0].style.display == "") {
					} else {
						element.tabAdd('demo', {
							title : '添加项目',
							id : 'TJXM'
						});
						$("#item-TJXM")[0].style.display = ""
					}
					element.tabChange('demo', 'TJXM');
				},
				tabNMPJ : function() {
					if ($("#item-NMPJ")[0].style.display == "") {
					} else {
						element.tabAdd('demo', {
							title : '年末评价',
							id : 'NMPJ'
						});
						$("#item-NMPJ")[0].style.display = ""
					}
					element.tabChange('demo', 'NMPJ');
				},
				tabZDSJ : function() {
					if ($("#item-ZDSJ")[0].style.display == "") {
					} else {
						element.tabAdd('demo', {
							title : '重大事件评价',
							id : 'ZDSJ'
						});
						$("#item-ZDSJ")[0].style.display = ""
					}
					element.tabChange('demo', 'ZDSJ');
				},
			};

			$('.site-demo-active').on('click', function() {
				var othis = $(this), type = othis.data('type');
				active[type] ? active[type].call(this, othis) : '';
			});

			//Hash地址的定位
			var layid = location.hash.replace(/^#demo=/, '');
			element.tabChange('demo', layid);

			element.on('tab(demo)', function(elem) {
				location.hash = 'demo=' + $(this).attr('lay-id');
			});

		});
	</script>
</body>
</html>
