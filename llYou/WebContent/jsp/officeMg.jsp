<%@ page language="java" import="java.util.*,dao.*,bean.*"
	contentType="text/html; charset=utf-8" pageEncoding="utf-8"%><!DOCTYPE html>

<html>
<head>
<%@ include file="bootstrap.jsp"%>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<style>
#first {
	width: 50%;
	height: 350px;
	padding: 10px;
	border: 1px solid #aaaaaa;
	float: left;
	height: 350px;
}

#second {
	width: 50%;
	height: 350px;
	padding: 10px;
	border: 1px solid #aaaaaa;
	float: left;
	height: 350px;
}

.layui-timeline-item {
	height: 55px;
}

.layui-timeline-item i {
	font-size: 25px;
}

.layui-nav-child dd a {
	margin-left: 30px;
}

tbody tr td {
	line-height: 30px;
}

tbody tr th {
	line-height: 30px;
	color: #FF5722;
}
</style>
<title>办公室主任页面</title>
<link rel="stylesheet" href="../res/layui/css/layui.css">
</head>
<body class="layui-layout-body">
	<div class="layui-layout layui-layout-admin">
		<%@ include file="lly-header.jsp"%>
		<div class="layui-side layui-bg-black">
			<div class="layui-side-scroll">
				<!-- 左侧导航区域（可配合layui已有的垂直导航） -->
				<div style="margin: 10px 35px;">
					<div class="userCard-img"
						style="display: inline-block; padding-right: 5px;">
						<img src="../img/avatar.png"
							style="border-radius: 50% !important; width: 42px; margin-bottom: 10px;">
					</div>
					<div class="userCard-text" style="display: inline-block;">
						<h5 style="padding-bottom: 4px">陈沈清</h5>
						<span class="layui-badge layui-bg-orange">办公室主任</span>
					</div>
				</div>

				<ul class="layui-nav layui-nav-tree" lay-filter="test">
					<li class="layui-nav-item layui-nav-itemed"><a class=""
						href="javascript:;">考勤管理</a>
						<dl class="layui-nav-child">
							<dd>
								<a href="#" class="site-demo-active" data-url="KQPJ"
									data-id="KQPJ" data-type="tabKQPJ">考勤评价</a>
							</dd>
						</dl></li>
				</ul>
			</div>
		</div>

		<div class="layui-body">
			<!-- 内容主体区域 -->
			<div class="layui-tab layui-tab-brief" lay-filter="demo">
				<ul class="layui-tab-title">
					<li class="layui-this" lay-id="KQPJ">考勤评价 <!--lay-allowclose="true"(div) <i class="layui-icon layui-unselect layui-tab-close">ဆ</i> -->
					</li>
				</ul>
				<div class="layui-tab-content">
					<!-- 考勤评价  -->
					<div class="layui-tab-item layui-show" id="item-KQPJ">
						<div id="first" ondrop="drop(event)" ondragover="allowDrop(event)">
							<div class="layui-card">
								<div class="layui-card-header">
									<i class="iconfont icon-biaoqian1" style="color: #5FB878;"></i>
									把组员头像拖入即可开始评价
								</div>
								<div class="layui-card-body">
									<i class="iconfont icon-lunkuohua2_yonghu"
										style="color: #5FB878;"></i> 职员编号：<br> <i
										class="iconfont icon-xingbie" style="color: #5FB878;"></i>
									职员姓名：<br> <i class="iconfont icon-jiqiren2"
										style="color: #5FB878;"></i> 职员岗位：<br> <i
										class="iconfont icon-zhaopingangwei" style="color: #5FB878;"></i>
									评价时间：<br>
									<i class="iconfont icon-shoujizhengli" style="color: #5FB878;"></i>
									评价内容：<br>
									<div style="display: inline-block;">
										<button type="button" class="layui-btn layui-btn-sm"
											style="background-color: #5FB878;">提交评价</button>


									</div>
									<a href="#"><span
										style="font-size: 12px; line-height: 40px; color: #838383; margin-left: 10px; float: right;">
											更多</span></a> <br>
								</div>
							</div>
						</div>

						<div id="second" ondrop="drop(event)"
							ondragover="allowDrop(event)">
							<img id="drag1" src="../img/avatar.png" ondragstart="drag(event)"
								width="69" style="border-radius: 50% !important;"> <img
								id="drag2" src="../img/avatar.png" ondragstart="drag(event)"
								width="69" style="border-radius: 50% !important;"> <img
								id="drag3" src="../icon/jlc.png" ondragstart="drag(event)"
								width="69" style="border-radius: 50% !important;">
						</div>
					</div>
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
				tabKQPJ : function() {
					element.tabChange('demo', 'KQPJ');
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

	<!-- 拖拽 -->
	<script>
		function allowDrop(e) {
			e.preventDefault();
		}
		function drag(e) {
			e.dataTransfer.setData("img", e.target.id);
		}
		function drop(e) {
			e.preventDefault();
			var Img = e.dataTransfer.getData("img");
			e.target.appendChild(document.getElementById(Img));
		}
	</script>
</body>
</html>
