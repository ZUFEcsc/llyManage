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
	<%
		Date date = new Date();
	%>
	<%
		String msg = (String) request.getAttribute("msg");
	%>
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
						<div class="layui-col-md4"
							style="margin-top: 20px; margin-left: 20px;">
							<div class="layui-card" style="font-size: 1.15rem;">
								<div class="layui-card-header"
									style="background-color: #5FB878;">
									<i class="iconfont icon-jia" style="color: #fff;"></i> <strong
										style="color: #fff; font-size: 1.25rem;">点击组员头像即可开始评价</strong>
								</div>
								<div class="layui-card-body"
									style="margin-top: 20px; margin-left: 20px;">
									<form action="kaoqinEvaluateServlet" method="post">
										<div style="margin-bottom: 10px;">
											<i class="iconfont icon-lunkuohua2_yonghu"
												style="color: #5FB878; font-size: 1.25rem;"></i> <label
												for="exampleInputNumber1"><strong
												style="color: #2b4f6c;">职员编号：</strong></label> <input type="text"
												class="form-control form-control-sm"
												style="display: inline-block; width: 60%;"
												id="exampleInputNumber1" placeholder="SZ001F0001">

										</div>
										<div style="margin-bottom: 10px;">
											<i class="iconfont icon-xingbie"
												style="color: #5FB878; font-size: 1.25rem;"></i> <label
												for="exampleInputName1"><strong
												style="color: #2b4f6c;">职员姓名：</strong></label> <input type="text"
												class="form-control form-control-sm"
												style="display: inline-block; width: 60%;"
												id="exampleInputName1" placeholder="张琪">
										</div>
										<div style="margin-bottom: 10px;">
											<i class="iconfont icon-jiqiren2"
												style="color: #5FB878; font-size: 1.25rem;"></i> <label
												for="exampleInputPosition1"><strong
												style="color: #2b4f6c;">职员岗位：</strong></label> <input type="text"
												class="form-control form-control-sm"
												style="display: inline-block; width: 60%;"
												id="exampleInputPosition1" placeholder="普通员工">
										</div>
										<div style="margin-bottom: 10px;">
											<i class="iconfont icon-zhaopingangwei"
												style="color: #5FB878; font-size: 1.25rem;"></i> <strong
												style="color: #2b4f6c;">评价时间：</strong><span
												style="color: #777777;"><%=date%></span>
										</div>
										<div style="margin-bottom: 10px;">
											<i class="iconfont icon-shoujizhengli"
												style="color: #5FB878; font-size: 1.25rem;"></i> <strong
												style="color: #2b4f6c;">评价内容：</strong>
										</div>
										<div class="layui-panel">
											<div
												style="padding: 0px 0px 0px 120px; display: inline-block;">
												<div style="margin-bottom: 10px;">
													<span
														style="color: #777777; display: inline-block; padding-right: 20px;">出勤天数</span>
													<input class="form-control form-control-sm"
														style="display: inline-block; width: 30%;" type="text"
														placeholder="30" name="chuqin"> <span
														style="color: #2b4f6c; display: inline-block; padding-left: 30px;">/
														30天</span>
												</div>
												<div style="margin-bottom: 10px;">
													<span style="color: #777777; padding-right: 20px;">请假天数</span>
													<input class="form-control form-control-sm"
														style="display: inline-block; width: 30%;" type="text"
														placeholder="30" name="qingjia"> <span
														style="color: #2b4f6c; display: inline-block; padding-left: 30px;">/
														30天</span>
												</div>
												<div style="margin-bottom: 10px;">
													<span style="color: #777777; padding-right: 20px;">迟到天数</span>
													<input class="form-control form-control-sm"
														style="display: inline-block; width: 30%;" type="text"
														placeholder="30" name="chidao"> <span
														style="color: #2b4f6c; display: inline-block; padding-left: 30px;">/
														30天</span>
												</div>

												<div style="margin-bottom: 10px;">
													<span style="color: #777777; padding-right: 20px;">早退天数</span>
													<input class="form-control form-control-sm"
														style="display: inline-block; width: 30%;" type="text"
														placeholder="30" name="zaotui"> <span
														style="color: #2b4f6c; display: inline-block; padding-left: 30px;">/
														30天</span>
												</div>

												<div style="margin-bottom: 10px;">
													<span style="color: #777777; padding-right: 20px;">矿工天数</span>
													<input class="form-control form-control-sm"
														style="display: inline-block; width: 30%;" type="text"
														placeholder="30" name="kuanggong"> <span
														style="color: #2b4f6c; display: inline-block; padding-left: 30px;">/
														30天</span>

												</div>
												<div style="margin-bottom: 10px;">
													<span style="color: #777777; padding-right: 48px;">备注</span>
													<input class="form-control form-control-sm"
														style="display: inline-block; width: 55%;" type="text"
														placeholder="请输入备注" name="other">
												</div>

											</div>
										</div>

										<div style="display: inline-block;">
											<button type="submit" class="layui-btn "
												style="background-color: #5FB878;">提交评价</button>

										</div>
										<a href="#"><span
											style="font-size: 12px; line-height: 40px; color: #838383; margin-left: 10px; float: right;">
												更多</span></a> <br>
									</form>
									<%
										if (msg != null) {
									%>
									<%=msg%>
									<%
										}
									%>
								</div>
							</div>
						</div>

						<div class="layui-col-md7"
							style="margin-top: 20px; margin-left: 20px; width: 62%">
							<div class="layui-card">
								<div class="layui-card-header"
									style="background-color: #eb6100;">
									<strong style="color: #fff; font-size: 1.25rem;">待评价组员：</strong>
								</div>
								<div class="layui-card-body"
									style="margin-top: 20px; margin-left: 20px;">
									<div>
										<a href="#" class="layui-btn layui-btn-danger">A组</a> <a
											href="#" class="layui-btn layui-btn-primary">B组</a> <a
											href="#" class="layui-btn layui-btn-primary">C组</a> <a
											href="#" class="layui-btn layui-btn-primary">D组</a>
									</div>
									<div style="margin-top: 25px;">
										<div style="display: inline-block; padding-right: 10px;">
											<img id="drag1" src="../img/avatar.png" width="69"
												style="border-radius: 50% !important; display: block;"
												onclick="pay('11')"> <strong
												style="display: block; color: #101010; margin-left: 21px;">
												张琪</strong>
										</div>

										<div style="display: inline-block; padding: 0 10px;">
											<img id="drag2" src="../img/avatar.png" width="69"
												style="border-radius: 50% !important;" onclick="pay('22')">
											<strong
												style="display: block; color: #101010; margin-left: 21px;">
												张培</strong>
										</div>
										<div style="display: inline-block; padding: 0 10px;">
											<img id="drag3" src="../icon/jlc.png" width="69"
												style="border-radius: 50% !important;" onclick="pay('33')">
											<strong
												style="display: block; color: #101010; margin-left: 21px;">
												王光</strong>
										</div>
									</div>

									<!--  border: solid 1px black; -->
									<div id="calendar"
										style="margin-left: -30px; width: 420px; height: 330px; display: inline-block;"></div>
									<div id="pie1"
										style="margin-right: -15px; width: 375px; height: 330px; display: inline-block;">
									</div>
									<script type="text/javascript"
										src="https://cdn.jsdelivr.net/npm/echarts/dist/echarts.min.js"></script>
									<script type="text/javascript"
										src="https://cdn.jsdelivr.net/npm/echarts-gl/dist/echarts-gl.min.js"></script>
									<script type="text/javascript"
										src="https://cdn.jsdelivr.net/npm/echarts-stat/dist/ecStat.min.js"></script>
									<script type="text/javascript"
										src="https://cdn.jsdelivr.net/npm/echarts/dist/extension/dataTool.min.js"></script>
									<script
										src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
								</div>

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

		<!-- 日历图 -->
		<script type="text/javascript">
			var dom = document.getElementById("calendar");
			var myChart = echarts.init(dom);
			var app = {};

			var dateList = [ [ '2017-3-1', '初四', '出勤' ],
					[ '2017-3-2', '初五', '出勤' ], [ '2017-3-3', '初六', '出勤' ],
					[ '2017-3-4', '初七', '假期' ], [ '2017-3-5', '初八', '迟到' ],
					[ '2017-3-6', '初九', '出勤' ], [ '2017-3-7', '初十', '早退' ],
					[ '2017-3-8', '十一', '出勤' ], [ '2017-3-9', '十二', '旷工' ],
					[ '2017-3-10', '十三', '迟到' ], [ '2017-3-11', '十四', '假期' ],
					[ '2017-3-12', '十五', '迟到' ], [ '2017-3-13', '十六', '出勤' ],
					[ '2017-3-14', '十七', '出勤' ], [ '2017-3-15', '十八', '出勤' ],
					[ '2017-3-16', '十九', '早退' ], [ '2017-3-17', '二十', '旷工' ],
					[ '2017-3-18', '廿一', '出勤' ], [ '2017-3-19', '廿二', '假期' ],
					[ '2017-3-20', '廿三', '出勤' ], [ '2017-3-21', '廿四', '出勤' ],
					[ '2017-3-22', '廿五', '请假' ], [ '2017-3-23', '廿六', '假期' ],
					[ '2017-3-24', '廿七', '早退' ], [ '2017-3-25', '廿八', '出勤' ],
					[ '2017-3-26', '廿九', '出勤' ], [ '2017-3-27', '三十', '出勤' ],
					[ '2017-3-28', '三月', '早退' ], [ '2017-3-29', '初二', '出勤' ],
					[ '2017-3-30', '初三', '出勤' ], [ '2017-3-31', '初四', '出勤' ], ];
			var heatmapDatas = [ 1, 1, 1, 2, 3, 1, 4, 1, 6, 3, 2, 3, 1, 1, 1,
					4, 6, 1, 2, 1, 1, 5, 2, 4, 1, 1, 1, 4, 1, 1, 1 ];
			var heatmapData = [];
			var lunarData = [];
			for (var i = 0; i < dateList.length; i++) {
				heatmapData.push([ dateList[i][0], heatmapDatas[i] ]);
				lunarData.push([ dateList[i][0], 1, dateList[i][1],
						dateList[i][2] ]);
			}
			console.log(heatmapData);

			option = {
				title : {
					show : false,
					text : "本月考勤记录",
					x : 'center',
					y : 'top',
					padding : 5,
					textStyle : {//主标题文本样式{"fontSize": 18,"fontWeight": "bolder","color": "#333"}
						fontFamily : 'Arial',
						fontSize : 22,
						fontStyle : 'normal',
						fontWeight : 'bold',
					},
				},

				tooltip : {
					formatter : function(params) {
						return '打卡次数: ' + params.value[1].toFixed(2);
					}
				},

				visualMap : {
					show : false,
					min : 1,
					max : 6,
					calculable : true,
					seriesIndex : [ 2 ],
					orient : 'horizontal',
					left : 'center',
					bottom : -10,
					inRange : {
						color : [ '#FFFFF0', '#20B2AA' ],
					//opacity: 0.3
					},
					controller : {
						inRange : {
							opacity : 0.5
						}
					}
				},

				calendar : [ {
					left : 'center',
					top : 'middle',
					cellSize : [ 58, 64 ],
					yearLabel : {
						show : false
					},
					orient : 'vertical',
					dayLabel : {
						firstDay : 1,
						nameMap : 'cn'
					},
					monthLabel : {
						show : false
					},
					range : '2017-03'
				} ],

				series : [
						{
							type : 'scatter',
							coordinateSystem : 'calendar',
							symbolSize : 1,
							label : {
								show : true,
								formatter : function(params) {
									var d = echarts.number
											.parseDate(params.value[0]);
									return d.getDate() + '\n\n'
											+ params.value[2] + '\n\n';
								},
								color : '#000'
							},
							data : lunarData
						}, {
							type : 'scatter',
							coordinateSystem : 'calendar',
							symbolSize : 1,
							label : {
								show : true,
								formatter : function(params) {
									return '\n\n\n' + (params.value[3] || '');
								},
								fontSize : 12,
								fontWeight : 700,
								color : '#2F4F4F'
							},
							data : lunarData
						}, {
							name : '打卡次数',
							type : 'heatmap',
							coordinateSystem : 'calendar',
							data : heatmapData
						} ]
			};
			myChart.setOption(option);
		</script>

		<!-- 饼图 -->
		<script type="text/javascript">
			var dom = document.getElementById("pie1");
			var myChart = echarts.init(dom);
			var app = {};

			option = {
				title : {
					show : true,
					text : "本月考勤",
					x : 'center',
					y : 'top',
					padding : 15,
					textStyle : {//主标题文本样式{"fontSize": 18,"fontWeight": "bolder","color": "#333"}
						fontFamily : 'Arial',
						fontSize : 22,
						fontStyle : 'normal',
						fontWeight : 'bold',
					},
				},
				tooltip : {
					trigger : 'item'
				},
				legend : {
					top : '10%',
					left : 'center',
					show : false
				},
				series : [ {
					name : '本月考勤',
					type : 'pie',
					radius : [ '20%', '50%' ],
					avoidLabelOverlap : false,
					itemStyle : {
						borderRadius : 10,
						borderColor : '#fff',
						borderWidth : 2
					},
					label : {
						normal : {
							formatter : '{b} {d}%',
							textStyle : {
								fontWeight : 'normal',
								fontSize : 12,

							},
							color : '#2F4F4F',

						}

					},
					labelLine : {
						show : true
					//官网demo里外部标注上的小细线的显示隐藏 默认显示
					},

					data : [ {
						value : 17,
						name : '出勤'
					}, {
						value : 4,
						name : '早退'
					}, {
						value : 2,
						name : '旷工'
					}, {
						value : 3,
						name : '迟到'
					}, {
						value : 4,
						name : '假期'
					}, {
						value : 1,
						name : '请假'
					} ]
				} ]
			};
			myChart.setOption(option);
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

		<script>
			//触发按钮点击事件
			function pay(reg) {
				//获取id
				var userid = reg;
				//alert(userid);
				getUserList(userid);
			}

			//通过ajax向后台发送id触发查询并返回数据
			function getUserList(userid) {

				$.post("${pageContext.request.contextPath}/jsp/AjaxServlet", {
					"userid" : userid
				}, function(r) {
					//打印返回的数据
					console.log(r);
					//切割返回的数据
					var recList = r;
					var entName = "";
					var userlist = new Array();//用户信息数组
					for (var i = 0; i < recList.length; i++) {

						if (recList[i] != ",") {
							var entName = entName + recList[i];

						}
						if (recList[i] == ",") {
							console.log(entName);
							userlist.push(entName);
							entName = "";
						}

					}
					//console.log(userlist[0]);
					var usernumber = userlist[0]; //获取用户姓名
					var username = userlist[1]; //获取用户性别
					var userposition = userlist[2]; //获取用户学历

					//改变左侧输入框的内容
					var usernumberid = document
							.getElementById("exampleInputNumber1");
					usernumberid.value = usernumber;
					var usernameid = document
							.getElementById("exampleInputName1");
					usernameid.value = username;
					var userpositionid = document
							.getElementById("exampleInputPosition1");
					userpositionid.value = userposition;

				});

			}
		</script>
</body>
</html>
