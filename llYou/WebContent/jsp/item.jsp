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

<link rel="stylesheet" href="../js/selection/xlselection.css" />
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

.xzk{
width:380px;
}

.citylist2 {
	box-shadow: 0px 5px 5px #ccc;;
	font-size: 14px;
	color: #666;
	padding: 10px 20px;
	position: absolute;
	top:20;
    left:0;
    z-index:10;
	background: #fff;
	border-bottom: 1px solid #f6f6f6;
	display: none;
}
.citylist2 .leibie {
	width: 50px;
	float: left;
	line-height: 40px;
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



<%@ include file="bootstrap.jsp"%>
<body>
	<div style="padding: 20px; background-color: #ffffff;">

		<div class="layui-row layui-col-space15">
			<div class="layui-col-md2">
				<div class="selectbox">
					<a type="button" class="layui-btn layui-btn-normal selemenu" style="background-color:#25a18e"> <i
						class="iconfont icon-jiqiren2"
						style="color: #ffffff; font-size: 22px;"></i> <span
						style="font-size: 18px; color: #ffffff;">智能筛选</span>
					</a>
					<div class="citylist2">
						<div class="xzk" style="line-height: 45px;">
							<div style="display: inline-block;">
								<svg class="icon" aria-hidden="true" style="font-size: 8px;">
							   			<use xlink:href="#icon-jiqiren"></use>
									</svg>
							</div>
							<div style="display: inline-block;">
								<span style="color: #3f81c1; font-size: 16px;">请选择筛选条件</span> <a
									href="#" class="layui-btn layui-btn-sm layui-btn-normal"
									style="margin-left: 160px; background-color:#25a18e;">提交筛选</a>
							</div>
						</div>
						<div class="xzk">
							<div class="leibie">
								<span>性格</span>
							</div>
							<ul class="shangquan">
								
								<li><input type="checkbox"
									style="display: inline-block; margin:0px -3px 3px 5px;"> <label
									class="form-check-label"
									style="color: #777777; display: inline-block">进取性</label></li>
								<li><input type="checkbox"
									style="display: inline-block;  margin:0px -3px 3px 5px;"> <label
									class="form-check-label"
									style="color: #777777; display: inline-block">外向性</label></li>
								<li><input type="checkbox"
									style="display: inline-block; margin:0px -3px 3px 5px;"> <label
									class="form-check-label"
									style="color: #777777; display: inline-block">尽责性</label></li>
								<li><input type="checkbox"
									style="display: inline-block; margin:0px -3px 3px 5px;"> <label
									class="form-check-label"
									style="color: #777777; display: inline-block">宜人性</label></li>
								<li><input type="checkbox"
									style="display: inline-block; margin:0px -3px 3px 5px;"> <label
									class="form-check-label"
									style="color: #777777; display: inline-block">情绪性</label></li>
							</ul>							
						</div>
						<div class="xzk">
							<div class="leibie">
								<span>驱动力</span>
							</div>
							<ul class="shangquan">
								<li><input type="checkbox"
									style="display: inline-block;margin:0px -3px 3px 5px;"> <label
									class="form-check-label"
									style="color: #777777; display: inline-block">奖励</label></li>
								<li><input type="checkbox"
									style="display: inline-block; margin:0px -3px 3px 5px;"> <label
									class="form-check-label"
									style="color: #777777; display: inline-block">亲和</label></li>
								<li><input type="checkbox"
									style="display: inline-block; margin:0px -3px 3px 5px;"> <label
									class="form-check-label"
									style="color: #777777; display: inline-block">影响力</label></li>
								<li><input type="checkbox"
									style="display: inline-block;margin:0px -3px 3px 5px;"> <label
									class="form-check-label"
									style="color: #777777; display: inline-block">成就</label></li>
							</ul>
						</div>
					</div>
					
				</div>
			</div>
		</div>

	</div>
	
	
	<div id="jl1" class="item item--mod layui-col-md6">
		<div>
			<fieldset class="layui-elem-field">
				<legend>求职意向</legend>
				<div class="layui-field-box">软件行业-Java算法工程师</div>
			</fieldset>
			<fieldset class="layui-elem-field">
				<legend>个人主页</legend>
				<div class="layui-field-box">
					GitHub：https://github.com/ZUFEcsc<br>
					CSDN：https://blog.csdn.net/qq_44702847?type=blog
				</div>
			</fieldset>
			<fieldset class="layui-elem-field">
				<legend>自我评价</legend>
				<div class="layui-field-box">
					热爱互联网行业，关注行业动态，抗压能力强学习能力强<br> 对新技术充满好奇、不断探索提高<br>
					工作态度认真负责，具有团队合作精神
				</div>
			</fieldset>

		</div>
	</div>

	<script src="../res/layui/layui.js"></script>
	<script>
		//注意进度条依赖 element 模块，否则无法进行正常渲染和功能性操作
		layui.use('element', function() {
			var element = layui.element;
		});
	</script>



	<!-- 下拉框 -->
	<script>
		$(".selemenu").click(
				function() {
					$(this).next().slideToggle();
					$(this).parents().siblings().find(".citylist,.citylist2")
							.slideUp();
				})

		$(function() {
			$(document).not($(".selectbox")).click(function() {
				$(".citylist,.citylist2").slideUp();
			})
			$(".selectbox").click(function(event) {
				event.stopPropagation();
			})
		})
	</script>




	<!-- 评分 -->
	<script type="text/javascript">
		$('#nlstar').raty({
			half : true,
			path : '../icon/',
			score : 4,
		});
		$('#xlstar').raty({
			half : true,
			path : '../icon/',
			score : 4,
		});
		$('#gtstar').raty({
			half : true,
			path : '../icon/',
			score : 4,
		});
		$('#jystar').raty({
			half : true,
			path : '../icon/',
			score : 4,
		});
		$('#zystar').raty({
			half : true,
			path : '../icon/',
			score : 4,
		});
		$('#ppstar').raty({
			half : true,
			path : '../icon/',
			score : 4,
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