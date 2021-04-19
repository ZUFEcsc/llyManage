<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%><!DOCTYPE html>
<html>
<head>
<%@ include file="bootstrap.jsp"%>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<title>企业画像</title>
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
<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" href="../res/layui/css/layui.css">
<style>
* {
	margin: 0;
	padding: 0;
}
</style>
</head>

<body class="">
	<div class="layui-layout layui-layout-admin">
		<div class="layui-header" style="height: 80px;">
			<div class="layui-logo" style="line-height: 80px;">
				<img src="../img/you2.png" style="height: 55px; opacity: 0.9;">
			</div>
			<!-- 头部区域（可配合layui已有的水平导航） -->
			<ul class="layui-nav layui-layout-left" style="line-height: 80px;">
				<li class="layui-nav-item"><a href="index.jsp">首页</a></li>
				<li class="layui-nav-item"><a href="">求职广场</a></li>
				<li class="layui-nav-item"><a href="">面试直通车</a></li>
				<li class="layui-nav-item"><a href="javascript:;">其它系统</a>
					<dl class="layui-nav-child">
						<dd>
							<a href="">a管理</a>
						</dd>
						<dd>
							<a href="">b管理</a>
						</dd>
						<dd>
							<a href="">c管理</a>
						</dd>
					</dl></li>
			</ul>
			<ul class="layui-nav layui-layout-right" style="line-height: 80px;">
				<li class="layui-nav-item"><a href="javascript:;"> <img
						src="../img/avatar.png" class="layui-nav-img"> 赵子龙
				</a>
					<dl class="layui-nav-child">
						<dd>
							<a href="userCenter.jsp">个人中心</a>
						</dd>
						<dd>
							<a href="">我的消息</a>
						</dd>
					</dl></li>
				<li class="layui-nav-item"><a href="ExitServlet?x=2">退出登录</a></li>
			</ul>
		</div>
		<div class="layui-layout-body">
			<div class="layui-row layui-col-space10 layui-bg-gray"
				style="padding: 5px;">
				<div class="layui-col-md6">

					<div class="layui-card">
						<div class="layui-card-header" style="text-align: center;">
						<a class="layui-btn-xs" href="userSearch.jsp" style="float:left;margin:10px 10px;"> <i
														class="iconfont icon-ziyuan25"
														style="font-size: 22px; color: #16c2c2;"></i> 返回
												</a>
							<strong style="font-size: 18px;">企业基本信息</strong>
						</div>
						<div class="layui-card-body">
							<div>
								<table style="margin: 0px 0;">
									<colgroup>
										<col width="70">
										<col width="300">
										<col width="80">
										<col width="200">
									</colgroup>
									<tbody>
										<tr class="uc-tr">
											<td>
											<strong style="color:#2b4f6c;">
											企业名称
											</strong></td>
											<td>
											<span style="color:#777777;">安徽阿里</span>
											 <span class="layui-badge layui-bg-blue">B轮</span>
												<span class="layui-badge layui-bg-blue">高新技术企业</span>
											</td>
											<td>
											<strong style="color:#2b4f6c;">法定代表人</strong></td>
											<td><span style="color:#777777;">贾法人</span></td>
										</tr>
										<tr class="uc-tr">
											<td><strong style="color:#2b4f6c;">注册资本</strong></td>
											<td><span style="color:#777777;">3000万元人民币</span></td>
											<td><strong style="color:#2b4f6c;">成立日期</strong></td>
											<td><span style="color:#777777;">2007-09-27</span></td>
										</tr>
										<tr class="uc-tr">
											<td><strong style="color:#2b4f6c;">官网</strong></td>
											<td><span style="color:#777777;">www.llyou.com</span></td>
											<td><strong style="color:#2b4f6c;">联系电话</strong></td>
											<td><span style="color:#777777;">010-987654321</span></td>
										</tr>
										<tr class="uc-tr">
											<td><strong style="color:#2b4f6c;">邮箱</strong></td>
											<td><span style="color:#777777;">chuangxinchuangye@163.com</span></td>
										</tr>
										<tr class="uc-tr">
											<td><strong style="color:#2b4f6c;">地址</strong></td>
											<td><span style="color:#777777;">滨海新区创新创业楼6幢</span></td>
										</tr>
										
									</tbody>
								</table>
							</div>
						</div>
					</div>


					<div class="layui-card">
						<div class="layui-card-body">

							<div id="line" style="width: 720px; height: 395px;"></div>

						</div>
					</div>

				</div>


				<div class="layui-col-md6">
					<div class="layui-card">
						<div class="layui-card-header" style="text-align: center;">
							<strong style="font-size: 18px;">员工画像</strong>
						</div>
						<div class="layui-card-body">
						<!-- border: solid 1px black; -->
							<div id="barpie"
								style="width: 720px; height: 552px; "></div>
						</div>
					</div>
				</div>

				<div class="layui-col-md3">
					<div class="layui-card">
						<div class="layui-card-header" style="text-align: center;">
							<strong style="font-size: 18px;">综合信用得分</strong>
						</div>
						<div class="layui-card-body" style="margin-left: -15px;">
							<div id="score" style="width: 360px; height: 250px;"></div>
						</div>
					</div>
				</div>

				<div class="layui-col-md3">
					<div class="layui-card">
						<div class="layui-card-header" style="text-align: center;">
							<strong style="font-size: 18px;">企业族谱信息</strong>
						</div>
						<div class="layui-card-body" style="margin-left: -13px;margin-top: -10px;">
							<div id="relation" style="width:370px;height:260px;"></div>
						</div>
					</div>
				</div>

				<div class="layui-col-md3">
					<div class="layui-card">
						<div class="layui-card-body" style="margin-left: -13px;">
							<div id="bar" style="width: 320px; height: 295px;"></div>
						</div>
					</div>

				</div>

				<div class="layui-col-md3">
					<div class="layui-card">
						<div class="layui-card-body" style="margin-left: -13px;">
							<div id="wordcloud" style="width: 320px; height: 310px;"></div>
						</div>
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

	<!-- 企业关系图 -->
	<script type="text/javascript">
	var dom = document.getElementById("relation");
	var myChart = echarts.init(dom);
	var app = {};
	myChart.showLoading();
	var graph={
	    "nodes": [
	      {
	        "id": "0",
	        "name": "副总裁",
	        "symbolSize": 45.12381,
	        "x": -460.82776,
	        "y": 199.6904,
	        "value": 28.685715,
	        "category": 0
	      },
	      {
	        "id": "1",
	        "name": "法务",
	        "symbolSize": 18.6666666666666665,
	        "x": -318.08344,
	        "y": 166.8853,
	        "value": 4,
	        "category": 1
	      },
	      {
	        "id": "2",
	        "name": "安徽阿里管理人",
	        "symbolSize": 41.323809333333333,
	        "x": -212.76357,
	        "y": 385.29176,
	        "value": 9.485714,
	        "category": 2
	      },
	      {
	        "id": "3",
	        "name": "税务人",
	        "symbolSize": 49.323809333333333,
	        "x": -142.82404,
	        "y": 255.26283,
	        "value": 9.485714,
	        "category": 3
	      },
	      {
	        "id": "4",
	        "name": "控股股东",
	        "symbolSize": 48.6666666666666665,
	        "x": -379.30386,
	        "y": 209.06424,
	        "value": 4,
	        "category": 4
	      },
	      {
	        "id": "5",
	        "name": "作业帮公司管理人",
	        "symbolSize": 25.6666666666666665,
	        "x": -417.26337,
	        "y": 206.03506,
	        "value": 4,
	        "category": 5
	      },
	      {
	        "id": "6",
	        "name": "股东",
	        "symbolSize": 69.6666666666666665,
	        "x": -332.6012,
	        "y": 285.16974,
	        "value": 4,
	        "category": 6
	      },
	      {
	        "id": "7",
	        "name": "高管",
	        "symbolSize": 41.6666666666666665,
	        "x": -382.69568,
	        "y": 275.09113,
	        "value": 4,
	        "category": 7
	      }
	    ],
	    "links": [
	      {
	        "source": "1",
	        "target": "0"
	      },
	      {
	        "source": "2",
	        "target": "0"
	      },
	      {
	        "source": "3",
	        "target": "0"
	      },
	      {
	        "source": "5",
	        "target": "0"
	      },
	      {
	        "source": "6",
	        "target": "0"
	      },
	      {
	        "source": "7",
	        "target": "0"
	      },
	      {
	        "source": "3",
	        "target": "4"
	      },
	      {
	        "source": "4",
	        "target": "6"
	      },
	      {
	        "source": "4",
	        "target": "5"
	      },
	      {
	        "source": "5",
	        "target": "6"
	      },
	      {
	        "source": "1",
	        "target": "2"
	      },
	      {
	        "source": "1",
	        "target": "4"
	      },
	      {
	        "source": "2",
	        "target": "3"
	      },
	      {
	        "source": "3",
	        "target": "7"
	      }
	    ],
	    "categories": [
	      {
	        "name": "类目0"
	      },
	      {
	        "name": "类目1"
	      },
	      {
	        "name": "类目2"
	      },
	      {
	        "name": "类目3"
	      },
	      {
	        "name": "类目4"
	      },
	      {
	        "name": "类目5"
	      },
	      {
	        "name": "类目6"
	      },
	      {
	        "name": "类目7"
	      }
	    ]
	  };
	console.log(graph);
	myChart.hideLoading();
	
	graph.nodes.forEach(function (node) {
	    node.label = {
	        show: node.symbolSize > 0,
	        fontSize:12,
	        position:'top'
	    };
	});
	option = {
	    title:{
	    show:false,
	    text:"企业族谱图",
	    x:'center',
	    y:'top',
	    padding:10,
	    textStyle: {//主标题文本样式{"fontSize": 18,"fontWeight": "bolder","color": "#333"}
	            fontFamily: 'Arial',
	            fontSize: 22,
	            fontStyle: 'normal',
	            fontWeight: 'bold',
	        },
	},
	    tooltip: {},
	    legend: [{
	        // selectedMode: 'single',
	        data: graph.categories.map(function (a) {
	            return a.name;
	        }),
	        show:false
	    }],
	    animationDuration: 1500,
	    animationEasingUpdate: 'quinticInOut',
	    series: [
	        {
	            name: 'Les Miserables',
	            type: 'graph',
	            layout: 'none',
	            data: graph.nodes,
	            links: graph.links,
	            categories: graph.categories,
	            roam: true,
	            label: {
	                position: 'right',
	                formatter: '{b}'
	            },
	            lineStyle: {
	                color: 'source',
	                curveness: 0.3
	            },
	            emphasis: {
	                focus: 'adjacency',
	                lineStyle: {
	                    width: 10
	                }
	            }
	        }
	    ]
	};
	
	myChart.setOption(option);

    </script>
       
	<!-- 雷达图 -->
	<script type="text/javascript">
		var dom = document.getElementById("score");
		var myChart = echarts.init(dom);
		var app = {};
		option = {
		    title:{
		        show:false,
		        text:"综合信用得分",
		        x:'center',
		        y:'top',
		        padding:10,
		        textStyle: {//主标题文本样式{"fontSize": 18,"fontWeight": "bolder","color": "#333"}
		                fontFamily: 'Arial',
		                fontSize: 22,
		                fontStyle: 'normal',
		                fontWeight: 'bold',
		            },
		    },
		    legend: {
		        orient: 'vertical', // 'vertical'
		        x:10, // 'center' | 'left' | {number},
		        y:10, // 'center' | 'bottom' | {number}
		        textStyle : {
		　　　　　　　　fontWeight : 'normal',
		　　　　　　　　fontSize : 10,
		　　　　　　},
		        borderColor: 'rgba(89, 100, 114,0.8)',
		        borderWidth: 2,
		    },
		    //{ text: '基本信息' },
		    //{ text: '资质认证及知识产权' },
		    //{ text: '社保及住房基金' },
		    //{ text: '运营情况' },
		    //{ text: '税务信息' },
		    //{ text:	'司法及处罚信息'}
		    radar: [
		        {
		            indicator: [
		                { text: '基本信息' },
		                { text: '资质认证' },
		                { text: '社保信息' },
		                { text: '运营情况' },
		                { text: '税务信息' },
		                { text:	'处罚信息'}
		            ],
		            center: ['50%', '50%'],
		            radius:90,
		            startAngle: 90,
		            splitNumber: 4,
		            shape: 'circle',
		            name: {
		                formatter: '【{value}】',
		                textStyle: {
		                    color: '#72ACD1',
		                    fontSize:12,
		                }
		            },
		            splitArea: {
		                areaStyle: {
		                    color: ['rgba(114, 172, 209, 0.2)',
		                        'rgba(114, 172, 209, 0.4)', 'rgba(114, 172, 209, 0.6)',
		                        'rgba(114, 172, 209, 0.8)', 'rgba(114, 172, 209, 1)'],
		                    shadowColor: 'rgba(0, 0, 0, 0.3)',
		                    shadowBlur: 10
		                }
		            },
		            axisLine: {
		                lineStyle: {
		                    color: 'rgba(255, 255, 255, 0.5)'
		                }
		            },
		            splitLine: {
		                lineStyle: {
		                    color: 'rgba(255, 255, 255, 0.5)'
		                }
		            }
		        }
		    ],
		    series: [
		        {
		            name: '雷达图',
		            type: 'radar',
		            emphasis: {
		                lineStyle: {
		                    width: 2
		                }
		            },
		            data: [
		                {
		                    value: [100, 8, 0.40, -80, 2000],
		                    name: '行业平均分',
		                    symbol: 'rect',
		                    symbolSize: 5,
		                    lineStyle: {
		                        type: 'dashed'
		                    }
		                },
		                {
		                    value: [60, 5, 0.30, -100, 1500],
		                    name: '企业得分',
		                    areaStyle: {
		                        color: 'rgba(255, 255, 255, 0.5)'
		                    }
		                }
		            ]
		        }
		    ]
		}
		myChart.setOption(option);
	</script>

	<!-- bar -->
	<script>
    	var chart = Highcharts.chart('bar', {
			chart: {
				type: 'column'
			},
			title: {
				text: '企业近6个月收益情况',
				style: {
					fontFamily: 'Arial',
		                fontSize: 18,
		                fontStyle: 'normal',
		                fontWeight: 'bold',
					},
		
			},
			xAxis: {
				categories: [
					'1月',
					'2月',
					'3月',
					'4月',
					'5月',
					'6月'
				],
				labels: {
		                style: {
		                    fontSize: '12px',
		                    fontWeight: 'bold'
		                }
		            }
			},
			yAxis: [{
				min: 0,
				title: {
					text: '收益（millions）',
					style:{
						fontSize:14,
						fontWeight:'bold'
					}
				},
				labels: {
		                style: {
		                    fontSize: '12px',
		                    fontWeight: 'bold'
		                }
		            }
			}],
			legend: {
			    itemStyle : {
		        'fontSize' : '12px'
		    }
			},
			tooltip: {
				shared: true
			},
			plotOptions: {
				column: {
					grouping: false,
					shadow: false,
					borderWidth: 0
				}
			},
			series: [ {
				name: '上月利润',
				color: 'rgba(171, 176, 223,1)',
				data: [183.6, 178.8, 198.5,180.5,160.8,210.9],
				tooltip: {  // 为当前数据列指定特定的 tooltip 选项
					valuePrefix: '$',
					valueSuffix: ' M'
				},
				pointPadding: 0.1,
				pointPlacement: 0.2,
				yAxis: 0  // 指定数据列所在的 yAxis
			}, {
				name: '本月利润',
				color: 'rgba(139, 103, 146,1)',
				data: [163.6,183.6, 178.8, 198.5,180.5,160.8],
				tooltip: {
					valuePrefix: '$',
					valueSuffix: ' M'
				},
				pointPadding: 0.29,
				pointPlacement: 0.2,
				yAxis: 0
			}]
		});
	</script>

	<!-- 发展历程 -->
	<script>
		function onChartLoad() {
			var centerX = 140,
				centerY = 110,
				path = [],
				angle,
				radius,
				badgeColor = Highcharts.Color(Highcharts.getOptions().colors[0]).brighten(-0.2).get(),
				spike;
			//this.chartWidth < 530
			if (this.chartWidth < 1030) {
				return;
			}
			// Draw the spiked disc
			for (angle = 0; angle < 2 * Math.PI; angle += Math.PI / 24) {
				radius = spike ? 80 : 70;
				path.push(
					'L',
					centerX + radius * Math.cos(angle),
					centerY + radius * Math.sin(angle)
				);
				spike = !spike;
			}
			path[0] = 'M';
			path.push('z');
			this.renderer.path(path)
				.attr({
				fill: badgeColor,
				zIndex: 6
			})
				.add();
			// Employee image overlay
			var empImage = this.renderer.path(path)
			.attr({
				zIndex: 7,
				opacity: 0,
				stroke: badgeColor,
				'stroke-width': 1
			})
			.add();
			// Big 5
			var big5 = this.renderer.text('5')
			.attr({
				zIndex: 6
			})
			.css({
				color: 'white',
				fontSize: '20px',
				fontStyle: 'italic',
				fontFamily: "'Brush Script MT', sans-serif"
			})
			.add();
			big5.attr({ 
				x: centerX - big5.getBBox().width / 2,
				y: centerY + 14
			});
			// Draw the label
			var label = this.renderer.text('XXXX 周年')
			.attr({
				zIndex: 6
			})
			.css({
				color: '#FFFFFF'
			})
			.add()
			var left = centerX - label.getBBox().width / 2,
				right = centerX + label.getBBox().width / 2;
			label.attr({
				x: left,
				y: centerY + 44
			});
			// The band
			left = centerX - 90;
			right = centerX + 90;
			this.renderer.path([
				'M', left, centerY + 30,
				'L', right, centerY + 30,
				right, centerY + 50,
				left, centerY + 50,
				'z',
				'M', left, centerY + 40,
				'L', left - 20, centerY + 40,
				left - 10, centerY + 50,
				left - 20, centerY + 60,
				left + 10, centerY + 60,
				left, centerY + 50,
				left + 10, centerY + 60,
				left + 10, centerY + 50,
				left, centerY + 50,
				'z',
				'M', right, centerY + 40,
				'L', right + 20, centerY + 40,
				right + 10, centerY + 50,
				right + 20, centerY + 60,
				right - 10, centerY + 60,
				right, centerY + 50,
				right - 10, centerY + 60,
				right - 10, centerY + 50,
				right, centerY + 50,
				'z',
			])
				.attr({
				fill: badgeColor,
				stroke: '#FFFFFF',
				'stroke-width': 1,
				zIndex: 5
			})
				.add();
			// 2009-2014
			var years = this.renderer.text('2009-2014')
			.attr({
				zIndex: 6
			})
			.css({
				color: '#FFFFFF',
				fontStyle: 'italic',
				fontSize: '10px'
			})
			.add();
			years.attr({
				x: centerX - years.getBBox().width / 2,
				y: centerY + 62
			});
			// Prepare mouseover
			var renderer = this.renderer;
			if (renderer.defs) { // is SVG
				console.log('isSVG')
				Highcharts.each(this.get('employees').points, function (i, point) {
					console.log(i, point)
					if (point.image) {
						var pattern = renderer.createElement('pattern').attr({
							id: 'pattern-' + point.image,
							patternUnits: 'userSpaceOnUse',
							width: 200,
							height: 200
						}).add(renderer.defs);
						renderer.image(
							//'http://www.highcharts.com/joomla/components/com_about/assets/images/' + point.image + '.jpg',
							'https://www.highcharts.com/images/employees2014/' + point.image + '.jpg',
							centerX - 80,
							centerY - 80,
							160,
							213
						).add(pattern);
						Highcharts.addEvent(point, 'mouseOver', function () {
							empImage.attr({
								fill: 'url(#pattern-' + point.image + ')'
							})
								.animate({ opacity: 1 }, { duration : 500 })
						});
						Highcharts.addEvent(point, 'mouseOut', function () {
							empImage.animate({ opacity: 0 }, { duration : 500 });
						});
					}
				});
			}    
		}
		var options = {
			chart: {
				events: {
					load: onChartLoad
				}
			},        
			xAxis: {
				type: 'datetime',
				minTickInterval: 365 * 24 * 36e5,
				labels: {
					align: 'left',
					style: {
		                    fontSize: '14px',
		                    fontWeight: 'bold'
		                }
				},
				plotBands: [{
					from: Date.UTC(2009, 10, 27),
					to: Date.UTC(2010, 11, 1),
					color: '#EFFFFF',
					label: {
						text: '<em>办事处:</em><br> 杭州创业园',
						style: {
							color: '#999999'
						},
						y: 30
					}
				}, {
					from: Date.UTC(2010, 11, 1),
					to: Date.UTC(2013, 9, 1),
					color: '#FFFFEF',
					label: {
						text: '<em>办事处:</em><br> 创业中心',
						style: {
							color: '#999999'
						},
						y: 30
					}
				}, {
					from: Date.UTC(2013, 9, 1),
					to: Date.UTC(2014, 10, 27),
					color: '#FFEFFF',
					label: {
						text: '<em>办事处:</em><br> 杭州大厦',
						style: {
							color: '#999999'
						},
						y: 30
					}
				}]
			},
			title: {
				text: '安徽阿里公司发展历程',
				style: {
					fontFamily: 'Arial',
		                fontSize: 18,
		                fontStyle: 'normal',
		                fontWeight: 'bold',
					},
			},
			tooltip: {
				style: {
					width: '250px'
				}
			},
			yAxis: [{
				max: 100,
				labels: {
					enabled: false,
					style: {
		                    fontSize: '12px',
		                    fontWeight: 'bold'
		                }
				},
				title: {
					text: ''
				},
				gridLineColor: 'rgba(0, 0, 0, 0.07)'
			}, {
				allowDecimals: false,
				max: 15,
				labels: {
					style: {
						fontSize: '12px',
		                    fontWeight: 'bold'
					}
				},
				title: {
					text: '雇员',
					style: {
						fontSize: '12px',
		                    fontWeight: 'bold'
					}
				},
				opposite: true,
				gridLineWidth: 0
			}],
			plotOptions: {
				series: {
					marker: {
						enabled: false,
						symbol: 'circle',
						radius: 2
					},
					fillOpacity: 0.5
				},
				flags: {
					tooltip: {
						xDateFormat: '%B %e, %Y'
					}
				}
			},
			series: [{
				type: 'line',
				id: 'google-trends',
				dashStyle: 'dash',
				name: '百度搜索指数',
				data: [{ x: 1258322400000, /* November 2009 */ y: 0}, { x: 1260961200000, y: 5}, { x: 1263639600000, y: 7}, { x: 1266188400000, y: 5}, { x: 1268740800000, y: 6}, { x: 1271368800000, y: 8}, { x: 1274004000000, y: 11}, { x: 1276639200000, y: 9}, { x: 1279274400000, y: 12}, { x: 1281952800000, y: 13}, { x: 1284588000000, y: 17}, { x: 1287223200000, y: 17}, { x: 1289858400000, y: 18}, { x: 1292497200000, y: 20}, { x: 1295175600000, y: 20}, { x: 1297724400000, y: 27}, { x: 1300276800000, y: 32}, { x: 1302904800000, y: 29}, { x: 1305540000000, y: 34}, { x: 1308175200000, y: 34}, { x: 1310810400000, y: 36}, { x: 1313488800000, y: 43}, { x: 1316124000000, y: 44}, { x: 1318759200000, y: 42}, { x: 1321394400000, y: 47}, { x: 1324033200000, y: 46}, { x: 1326711600000, y: 50}, { x: 1329303600000, y: 57}, { x: 1331899200000, y: 54}, { x: 1334527200000, y: 59}, { x: 1337162400000, y: 62}, { x: 1339797600000, y: 66}, { x: 1342432800000, y: 61}, { x: 1345111200000, y: 68}, { x: 1347746400000, y: 67}, { x: 1350381600000, y: 73}, { x: 1353016800000, y: 63}, { x: 1355655600000, y: 54}, { x: 1358334000000, y: 67}, { x: 1360882800000, y: 74}, { x: 1363435200000, y: 81}, { x: 1366063200000, y: 89}, { x: 1368698400000, y: 83}, { x: 1371333600000, y: 88}, { x: 1373968800000, y: 86}, { x: 1376647200000, y: 81}, { x: 1379282400000, y: 83}, { x: 1381917600000, y: 95}, { x: 1384552800000, y: 86}, { x: 1387191600000, y: 83}, { x: 1389870000000, y: 89}, { x: 1392418800000, y: 90}, { x: 1394971200000, y: 94}, { x: 1397599200000, y: 100}, { x: 1400234400000, y: 100}, { x: 1402869600000, y: 99}, { x: 1405504800000, y: 99}, { x: 1408183200000, y: 93}, { x: 1410818400000, y: 97}, { x: 1413453600000, y: 98}],
				tooltip: {
					xDateFormat: '%B %Y',
					valueSuffix: ' % of best month'
				},
				style:{
					fontSize:14
				}
			}, {
				name: '收入',
				id: 'revenue',
				type: 'area',
				data: [[1257033600000,2],[1259625600000,3],[1262304000000,2],[1264982400000,3],[1267401600000,4],[1270080000000,4],[1272672000000,4],[1275350400000,4],[1277942400000,5],[1280620800000,7],[1283299200000,6],[1285891200000,9],[1288569600000,10],[1291161600000,8],[1293840000000,10],[1296518400000,13],[1298937600000,15],[1301616000000,14],[1304208000000,15],[1306886400000,16],[1309478400000,22],[1312156800000,19],[1314835200000,20],[1317427200000,32],[1320105600000,34],[1322697600000,36],[1325376000000,34],[1328054400000,40],[1330560000000,37],[1333238400000,35],[1335830400000,40],[1338508800000,38],[1341100800000,39],[1343779200000,43],[1346457600000,49],[1349049600000,43],[1351728000000,54],[1354320000000,44],[1356998400000,43],[1359676800000,43],[1362096000000,52],[1364774400000,52],[1367366400000,56],[1370044800000,62],[1372636800000,66],[1375315200000,62],[1377993600000,63],[1380585600000,60],[1383264000000,60],[1385856000000,58],[1388534400000,65],[1391212800000,52],[1393632000000,72],[1396310400000,57],[1398902400000,70],[1401580800000,63],[1404172800000,65],[1406851200000,65],[1409529600000,89],[1412121600000,100]],
				tooltip: {
					xDateFormat: '%B %Y',
					valueSuffix: ' % of best month'
				}
			}, {
				yAxis: 1,
				name: '员工',
				id: 'employees',
				type: 'area',
				step: 'left',
				tooltip: {
					headerFormat: '<span style="font-size: 11px;color:#666">{point.x:%B %e, %Y}</span><br>',
					pointFormat: '{point.name}<br><b>{point.y}</b>',
					valueSuffix: ' employees'
				},
				data: [
					{ x: Date.UTC(2009, 10, 1), y: 1, name: 'Torstein 一个人工作', image: 'Torstein' },
					{ x: Date.UTC(2010, 10, 20), y: 2, name: 'Grethe 加入', image: 'Grethe' },
					{ x: Date.UTC(2011, 3, 1), y: 3, name: 'Erik 加入', image: null },
					{ x: Date.UTC(2011, 7, 1), y: 4, name: 'Gert 加入', image: 'Gert' },
					{ x: Date.UTC(2011, 7, 15), y: 5, name: 'Hilde 加入', image: 'Hilde' },
					{ x: Date.UTC(2012, 5, 1), y: 6, name: 'Guro 加入', image: 'Guro' },
					{ x: Date.UTC(2012, 8, 1), y: 5, name: 'Erik left', image: null },
					{ x: Date.UTC(2012, 8, 15), y: 6, name: 'Anne Jorunn 加入', image: 'AnneJorunn' },
					{ x: Date.UTC(2013, 0, 1), y: 7, name: 'Hilde T. 加入', image: null },
					{ x: Date.UTC(2013, 7, 1), y: 8, name: 'Jon Arild 加入', image: 'JonArild' },
					{ x: Date.UTC(2013, 7, 20), y: 9, name: 'Øystein 加入', image: 'Oystein' },
					{ x: Date.UTC(2013, 9, 1), y: 10, name: 'Stephane 加入', image: 'Stephane' },
					{ x: Date.UTC(2014, 9, 1), y: 11, name: 'Anita 加入', image: 'Anita' },
					{ x: Date.UTC(2014, 10, 27), y: 11, name: ' ', image: null }
				]
			}]
		};
		// Add flags for important milestones. This requires Highstock.
		if (Highcharts.seriesTypes.flags) {
			options.series.push({
				type: 'flags',
				name: 'Cloud',
				color: '#333333',
				shape: 'squarepin',
				y: -80,
				data: [
					{ x: Date.UTC(2014, 4, 1), text: 'Highcharts Cloud Beta', title: 'Cloud', shape: 'squarepin' }
				],
				showInLegend: false
			}, {
				type: '旗帜',
				name: 'Highmaps',
				color: '#333333',
				shape: 'squarepin',
				y: -55,
				data: [
					{ x: Date.UTC(2014, 5, 13), text: 'Highmaps version 1.0 released', title: 'Maps' }
				],
				showInLegend: false            
			}, {
				type: '旗帜',
				name: 'Highcharts',
				color: '#333333',
				shape: 'circlepin',
				data: [
					{ x: Date.UTC(2009, 10, 27), text: 'Highcharts version 1.0 released', title: '1.0' },
					{ x: Date.UTC(2010, 6, 13), text: '从画布移植到svg呈现', title: '2.0' },
					{ x: Date.UTC(2010, 10, 23), text: '动态调整大小和缩放到文本标签', title: '2.1' },
					{ x: Date.UTC(2011, 9, 18), text: 'Highstock version 1.0 released', title: 'Stock', shape: 'squarepin' },
					{ x: Date.UTC(2012, 7, 24), text: '压力表，极图和系列图', title: '2.3' },
					{ x: Date.UTC(2013, 2, 22), text: '支持多点触控，更多系列图', title: '3.0' },
					{ x: Date.UTC(2014, 3, 22), text: '3D 图, 时尚', title: '4.0' }
				],
				showInLegend: false
			}, {
				type: '旗帜',
				name: 'Events',
				color: '#333333',
				fillColor: 'rgba(255,255,255,0.8)',
				data: [
					{ x: Date.UTC(2012, 10, 1), text: 'Highsoft 在 Norway 荣获 "Entrepeneur of the Year"', title: 'Award' },
					{ x: Date.UTC(2012, 11, 25), text: 'Packt 出版社出版<em>Learning Highcharts by Example</em>. 从那时起, 许多关于Highcharts的书陆续出现.', title: 'First book' },
					{ x: Date.UTC(2013, 4, 25), text: 'Highsoft nominated Norway\'s Startup of the Year', title: 'Award' },
					{ x: Date.UTC(2014, 4, 25), text: 'Highsoft nominated Best Startup in Nordic Startup Awards', title: 'Award' }
				],
				onSeries: 'revenue',
				showInLegend: false
			});
		}
		var chart = Highcharts.chart('line', options);
    </script>

	<!-- 词云 -->
	<script>
      	text2="高自由度 高自由度 高自由度 工作环境很nice 工作环境很nice 工作环境很nice 工作环境很nice 工作环境很nice 工作环境很nice 工作环境很nice 工作环境很nice 工作环境很nice 工作环境很nice 工作环境很nice 高自由度 薪资高 薪资高  福利待遇好 企业文化强 企业文化强 福利待遇好 福利待遇好 福利待遇好 福利待遇好 福利待遇好 福利待遇好 福利待遇好 福利待遇好 福利待遇好 福利待遇好 福利待遇好 福利待遇好 福利待遇好 福利待遇好 福利待遇好 有挑战性 有挑战性 有挑战性 有挑战性 常加班 老板平易近人 有挑战性 有挑战性 有挑战性 有挑战性 有挑战性 有挑战性 有挑战性 常加班 老板平易近人 老板平易近人 老板平易近人 老板平易近人 常加班 996 996 996 996 996 996 996 996 996 996 996 996 996 996 团队凝聚力强 团队凝聚力强 团队凝聚力强 团队凝聚力强 团队凝聚力强 团队凝聚力强 团队凝聚力强 团队凝聚力强 团队凝聚力强 团队凝聚力强 团队凝聚力强 团队凝聚力强 团队凝聚力强 团队凝聚力强 团队凝聚力强 团队凝聚力强 团队凝聚力强 团队凝聚力强 团队凝聚力强 有挑战性 有挑战性 有挑战性 有挑战性 有挑战性 有挑战性 996 996 996 996 996 90后多 90后多 90后多 90后多 90后多 90后多 90后多 90后多 90后多 90后多 90后多 90后多 90后多 90后多 90后多 90后多 90后多 90后多 90后多 90后多 老板平易近人 老板平易近人 老板平易近人 老板平易近人 常加班 老板平易近人 老板平易近人 老板平易近人 老板平易近人 常加班  常加班 常加班 发展稳定 发展稳定 上升空间大 上升空间大 高自由度 高自由度 薪资高 薪资高  福利待遇好 企业文化强 企业文化强  常加班 常加班  常加班 常加班 发展稳定 发展稳定 上升空间大 上升空间大 企业文化强  常加班 常加班  常加班 常加班 发展稳定 发展稳定 上升空间大 上升空间大 高自由度 高自由度 高自由度 薪资高 薪资高  福利待遇好 企业文化强 企业文化强  常加班 常加班  常加班 常加班 发展稳定 发展稳定 上升空间大 上升空间大 高自由度 高自由度 薪资高 薪资高  福利待遇好 企业文化强 企业文化强  常加班 常加班  常加班 常加班 发展稳定 发展稳定 上升空间大 发展稳定 发展稳定 上升空间大 上升空间大 高自由度 高自由度 薪资高 薪资高  福利待遇好 企业文化强 企业文化强  常加班 常加班  常加班 常加班 发展稳定 发展稳定 上升空间大 上升空间大 企业文化强  常加班 常加班  常加班 常加班 发展稳定 发展稳定 上升空间大 上升空间大 高自由度 高自由度 高自由度 薪资高 薪资高  福利待遇好 企业文化强 企业文化强  常加班 常加班  常加班 常加班 发展稳定 发展稳定 上升空间大 上升空间大 高自由度 高自由度 薪资高 薪资高  福利待遇好 企业文化强 企业文化强  常加班 常加班  常加班 常加班 发展稳定 发展稳定 上升空间大 上升空间大 上升空间大 上升空间大 上升空间大 上升空间大";
		var data = text2.split(/[,\. ]+/g)
		.reduce(function (arr, word) {
			var obj = arr.find(function (obj) {
				return obj.name === word;
			});
			if (obj) {
				obj.weight += 1;
			} else {
				obj = {
					name: word,
					weight: 1
				};
				arr.push(obj);
			}
			return arr;
		}, []);
		Highcharts.chart('wordcloud', {
			series: [{
				type: 'wordcloud',
				data: data
			}],
			title: {
				
				text: '企业行为标签',
				style: {
					fontFamily: 'Arial',
		                fontSize: 18,
		                fontStyle: 'normal',
		                fontWeight: 'bold',
					},
		
			}
		});
	</script>

	<!-- 员工画像 -->
	<script type="text/javascript">
		var dom = document.getElementById("barpie");
		var myChart = echarts.init(dom);
		var app = {};
		var builderJson = {
		
		"charts": {
		  "高中及以下": 130,
		  "博士及以上": 165,
		  "硕士": 561,
		  "大专": 778,
		  "本科": 1055,
		
		},
		"components": {
		  "100k以上": 88,
		  "50-100k": 175,
		  "5k以下": 280,
		  "10k-50k": 466,
		  "8k-10k": 736,
		  "5k-8k": 944,
		
		},
		
		};
		
		var downloadJson = {
		"男性": 1773,
		"女性": 1079,
		"空白": 20,
		
		};
		
		var themeJson = {
		"20岁以下": 94,
		"20-30岁": 925,
		"30-40岁": 808,
		"40-50岁": 321,
		"50岁以上": 179
		};
		
		
		var canvas = document.createElement('canvas');
		var ctx = canvas.getContext('2d');
		canvas.width = canvas.height = 100;
		ctx.textAlign = 'center';
		ctx.textBaseline = 'middle';
		ctx.globalAlpha = 0.08;
		ctx.font = '20px Microsoft Yahei';
		ctx.translate(50, 50);
		ctx.rotate(-Math.PI / 4);
		
		
		option = {
		  backgroundColor: {
		      type: 'pattern',
		      image: canvas,
		      repeat: 'repeat'
		  },
		  tooltip: {},
		  title: [{
		      text: '学历分布',
		      left: '25%',
		      textAlign: 'center'
		  },{
		      text: '个人月收入分布',
		      left: '25%',
		      top:'50%',
		      textAlign: 'center'
		  },  {
		      text: '性别分布',
		      left: '75%',
		      textAlign: 'center'
		  }, {
		      text: '年龄段分布',
		      left: '75%',
		      top: '50%',
		      textAlign: 'center'
		  }],
		  grid: [{
		      top: 30,
		      width: '45%',
		      bottom: '55%',
		      left: 20,
		      containLabel: true
		  }, {
		      top: '55%',
		      width: '45%',
		      bottom: 0,
		      left: 20,
		      containLabel: true
		  }],
		  xAxis: [{
		      type: 'value',
		      axisLabel: {
		       show: true,
		        textStyle: {
		          fontSize : 10      //更改坐标轴文字大小
		        }
		     },
		
		      splitLine: {
		          show: false
		      }
		  }, {
		      type: 'value',
		      axisLabel: {
		       show: true,
		        textStyle: {
		          fontSize : 10      //更改坐标轴文字大小
		        }
		     },
		      gridIndex: 1,
		      splitLine: {
		          show: false
		      }
		  }],
		  yAxis: [{
		      type: 'category',
		      data: Object.keys(builderJson.charts),
		      axisLabel: {
		          interval: 0,
		          rotate: 30,
		          textStyle: {
		          fontSize : 10      //更改坐标轴文字大小
		        }
		      },
		      
		      splitLine: {
		          show: false
		      }
		  }, {
		      gridIndex: 1,
		      type: 'category',
		      data: Object.keys(builderJson.components),
		      axisLabel: {
		          interval: 0,
		          rotate: 30,
		          textStyle: {
		          fontSize : 10      //更改坐标轴文字大小
		        }
		      },
		      splitLine: {
		          show: false
		      }
		  }],
		  series: [{
		      type: 'bar',
		      stack: 'chart',
		      z: 3,
		      itemStyle: {
		    	  color: function(params){
		    		  var colorList = ['#f4e04d','#e8fccf','#96e072','#3da35d','#3e8914'];
		    		  return colorList[params.dataIndex];
		    	  }
		      },
		      
		      label: {
		          position: 'right',
		          show: true,
		          normal: {
		                            formatter: '{b} {d}%',
		                            textStyle: {
		                                fontWeight: 'normal',
		                                fontSize: 14,
		
		                            },
		                            color: '#2F4F4F',
		
		                        }
		      },
		      data: Object.keys(builderJson.charts).map(function (key) {
		          return builderJson.charts[key];
		      })
		  }, {
		      type: 'bar',
		      stack: 'component',
		      xAxisIndex: 1,
		      yAxisIndex: 1,
		      z: 3,
		      
		      itemStyle: {
		    	  color: function(params){
		    		  var colorList = ['#b57f50','#f4e04d','#e8fccf','#96e072','#3da35d','#3e8914'];
		    		  //全绿var colorList = ['#40916c','#52b788','#74c69d','#95d5b2','#b7e4c7','#d8f3dc'];
		    		  //蓝绿var colorList = ['#1e6091','#34a0a4','#52b69a','#99d98c','#76c893','#b5e48c','#d9ed92'];
		    		  return colorList[params.dataIndex];
		    	  }
		      },
		      label: {
		          position: 'right',
		          show: true,
		          textStyle : {
		　　　　　　　　fontWeight : 'normal',
		　　　　　　　　fontSize : 14,
		　　　　　　　　
		　　　　　　},
		      },
		      data: Object.keys(builderJson.components).map(function (key) {
		          return builderJson.components[key];
		      })
		  },{
		      type: 'pie',
		      radius: [0, '30%'],
		      label: {
		                        normal: {
		                            formatter: '{b} {d}%',
		                            textStyle: {
		                                fontWeight: 'normal',
		                                fontSize: 14,
		
		                            },
		                            color: '#2F4F4F',
		
		                        }
		
		                    },
		      center: ['75%', '25%'],
		      color:['#f4e04d','#96e072','#3e8914'],
		      data: Object.keys(downloadJson).map(function (key) {
		          return {
		              name: key.replace('.js', ''),
		              value: downloadJson[key]
		          };
		      })
		  }, {
		      type: 'pie',
		      radius: [0, '30%'],
		      label: {
		                        normal: {
		                            formatter: '{b} {d}%',
		                            textStyle: {
		                                fontWeight: 'normal',
		                                fontSize: 14,
		
		                            },
		                            color: '#2F4F4F',
		
		                        }
		
		                    },
		      center: ['75%', '75%'],
		      color:['#b57f50','#f4e04d','#e8fccf','#96e072','#3da35d','#3e8914'],
		      data: Object.keys(themeJson).map(function (key) {
		          return {
		              name: key.replace('.js', ''),
		              value: themeJson[key]
		          };
		      })
		  }]
		};
		
		myChart.setOption(option);

       </script>
</body>
</html>
