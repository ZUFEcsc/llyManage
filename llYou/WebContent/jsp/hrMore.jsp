<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%><!DOCTYPE html>
<html>
<head>
<%@ include file="bootstrap.jsp"%>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>HR_个人档案</title>

<link rel="stylesheet" href="../res/layui/css/layui.css">

<link rel="stylesheet" href="../js/selection/xlselection.css" />

<style>
* {
	margin: 0;
	padding: 0;
}

tbody tr td {
	line-height: 30px;
}

tbody tr th {
	line-height: 30px;
	color: #FF5722;
}

.header {
	text-align: center;
	line-height: 30px
}

.item {
	padding: 1em;
	background: #eee;
	display: none;
	position: relative;
	-webkit-box-shadow: 0px 0px 15px 0px rgba(0, 0, 0, 0.15);
	-moz-box-shadow: 0px 0px 15px 0px rgba(0, 0, 0, 0.15);
	box-shadow: 0px 0px 15px 0px rgba(0, 0, 0, 0.15);
	border-radius: 3px;
	color: #000;
}

.item-close {
	cursor: pointer;
	right: 5px;
	top: 5px;
	position: absolute;
	background: #222;
	color: #fff;
	border-radius: 100%;
	font-size: 14px;
	height: 24px;
	line-height: 22px;
	text-align: center;
	width: 24px;
}

.container {
	margin: 150px auto;
	max-width: 960px;
	text-align: center;
}

.xzk {
	width: 380px;
}

