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

					<!-- 
						<div class="selemediv">
							<div class="selemenu">
								<span class="sqinput">
								</span>
							</div>				
						</div>-->

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
									style="margin-left: 70px; background-color:#25a18e;">提交筛选</a>
							</div>
						</div>

						<div class="xzk">
							<div class="leibie">
								<input type="checkbox"
									style="display: inline-block; margin-bottom: 3px;"> <label
									class="form-check-label"
									style="color: #777777; display: inline-block">性别</label>

							</div>
							<ul class="shangquan">
								<li><select class="form-control form-control-sm"
									style="display: inline-block;">
										<option selected disabled style="display: none;" value="">请选择性别</option>
										<option>男</option>
										<option>女</option>
								</select></li>
							</ul>
						</div>

						<div class="xzk">
							<div class="leibie">
								<input type="checkbox"
									style="display: inline-block; margin-bottom: 3px;"> <label
									class="form-check-label"
									style="color: #777777; display: inline-block">年龄</label>

							</div>
							<ul class="shangquan" style="display: inline-block; width: 200px">
								<li>
									<div style="display: inline-block;">
										<input class="form-control form-control-sm"
											style="display: inline-block; width: 20%;" type="text"
											placeholder="23"><span> - </span> <input
											class="form-control form-control-sm"
											style="display: inline-block; width: 20%;" type="text"
											placeholder="25"><span> 岁</span>
									</div>
								</li>
							</ul>
						</div>

						<div class="xzk">
							<div class="leibie">
								<input type="checkbox"
									style="display: inline-block; margin-bottom: 3px;"> <label
									class="form-check-label"
									style="color: #777777; display: inline-block">最低学历</label>

							</div>
							<ul class="shangquan">
								<li><select class="form-control form-control-sm"
									style="display: inline-block;">
										<option selected disabled style="display: none;" value="">请选择最低学历</option>
										<option>高中</option>
										<option>本科</option>
								</select></li>
							</ul>
						</div>

						<div class="xzk">
							<div class="leibie">
								<input type="checkbox"
									style="display: inline-block; margin-bottom: 3px;"> <label
									class="form-check-label"
									style="color: #777777; display: inline-block">工作能力</label>

							</div>
							<ul class="shangquan">
								<li>
									<div id="nlstar" class="star" style="display: inline-block;"></div>
								</li>
							</ul>
						</div>

						<div class="xzk">
							<div class="leibie">
								<input type="checkbox"
									style="display: inline-block; margin-bottom: 3px;"> <span
									style="color: #777777;">工作效率</span>
							</div>
							<ul class="shangquan">
								<li>
									<div id="xlstar" class="star" style="display: inline-block;"></div>
								</li>
							</ul>
						</div>

						<div class="xzk">
							<div class="leibie">
								<input type="checkbox"
									style="display: inline-block; margin-bottom: 3px;"> <span
									style="color: #777777;">沟通能力</span>
							</div>
							<ul class="shangquan">
								<li>
									<div id="gtstar" class="star" style="display: inline-block;"></div>
								</li>
							</ul>
						</div>

						<div class="xzk">
							<div class="leibie">
								<input type="checkbox"
									style="display: inline-block; margin-bottom: 3px;"> <span
									style="color: #777777;">工作经验</span>
							</div>
							<ul class="shangquan">
								<li>
									<div id="jystar" class="star" style="display: inline-block;"></div>
								</li>
							</ul>
						</div>

						<div class="xzk">
							<div class="leibie">
								<input type="checkbox"
									style="display: inline-block; margin-bottom: 3px;"> <span
									style="color: #777777;">专业技能</span>
							</div>
							<ul class="shangquan">
								<li>
									<div id="zystar" class="star" style="display: inline-block;"></div>
								</li>
							</ul>
						</div>

						<div class="xzk">
							<div class="leibie">
								<input type="checkbox"
									style="display: inline-block; margin-bottom: 3px;"> <span
									style="color: #777777;">匹配程度</span>
							</div>
							<ul class="shangquan">
								<li>
									<div id="ppstar" class="star" style="display: inline-block;"></div>
								</li>
							</ul>
						</div>


						<div class="xzk">
							<div class="leibie">
								<input type="checkbox"
									style="display: inline-block; margin-bottom: 3px;"> <label
									class="form-check-label"
									style="color: #777777; display: inline-block">过往标签</label>

							</div>
							<ul class="shangquan" style="width: 200px">
								<li><span class="layui-badge layui-bg-orange">亲和待人</span> <span
									class="layui-badge layui-bg-orange">工作狂魔</span> <span
									class="layui-badge layui-bg-gray">技术大神</span> <span
									class="layui-badge layui-bg-gray">效率之王</span> <span
									class="layui-badge layui-bg-orange">接单大佬</span> <span
									class="layui-badge layui-bg-gray">沟通达人</span></li>
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