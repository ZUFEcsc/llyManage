<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>

<link rel="stylesheet" href="../lib/layui/css/layui.css" />
<script src="../lib/layui/layui.js"></script>
<link rel="stylesheet" href="../js/steps/steps.css" />
<link rel="stylesheet" href="../js/introduction/personaljl.css" />
<script src="../js/jquery-3.4.1.min.js"></script>

<style type="text/css">
.invoicebtn {
	display: none;
}

.layui-tab-item blockquote {
	background-color: #FEFAE7;
}

.layui-form-label {
	width: 115px
}

#transferDialoge .layui-form-item {
	line-height: 38px;
}

#transferDialoge .layui-form-item .layui-input-inline {
	width: 115px;
}
</style>

<link rel="stylesheet" href="../res/layui/css/layui.css">
<style type="text/css">
.icon {
	width: 3em;
	height: 3em;
	vertical-align: -0.15em;
	fill: currentColor;
	overflow: hidden;
}
</style>
</head>


<!-- 步骤条 -->

<%@ include file="bootstrap.jsp"%>
<body>
	<div class="site-demo-button" id="layerDemo"
		style="margin-bottom: 0; float: right; margin-left: 10px;">

		<button type="button" class="layui-btn  layui-btn-normal"
			data-method="notice" style="font-size: 18px; line-height: 18px;">
			<i class="iconfont icon-jiqiren2"
				style="color: #ffffff; font-size: 22px;"></i> <span
				style="font-size: 18px;">智能筛选</span>
		</button>
	</div>



	<div style="padding: 20px; background-color: #ffffff;">

		<div class="layui-row layui-col-space15">
			<div class="layui-col-md4">
				<div class="single-member effect-3">
					<div class="member-image">
						<img src="../img/person/p1.jpg" alt="Member">
					</div>
					<div class="member-info">
						<h3 style="margin-bottom: 14px;">未命名简历</h3>
						<h5>应聘岗位：JAVA工程师</h5>
						<div style="text-align:left;">
						<small style="color:#2b4f6c;">已投岗位：</small><br>
						<small class="gwS">字节跳动 - 算法工程师（远程实习）.</small><br> <small class="gwS">滴滴出行
							- 视觉深度学习算法工程师.</small><br> 
						<a class="layui-btn" style="margin-top:10px;padding: 0 100px;background-color: 009688;font-size: 16px;" href="#">查 看 详 情</a>
						
						</div>
						
					</div>
				</div>
			</div>
			<div class="layui-col-md6">
				<div class="layui-card">
					<blockquote class="layui-elem-quote">
						<strong>字节跳动</strong> <span> 部门主管</span><br> <small
							style="color: #8d8d8d;"> 本次投递已被企业处理，简历不可修改</small>
					</blockquote>

					<div class="layui-card-body">

						<div id="steps"></div>
					</div>
				</div>

			</div>
		</div>
	</div>
	<div class="layui-col-md2">
		<div class="layui-card">
			<div class="layui-card-header">
				<div style="display: inline-block;">
					<svg class="icon" aria-hidden="true" style="font-size: 6px;">
			   			<use xlink:href="#icon-jiqiren"></use>
					</svg>
				</div>
				<div style="display: inline-block;">请选择筛选条件</div>
			</div>
			<div class="layui-card-body">


				<div class="layui-form-item">

					<div style="margin-bottom: 5px;">
						<span style="color: #777777; padding-right: 10px;">喜爱程度</span>
						<div id="star" class="star" style="display: inline-block;"></div>
					</div>

					<div id="star" data-score="1"></div>

					<div class="form-group form-check"></div>
				</div>



			</div>
		</div>
	</div>

	<script src="../res/layui/layui.js"></script>
	<script>
		//注意进度条依赖 element 模块，否则无法进行正常渲染和功能性操作
		layui.use('element', function() {
			var element = layui.element;
		});
	</script>

	<!-- 步骤条 -->
	<script>
		layui.config({
			base : '../js/steps/',

		}).use('steps');
		layui.use([ 'table', 'form', 'jquery', 'laypage', 'element', 'layer',
				'steps' ], function() {
			var $ = layui.jquery, steps = layui.steps;

			var data = [ {
				'title' : "投递简历",
				"desc" : "2021-03-23"
			}, {
				'title' : "简历初选",
				"desc" : "2021-03-24"
			}, {
				'title' : "一轮面试",
				"desc" : "2021-03-28"
			}, {
				'title' : "二轮面试",
				"desc" : "暂定"
			}, ];

			rendersteps(2); //现在的步骤是0
			function rendersteps(step) {
				steps.render(data, '#steps', step);
			}
		});
	</script>

	<!-- 评分 -->
	<script type="text/javascript">
		$('#star').raty({

			half : true,
			path : '../icon/',
		});
	</script>



	<!-- 弹出框 -->
	<script>
		layui
				.use(
						'layer',
						function() { //独立版的layer无需执行这一句
							var $ = layui.jquery, layer = layui.layer; //独立版的layer无需执行这一句

							//触发事件
							var active = {
								notice : function() {
									//示范一个公告层
									layer
											.open({
												type : 1,
												title : false //不显示标题栏
												,
												closeBtn : false,
												area : '300px;',
												shade : 0.8,
												id : 'LAY_layuipro' //设定一个id，防止重复弹出
												,
												btn : [ '火速围观', '残忍拒绝' ],
												btnAlign : 'c',
												moveType : 1 //拖拽模式，0或者1
												,
												content : '<div class="layui-col-md"><div class="layui-card"><div class="layui-card-header"><svg class="icon" aria-hidden="true" style="font-size: 6px;"><use xlink:href="#icon-jiqiren"></use></div><div  style="display: inline-block;">请选择筛选条件</div></div><div class="layui-card-body"><div class="layui-form-item"><div style="margin-bottom: 5px;"><span style="color: #777777; padding-right: 10px;">喜爱程度</span><div id="star" class="star" style="display: inline-block;"></div></div><div id="star" data-score="1"></div><div class="form-group form-check"></div></div></div></div></div>',
												success : function(layero) {
													$('#star').raty({

														half : true,
														path : '../icon/',
													});

													var btn = layero
															.find('.layui-layer-btn');
													btn
															.find(
																	'.layui-layer-btn0')
															.attr(
																	{
																		href : 'http://www.layui.com/',
																		target : '_blank'
																	});
												}
											});
								}
							};

							$('#layerDemo .layui-btn').on(
									'click',
									function() {
										var othis = $(this), method = othis
												.data('method');
										active[method] ? active[method].call(
												this, othis) : '';
									});

						});
	</script>
</body>
</html>