.citylist2 {
	box-shadow: 0px 5px 5px #ccc;;
	font-size: 14px;
	color: #666;
	padding: 10px 20px;
	position: absolute;
	top: 20;
	left: 0;
	z-index: 10;
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

<link href="../js/userIntroduction/animate.css" rel="stylesheet" />
<script src="../res/layui/layui.js"></script>
<script src="https://code.highcharts.com.cn/highcharts/highcharts.js"></script>
<script
	src="https://code.highcharts.com.cn/highcharts/modules/exporting.js"></script>
<script
	src="https://code.highcharts.com.cn/highcharts/modules/wordcloud.js"></script>
<script src="https://code.highcharts.com.cn/highcharts/modules/oldie.js"></script>
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/npm/echarts/dist/echarts.min.js"></script>
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/npm/echarts-gl/dist/echarts-gl.min.js"></script>
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/npm/echarts-stat/dist/ecStat.min.js"></script>
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/npm/echarts/dist/extension/dataTool.min.js"></script>

</head>

<body class="">
<%String mac="UptoFirstStepServlet?identity="+"2300003"; %>
	<div class="layui-layout layui-layout-admin">

		<%@ include file="enterprise-header.jsp"%>
		<div class="layui-layout-body">
			<div class="layui-row layui-col-space10 layui-bg-gray"
				style="padding: 5px;">
				<div class="layui-col-md7">
					<div class="layui-card">

						<div class="layui-card-header">
							<strong>基本信息</strong>
						</div>

						<div class="layui-card-body" style="display: inline-block;">


							<div style="display: inline-block; float: left;">
								<img src="../img/head.png"
									style="width: 86%; float: left; padding: 5px 10px;">
							</div>
							<div
								style="display: inline-block; margin: 5px 0px 5px 0px; float: left;">
								<button type="button" class="layui-btn layui-btn-xs"
									style="background-color: #25a18e;">
									<a href=<%=mac %>>通过筛选</a>
								</button>
								<button type="button" class="layui-btn layui-btn-xs"
									style="background-color: #25a18e;">驳回</button>

							</div>

							<div style="float: right; margin-right: 30px;">
								<a href="javascript:findJl();"
									class="layui-btn layui-btn-normal btn2"
									style="background-color: #25a18e;"> <i
									class="iconfont icon-fabu"
									style="color: #fff; font-size: 22px;"></i> 查看简历
								</a>

								<script src="https://www.jq22.com/jquery/jquery-1.10.2.js"></script>
								<script src="../js/userIntroduction/jquery.popup.min.js"></script>
								<script>
									function findJl() {
										$('#jl1').popup({
											time : 1000,
											classAnimateShow : 'slideInUp',
											classAnimateHide : 'fadeOut',
											onPopupClose : function e() {
												// console.log('0')
											},
											onPopupInit : function e() {
												// console.log('1')
											}
										});
									}
								</script>
							</div>

							<div style="display: inline-block; margin: 10px 0px;">
								<table>
									<colgroup>
										<col width="160">
										<col width="310">
									</colgroup>
									<tbody>
										<tr class="uc-tr">
											<td><strong style="color: #2b4f6c;">姓名：</strong><span
												style="color: #777777;">赵子树</span></td>
											<td><strong style="color: #2b4f6c;">民族：</strong><span
												style="color: #777777;">汉族</span></td>
										</tr>
										<tr class="uc-tr">
											<td><strong style="color: #2b4f6c;">性别：</strong><span
												style="color: #777777;">男</span></td>
											<td><strong style="color: #2b4f6c;">年龄：</strong><span
												style="color: #777777;"> 30</span></td>
										</tr>
										<tr class="uc-tr">
											<td><strong style="color: #2b4f6c;">政治面貌： </strong><span
												style="color: #777777;">群众</span></td>
											<td><strong style="color: #2b4f6c;">担任职位：</strong><span
												style="color: #777777;">无</span></td>
										</tr>
										<tr class="uc-tr">
											<td><strong style="color: #2b4f6c;">所属企业：</strong><span
												style="color: #777777;">无</span></td>
											<td><strong style="color: #2b4f6c;">联系邮箱：</strong><span
												style="color: #777777;">87xxx657@163.com</span></td>
										</tr>
									</tbody>
								</table>
							</div>


							<div style="float: right; margin: -40px 50px 0px 0px;">
								<a class="layui-btn-xs" href="#" style="margin: 10px 10px;"
									data-toggle="modal" data-target="#exampleModal"> <i
									class="iconfont icon-ziyuan25"
									style="font-size: 22px; color: #16c2c2;"></i> 申请查看联系方式
								</a>
							</div>



							<!-- Modal -->
							<div class="modal fade" id="exampleModal" tabindex="-1"
								role="dialog" aria-labelledby="exampleModalLabel"
								aria-hidden="true">
								<div class="modal-dialog" role="document">
									<div class="modal-content">
										<div class="modal-header">
											<h5 class="modal-title" id="exampleModalLabel">向赵子树发送查看联系方式的申请</h5>
											<button type="button" class="close" data-dismiss="modal"
												aria-label="Close">
												<span aria-hidden="true">&times;</span>
											</button>
										</div>
										<div class="modal-body">
											提交申请的同时会附带您所在企业的基本信息以及现阶段您的招聘岗位信息，获得用户同意之后可以获取到赵子树的联系方式，包括微信和联系电话等，您确定提交发送吗？
										</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-secondary"
												data-dismiss="modal">取消</button>
											<button data-method="confirmTrans" data-dismiss="modal"
												type="button" class="btn btn-primary" onclick="tcClick()">确定</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="layui-card">
						<div class="layui-card-header">
							<strong>获奖情况</strong>
						</div>
						<div class="layui-card-body" style="display: inline-block;">
							<table>
								<colgroup>
									<col width="100">
									<col>
								</colgroup>
								<tbody>
									<tr class="uc-tr">
										<td><strong style="color: #2b4f6c;"> 2020.12</strong></td>
										<td><span style="color: #777777;">国家级大学生创新创业项目立项</span></td>
									</tr>
									<tr class="uc-tr">
										<td><strong style="color: #2b4f6c;">2020.05</strong></td>
										<td><span style="color: #777777;">第四十四届国际大学生程序设计竞赛亚洲区预赛瞎编站优胜奖</span></td>
									</tr>
									<tr class="uc-tr">
										<td><strong style="color: #2b4f6c;">2019.10</strong></td>
										<td><span style="color: #777777;">第九届大学生服务外包创新创业大赛不知道几等奖</span></td>
									</tr>
									<tr class="uc-tr">
										<td><strong style="color: #2b4f6c;">2018.10</strong></td>
										<td><span style="color: #777777;">数学建模竞赛（美赛）二等奖</span></td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>

				<div class="layui-col-md5">
					<div class="layui-card">
						<div class="layui-card-header">
							<strong>个人分析</strong>
						</div>
						<div class="layui-card-body">
							<div class="layui-col-md2" style="float: left;">
								<div class="selectbox">
									<a type="button" class="layui-btn layui-btn-normal selemenu"
										style="background-color: #25a18e"> <i
										class="iconfont icon-jiqiren2"
										style="color: #ffffff; font-size: 22px;"></i> <span
										style="color: #ffffff;">智能筛选</span>
									</a>
									<div class="citylist2">
										<div class="xzk" style="line-height: 45px;">
											
											<div style="display: inline-block;">
											<img style="display: inline-block;" src="../icon/ai.png"
												width=8%> 
												<span style="color: #3f81c1; font-size: 16px;">请选择筛选条件</span>
												<a href="#" class="layui-btn layui-btn-sm layui-btn-normal"
													style="margin-left: 160px; background-color: #25a18e;" onclick="sxClick()">提交筛选</a>
											</div>
										</div>
										<div class="xzk">
											<div class="leibie">
												<span>性格</span>
											</div>
											<ul class="shangquan">

												<li><input type="checkbox" checked ="checked"
													style="display: inline-block; margin: 0px -3px 3px 5px;">
													<label class="form-check-label"
													style="color: #777777; display: inline-block">进取性</label></li>
												<li><input type="checkbox" checked ="checked"
													style="display: inline-block; margin: 0px -3px 3px 5px;">
													<label class="form-check-label"
													style="color: #777777; display: inline-block">外向性</label></li>
												<li><input type="checkbox" checked ="checked"
													style="display: inline-block; margin: 0px -3px 3px 5px;">
													<label class="form-check-label"
													style="color: #777777; display: inline-block">尽责性</label></li>
												<li><input type="checkbox" checked ="checked"
													style="display: inline-block; margin: 0px -3px 3px 5px;">
													<label class="form-check-label"
													style="color: #777777; display: inline-block">宜人性</label></li>
												<li><input type="checkbox" checked ="checked"
													style="display: inline-block; margin: 0px -3px 3px 5px;">
													<label class="form-check-label"
													style="color: #777777; display: inline-block">情绪性</label></li>
											</ul>
										</div>
										<div class="xzk">
											<div class="leibie">
												<span>驱动力</span>
											</div>
											<ul class="shangquan">
												<li><input type="checkbox" checked ="checked"
													style="display: inline-block; margin: 0px -3px 3px 5px;">
													<label class="form-check-label"
													style="color: #777777; display: inline-block">奖励</label></li>
												<li><input type="checkbox"
													style="display: inline-block; margin: 0px -3px 3px 5px;">
													<label class="form-check-label" checked ="checked"
													style="color: #777777; display: inline-block">亲和</label></li>
												<li><input type="checkbox"
													style="display: inline-block; margin: 0px -3px 3px 5px;">
													<label class="form-check-label" checked ="checked"
													style="color: #777777; display: inline-block">影响力</label></li>
												<li><input type="checkbox"
													style="display: inline-block; margin: 0px -3px 3px 5px;">
													<label class="form-check-label"
													style="color: #777777; display: inline-block">成就</label></li>
											</ul>
										</div>
									</div>
								</div>
							</div>
							
							<div id="xrt"
								style="display: inline-block; width: 100%; height: 335px;"></div>

							<div id="xrt2"
								style="display: none;margin-left:100px;width: 400%; height: 335px;"></div>

						</div>

					</div>
				</div>


				<div class="layui-col-md12">
					<div class="layui-card">
						<div class="layui-card-header">
							<strong> <a id="xlHref" href="#" onclick="xlMsg()"
								style="color: #009345;">学历信息</a> | <a id="jzHref" href="#"
								onclick="jzMsg()" style="color: #777777">就职信息</a>
							</strong>
						</div>

						<div class="layui-card-body">
							<div id="xlCard">
								<div width="49%"
									style="padding-left: 10px; display: inline-block;">
									<table style="margin-bottom: 240px;">
										<colgroup>
											<col width="160">
											<col width="90">
											<col width="170">
											<col width="205">
										</colgroup>
										<tbody>
											<tr class="uc-tr">
												<td><strong style="color: #2b4f6c;">时间</strong></td>
												<td><strong style="color: #2b4f6c;">学历</strong></td>
												<td><strong style="color: #2b4f6c;">毕业院校</strong></td>
												<td><strong style="color: #2b4f6c;">所获荣誉</strong></td>
											</tr>
											<tr class="uc-tr">
												<td><strong style="color: #777777;">2018.09 -
														2020.06</strong></td>
												<td><span style="color: #777777;">本科</span></td>
												<td><span style="color: #777777;">大学生创新创业大学</span></td>
												<td><span style="color: #777777;">电子商务专业前1%</span></td>
											</tr>
											<tr class="uc-tr">
												<td><strong style="color: #777777;">2015.09 -
														2018.06</strong></td>
												<td><span style="color: #777777;">高中</span></td>
												<td><span style="color: #777777;">大学生创新创业高中</span></td>
												<td><span style="color: #777777;">优秀毕业生</span></td>
											</tr>
											<tr class="uc-tr">
												<td><strong style="color: #777777;">2012.09 -
														2015.06</strong></td>
												<td><span style="color: #777777;">初中</span></td>
												<td><span style="color: #777777;">大学生创新创业初中</span></td>
												<td><span style="color: #777777;">三好学生</span></td>
											</tr>
										</tbody>
									</table>
								</div>
								<div width="51%"
									style="padding-left: 10px; display: inline-block;">
									<div class="layui-card-header">
										<strong> 综合能力评价 </strong>
									</div>
									<div id="ability1"
										style="width: 650px; height: 320px; display: inline-block;"></div>
								</div>

							</div>
						</div>


						<div id="jzCard"
							style="display: none; width: 100%; padding-left: 15px; margin-top: -10px;">
							<div class="layui-col-md5" width="49%"
								style="padding-left: 10px; display: inline-block;">
								<table style="margin-bottom: 180px;">
									<colgroup>
										<col width="140">
										<col width="170">
										<col width="125">
										<col width="170">
									</colgroup>
									<tbody>
										<tr class="uc-tr">
											<td><strong style="color: #2b4f6c;">时间</strong></td>
											<td><strong style="color: #2b4f6c;">企业名称</strong></td>

											<td><strong style="color: #2b4f6c;">担任职务</strong></td>
											<td><strong style="color: #2b4f6c;">更多</strong></td>
										</tr>

										<tr class="uc-tr">
											<td><strong style="color: #777777;">2020.06 -
													2020.09</strong></td>
											<td><span style="color: #777777;">深圳腾腾有限公司</span></td>
											<td><span style="color: #777777;">UI设计师</span></td>
											<td><a class="layui-btn-xs"
												href="enterpriseEvaluate.jsp"> <i
													class="iconfont icon-ziyuan25"
													style="font-size: 22px; color: #16c2c2;"></i> 查看企业评价
											</a></td>
										</tr>
										<tr class="uc-tr">
											<td><strong style="color: #777777;">2018.06 -
													2019.08</strong></td>
											<td><span style="color: #777777;">创新创业大公司</span></td>
											<td><span style="color: #777777;">JAVA算法工程师</span></td>
											<td><a class="layui-btn-xs"
												href="enterpriseEvaluate.jsp"> <i
													class="iconfont icon-ziyuan25"
													style="font-size: 22px; color: #16c2c2;"></i> 查看企业评价
											</a></td>
										</tr>
										<tr class="uc-tr">
											<td><strong style="color: #777777;">2019.06 -
													2019.09</strong></td>
											<td><span style="color: #777777;">导师信息可视化实验室</span></td>
											<td><span style="color: #777777;">数据分析</span></td>
											<td><a class="layui-btn-xs"
												href="enterpriseEvaluate.jsp"> <i
													class="iconfont icon-ziyuan25"
													style="font-size: 22px; color: #16c2c2;"></i> 查看企业评价
											</a></td>
										</tr>

									</tbody>
								</table>
							</div>
							<div class="layui-col-md7"
								style="padding-left: 10px; display: inline-block;">
								<div class="layui-card-header">
									<strong> 综合能力评价 </strong>
								</div>
								<div id="ability2"
									style="width: 650px; height: 320px; display: inline-block;"></div>
							</div>

						</div>

						<script>
							function xlMsg() {
								$("#jzHref").css('color', '#777777');
								$("#xlHref").css('color', '#009345');

								$("#jzCard").css('display', 'none');
								$("#xlCard").css('display', 'inline-block');

							}
							function jzMsg() {
								$("#jzHref").css('color', '#009345');
								$("#xlHref").css('color', '#777777');

								$("#jzCard").css('display', 'inline-block');
								$("#xlCard").css('display', 'none');
							}
						</script>
					</div>
				</div>

				<div id="jl1" class="item item--mod layui-col-md6">
					<fieldset class="layui-elem-field">
						<legend>
							<strong>求职意向</strong>
						</legend>
						<div class="layui-field-box">软件行业-Java算法工程师</div>
					</fieldset>
					<fieldset class="layui-elem-field">
						<legend>
							<strong>个人主页</strong>
						</legend>
						<div class="layui-field-box">
							GitHub：https://github.com/ZUFEcsc<br>
							CSDN：https://blog.csdn.net/qq_44702847?type=blog
						</div>
					</fieldset>
					<fieldset class="layui-elem-field">
						<legend>
							<strong>自我评价</strong>
						</legend>
						<div class="layui-field-box">
							热爱互联网行业，关注行业动态，抗压能力强学习能力强<br> 对新技术充满好奇、不断探索提高<br>
							工作态度认真负责，具有团队合作精神
						</div>
					</fieldset>
					<b class="item-close js-popup-close">x</b>
				</div>
			</div>
		</div>



		<div
			style="position: fixed; width: 100%; bottom: 0; height: 44px; line-height: 44px; text-align: center; background-color: #eee;">

			© 溜溜游团队出品</div>
	</div>

	<script>
		//JavaScript代码区域
		layui.use('element', function() {
			var element = layui.element;
		});

		function tcClick() {
			alert("发送成功！");
		}
		
		function sxClick() {
			$("#xrt").css('display', 'none');
			$("#xrt2").css('display', 'inline-block');
			alert("筛选成功！");
		}
	</script>

	<script>
		$('#myModal').on('shown.bs.modal', function() {
			$('#myInput').trigger('focus')
		})
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

	<!-- 旭日图 -->

	<script>
		var myChart = echarts.init(document.getElementById('xrt2'));

		var option;

		//var colors = [ '#FFAE57', '#FF7853', '#EA5151', '#CC3F57', '#9A2555' ];
		var colors = [ '#74c69d', '#52b788', '#40916c', '#2d6a4f', '#1b4332' ];
		var bgColor = '#fff';

		var itemStyle = {
			star5 : {
				color : colors[0]
			},
			star4 : {
				color : colors[1]
			},
			star3 : {
				color : colors[2]
			},
			star2 : {
				color : colors[3]
			}
		};

		var data = [ {
			name : '性格',
			itemStyle : {
				color : colors[1]
			},
			children : [ {
				name : '进取性',
				children : [ {
					name : '3☆',
					children : [ {
						name : '对抗性'
					}, ]
				} ]
			}, {
				name : '外向性',
				children : [ {
					name : '4☆',
					children : [ {
						name : '社交性'
					} ]
				}, {
					name : '3☆',
					children : [ {
						name : '沟通能力'
					} ]
				} ]
			}, {
				name : '尽责性',
				children : [ {
					name : '4☆',
					children : [ {
						name : '责任感'
					} ]
				}, ]
			}, {
				name : '宜人性',
				children : [ {
					name : '4☆',
					children : [ {
						name : '同理心'
					} ]
				}, ]
			}, {
				name : '情绪性',
				children : [ {
					name : '3☆',
					children : [ {
						name : '敏感'
					} ]
				}, {
					name : '4☆',
					children : [ {
						name : '忧虑'
					} ]
				}, ]
			}, ]
		}, {
			name : '驱动力',
			itemStyle : {
				color : colors[2]
			},
			children : [ {
				name : '影响力',
				children : [ {
					name : '5☆',
					children : [ {
						name : '竞争力'
					} ]
				} ]

			}, {
				name : '亲和',
				children : [ {
					name : '2☆',
					children : [ {
						name : '人际互动'
					} ]
				} ]
			}, {
				name : '奖励',
				children : [ {
					name : '5☆',
					children : [ {
						name : '工作氛围'
					} ]
				}, {
					name : '4☆',
					children : [ {
						name : '薪酬'
					} ]
				} ]
			} ]
		} ];

		for (var j = 0; j < data.length; ++j) {
			var level1 = data[j].children;
			for (var i = 0; i < level1.length; ++i) {
				var block = level1[i].children;
				var bookScore = [];
				var bookScoreId;
				for (var star = 0; star < block.length; ++star) {
					var style = (function(name) {
						switch (name) {
						case '5☆':
							bookScoreId = 0;
							return itemStyle.star5;
						case '4☆':
							bookScoreId = 1;
							return itemStyle.star4;
						case '3☆':
							bookScoreId = 2;
							return itemStyle.star3;
						case '2☆':
							bookScoreId = 3;
							return itemStyle.star2;
						}
					})(block[star].name);

					block[star].label = {
						color : style.color,
						downplay : {
							opacity : 1
						}
					};

					if (block[star].children) {
						style = {
							opacity : 1,
							color : style.color
						};
						block[star].children.forEach(function(book) {
							book.value = 1;
							book.itemStyle = style;

							book.label = {
								color : style.color
							};

							var value = 1;
							if (bookScoreId === 0 || bookScoreId === 3) {
								value = 5;
							}

							if (bookScore[bookScoreId]) {
								bookScore[bookScoreId].value += value;
							} else {
								bookScore[bookScoreId] = {
									color : colors[bookScoreId],
									value : value
								};
							}
						});
					}
				}

				level1[i].itemStyle = {
					color : data[j].itemStyle.color
				};
			}
		}

		option = {
			backgroundColor : bgColor,
			color : colors,
			series : [ {
				type : 'sunburst',
				center : [ '50%', '48%' ],
				data : data,
				sort : function(a, b) {
					if (a.depth === 1) {
						return b.getValue() - a.getValue();
					} else {
						return a.dataIndex - b.dataIndex;
					}
				},
				label : {
					rotate : 'radial',
					color : bgColor
				},
				itemStyle : {
					borderColor : bgColor,
					borderWidth : 2
				},
				levels : [ {}, {
					r0 : 0,
					r : 40,
					label : {
						rotate : 0
					}
				}, {
					r0 : 40,
					r : 95
				}, {
					r0 : 95,
					r : 120,
					itemStyle : {
						shadowBlur : 2,
						shadowColor : colors[2],
						color : 'transparent'
					},
					label : {
						rotate : 'tangential',
						fontSize : 10,
						color : colors[0]
					}
				}, {
					r0 : 120,
					r : 125,
					itemStyle : {
						shadowBlur : 0,
						shadowColor : colors[0]
					},
					label : {
						position : 'outside',
						textShadowBlur : 0,
						textShadowColor : '#333'
					},
					downplay : {
						label : {
							opacity : 1
						}
					}
				} ]
			} ]
		};

		option && myChart.setOption(option);
	</script>

	<script type="text/javascript">
		var myChart = echarts.init(document.getElementById('xrt'));

		var option;

		//var colors = [ '#FFAE57', '#FF7853', '#EA5151', '#CC3F57', '#9A2555' ];
		var colors = [ '#74c69d', '#52b788', '#40916c', '#2d6a4f', '#1b4332' ];
		var bgColor = '#fff';

		var itemStyle = {
			star5 : {
				color : colors[0]
			},
			star4 : {
				color : colors[1]
			},
			star3 : {
				color : colors[2]
			},
			star2 : {
				color : colors[3]
			}
		};

		var data = [ {
			name : '性格',
			itemStyle : {
				color : colors[1]
			},
			children : [ {
				name : '进取性',
				children : [ {
					name : '5☆',
					children : [ {
						name : '独立性',
					} ]
				}, {
					name : '3☆',
					children : [ {
						name : '对抗性'
					}, ]
				} ]
			}, {
				name : '外向性',
				children : [ {
					name : '5☆',
					children : [ {
						name : '活力'
					} ]
				}, {
					name : '4☆',
					children : [ {
						name : '社交性'
					} ]
				}, {
					name : '3☆',
					children : [ {
						name : '沟通能力'
					} ]
				} ]
			}, {
				name : '尽责性',
				children : [ {
					name : '5☆',
					children : [ {
						name : '条理性'
					} ]
				}, {
					name : '4☆',
					children : [ {
						name : '责任感'
					} ]
				}, ]
			}, {
				name : '宜人性',
				children : [ {
					name : '5☆',
					children : [ {
						name : '利他性'
					} ]
				}, {
					name : '4☆',
					children : [ {
						name : '信任'
					}, {
						name : '同理心'
					} ]
				}, ]
			}, {
				name : '情绪性',
				children : [ {
					name : '3☆',
					children : [ {
						name : '敏感'
					} ]
				}, {
					name : '4☆',
					children : [ {
						name : '焦虑'
					}, {
						name : '忧虑'
					} ]
				}, ]
			}, ]
		}, {
			name : '驱动力',
			itemStyle : {
				color : colors[2]
			},
			children : [ {
				name : '成就',
				children : [ {
					name : '4☆',
					children : [ {
						name : '积极性'
					}, {
						name : '多样性'
					} ]
				}, {
					name : '3☆',
					children : [ {
						name : '已获成就'
					} ]
				} ]
			}, {
				name : '影响力',
				children : [ {
					name : '5☆',
					children : [ {
						name : '竞争力'
					}, {
						name : '面对客户'
					} ]
				}, {
					name : '3☆',
					children : [ {
						name : '权力向导'
					} ]
				} ]

			}, {
				name : '亲和',
				children : [ {
					name : '5☆',
					children : [ {
						name : '获得认同'
					} ]
				}, {
					name : '4☆',
					children : [ {
						name : '关心他人'
					} ]
				}, {
					name : '2☆',
					children : [ {
						name : '人际互动'
					} ]
				} ]
			}, {
				name : '奖励',
				children : [ {
					name : '5☆',
					children : [ {
						name : '工作氛围'
					} ]
				}, {
					name : '4☆',
					children : [ {
						name : '灵活性'
					}, {
						name : '独立'
					}, {
						name : '薪酬'
					} ]
				} ]
			} ]
		} ];

		for (var j = 0; j < data.length; ++j) {
			var level1 = data[j].children;
			for (var i = 0; i < level1.length; ++i) {
				var block = level1[i].children;
				var bookScore = [];
				var bookScoreId;
				for (var star = 0; star < block.length; ++star) {
					var style = (function(name) {
						switch (name) {
						case '5☆':
							bookScoreId = 0;
							return itemStyle.star5;
						case '4☆':
							bookScoreId = 1;
							return itemStyle.star4;
						case '3☆':
							bookScoreId = 2;
							return itemStyle.star3;
						case '2☆':
							bookScoreId = 3;
							return itemStyle.star2;
						}
					})(block[star].name);

					block[star].label = {
						color : style.color,
						downplay : {
							opacity : 1
						}
					};

					if (block[star].children) {
						style = {
							opacity : 1,
							color : style.color
						};
						block[star].children.forEach(function(book) {
							book.value = 1;
							book.itemStyle = style;

							book.label = {
								color : style.color
							};

							var value = 1;
							if (bookScoreId === 0 || bookScoreId === 3) {
								value = 5;
							}

							if (bookScore[bookScoreId]) {
								bookScore[bookScoreId].value += value;
							} else {
								bookScore[bookScoreId] = {
									color : colors[bookScoreId],
									value : value
								};
							}
						});
					}
				}

				level1[i].itemStyle = {
					color : data[j].itemStyle.color
				};
			}
		}

		option = {
			backgroundColor : bgColor,
			color : colors,
			series : [ {
				type : 'sunburst',
				center : [ '50%', '48%' ],
				data : data,
				sort : function(a, b) {
					if (a.depth === 1) {
						return b.getValue() - a.getValue();
					} else {
						return a.dataIndex - b.dataIndex;
					}
				},
				label : {
					rotate : 'radial',
					color : bgColor
				},
				itemStyle : {
					borderColor : bgColor,
					borderWidth : 2
				},
				levels : [ {}, {
					r0 : 0,
					r : 40,
					label : {
						rotate : 0
					}
				}, {
					r0 : 40,
					r : 95
				}, {
					r0 : 95,
					r : 120,
					itemStyle : {
						shadowBlur : 2,
						shadowColor : colors[2],
						color : 'transparent'
					},
					label : {
						rotate : 'tangential',
						fontSize : 10,
						color : colors[0]
					}
				}, {
					r0 : 120,
					r : 125,
					itemStyle : {
						shadowBlur : 0,
						shadowColor : colors[0]
					},
					label : {
						position : 'outside',
						textShadowBlur : 0,
						textShadowColor : '#333'
					},
					downplay : {
						label : {
							opacity : 1
						}
					}
				} ]
			} ]
		};

		option && myChart.setOption(option);
	</script>


	<!-- 象形条形图 -->
	<script type="text/javascript">
		var dom = document.getElementById("ability1");
		var myChart = echarts.init(dom);
		var app = {};
		var spirit = 'image://data:https://echarts.apache.org/examples/image/png;base64,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';

		var maxData = 10;

		option = {
			title : {
				show : false,
				text : "综合能力评价",
				x : 'center',
				y : 'top',
				padding : 10,
				textStyle : {//主标题文本样式{"fontSize": 18,"fontWeight": "bolder","color": "#333"}
					fontFamily : 'Arial',
					fontSize : 18,
					fontStyle : 'normal',
					fontWeight : 'bold',
				},
			},
			tooltip : {},
			xAxis : {
				max : maxData,
				splitLine : {
					show : false
				},
				offset : 10,
				axisLine : {
					lineStyle : {
						color : '#999'
					}
				},
				axisLabel : {
					margin : 8
				},
				show : false
			},
			yAxis : {
				data : [ '执行能力', '学习能力', '领导能力', '服务意识', '发展潜力', '人际能力', '驱动能力' ],
				inverse : true,
				axisTick : {
					show : false
				},
				axisLine : {
					show : false
				},
				axisLabel : {
					margin : 20,
					color : '#000',
					fontSize : 14
				}
			},
			grid : {
				top : 'center',
				height : 280,
				left : 100,
				right : 80
			},
			series : [
					{
						// current data
						type : 'pictorialBar',
						symbol : spirit,
						symbolRepeat : 'fixed',
						symbolMargin : '20%',
						symbolClip : true,
						symbolSize : 28,
						symbolBoundingData : maxData,
						data : [ 8, 7, 6, 5, 6, 5, 6 ],
						markLine : {
							symbol : 'none',
							label : {
								formatter : 'max: {c}',
								position : 'start'
							},
							lineStyle : {
								color : 'green',
								type : 'dotted',
								opacity : 0.2,
								width : 2
							},
							data : [ {
								type : 'max'
							} ]
						},
						z : 10
					},
					{
						// full data
						type : 'pictorialBar',

						label : {
							show : true,
							formatter : function(params) {
								return (params.value / maxData * 100)
										.toFixed(1)
										+ ' %';
							},
							position : 'right',
							offset : [ 10, 0 ],
							color : 'green',
							fontSize : 18
						},
						itemStyle : {
							normal : {
								opacity : 0.4
							}
						},
						animationDuration : 0,
						symbolRepeat : 'fixed',
						symbolMargin : '20%',
						symbol : spirit,
						symbolSize : 28,
						symbolBoundingData : maxData,
						data : [ 8, 7, 6, 5, 6, 5, 6 ],
						z : 5
					} ]
		};
		myChart.setOption(option);
	</script>

	<!-- 象形条形图 2-->
	<script type="text/javascript">
		var dom = document.getElementById("ability2");
		var myChart = echarts.init(dom);
		var app = {};
		var spirit = 'image://data:https://echarts.apache.org/examples/image/png;base64,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';

		var maxData = 10;

		option = {
			title : {
				show : false,
				text : "综合能力评价",
				x : 'center',
				y : 'top',
				padding : 10,
				textStyle : {//主标题文本样式{"fontSize": 18,"fontWeight": "bolder","color": "#333"}
					fontFamily : 'Arial',
					fontSize : 18,
					fontStyle : 'normal',
					fontWeight : 'bold',
				},
			},
			tooltip : {},
			xAxis : {
				max : maxData,
				splitLine : {
					show : false
				},
				offset : 10,
				axisLine : {
					lineStyle : {
						color : '#999'
					}
				},
				axisLabel : {
					margin : 8
				},
				show : false
			},
			yAxis : {
				data : [ '专业技能', '学历水平', '工作能力', '领导能力', '协调能力', '工作效率', '发展潜力' ],
				inverse : true,
				axisTick : {
					show : false
				},
				axisLine : {
					show : false
				},
				axisLabel : {
					margin : 20,
					color : '#000',
					fontSize : 14
				}
			},
			grid : {
				top : 'center',
				height : 280,
				left : 100,
				right : 80
			},
			series : [
					{
						// current data
						type : 'pictorialBar',
						symbol : spirit,
						symbolRepeat : 'fixed',
						symbolMargin : '20%',
						symbolClip : true,
						symbolSize : 28,
						symbolBoundingData : maxData,
						data : [ 8, 7, 6, 5, 6, 5, 6 ],
						markLine : {
							symbol : 'none',
							label : {
								formatter : 'max: {c}',
								position : 'start'
							},
							lineStyle : {
								color : 'green',
								type : 'dotted',
								opacity : 0.2,
								width : 2
							},
							data : [ {
								type : 'max'
							} ]
						},
						z : 10
					},
					{
						// full data
						type : 'pictorialBar',

						label : {
							show : true,
							formatter : function(params) {
								return (params.value / maxData * 100)
										.toFixed(1)
										+ ' %';
							},
							position : 'right',
							offset : [ 10, 0 ],
							color : 'green',
							fontSize : 18
						},
						itemStyle : {
							normal : {
								opacity : 0.4
							}
						},
						animationDuration : 0,
						symbolRepeat : 'fixed',
						symbolMargin : '20%',
						symbol : spirit,
						symbolSize : 28,
						symbolBoundingData : maxData,
						data : [ 8, 7, 6, 5, 6, 5, 6 ],
						z : 5
					} ]
		};
		myChart.setOption(option);
	</script>
</body>
</html>
