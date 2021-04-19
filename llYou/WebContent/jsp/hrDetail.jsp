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
<title>HR页面</title>
<style>
.anchorBL {
	display: none;
}

.uc-tr {
	height: 45px;
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

.layui-card-header {
	text-align: center;
}
</style>

<link rel="stylesheet" href="../res/layui/css/layui.css">
<script src="https://cdn.bootcss.com/echarts/4.1.0.rc2/echarts.min.js"></script>
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/npm/echarts/dist/echarts.min.js"></script>
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/npm/echarts-gl/dist/echarts-gl.min.js"></script>
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/npm/echarts-stat/dist/ecStat.min.js"></script>
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/npm/echarts/dist/extension/dataTool.min.js"></script>
<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://img.hcharts.cn/highcharts-plugins/highcharts-zh_CN.js"></script>
<script src="https://code.highcharts.com.cn/highcharts/highcharts.js"></script>
<script
	src="https://code.highcharts.com.cn/highcharts/highcharts-more.js"></script>
<script src="https://code.highcharts.com.cn/highcharts/highcharts-3d.js"></script>
<script
	src="https://code.highcharts.com.cn/highcharts/modules/exporting.js"></script>
<script
	src="https://code.highcharts.com.cn/highcharts/modules/wordcloud.js"></script>
<script src="https://code.highcharts.com.cn/highcharts/modules/oldie.js"></script>
<script type="text/javascript"
	src="https://api.map.baidu.com/api?v=2.0&ak=Tycwp3FnwQuq9ATHo0qdGoSmjZIOM7Hb"></script>
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/npm/echarts/dist/extension/bmap.min.js"></script>
<script src="../js/map/china.js"></script>
</head>
<body class="layui-layout-body">
	<%
		String msg = (String) request.getAttribute("msg");
	%>
	<div class="layui-layout layui-layout-admin">
		<%@ include file="enterprise-header.jsp"%>
		<div class="layui-side layui-bg-black">
			<div class="layui-side-scroll">
				<!-- 左侧导航区域（可配合layui已有的垂直导航） -->

				<!-- 用户区别卡片 -->
				<div style="margin: 10px 35px;">
					<div class="userCard-img"
						style="display: inline-block; padding-right: 5px;">
						<img src="../img/avatar.png"
							style="border-radius: 50% !important; width: 42px; margin-bottom: 10px;">
					</div>
					<div class="userCard-text" style="display: inline-block;">
						<h5 style="padding-bottom: 3px">陈沈清</h5>
						<span class="layui-badge layui-bg-orange">HR</span>
					</div>
				</div>

				<ul class="layui-nav layui-nav-tree" lay-filter="test">
					<li class="layui-nav-item layui-nav-itemed"><a class=""
						href="javascript:;"> 招聘管理 </a>
						<dl class="layui-nav-child">
							<dd>
								<a href="#" class="site-demo-active" data-url="ZPXX"
									data-id="ZPXX" data-type="tabZPXX">招聘信息</a>
							</dd>
							<dd>
								<a href="#" class="site-demo-active" data-url="JLC"
									data-id="JLC" data-type="tabJLC">简历池</a>
							</dd>
							<dd>
								<a href="#" class="site-demo-active" data-url="DYJD"
									data-id="DYJD" data-type="tabDYJD">第一阶段</a>
							</dd>
							<dd>
								<a href="#" class="site-demo-active" data-url="DEJD"
									data-id="DEJD" data-type="tabDEJD">第二阶段</a>
							</dd>

						</dl></li>
					<li class="layui-nav-item"><a href="javascript:;">用户管理 </a>
						<dl class="layui-nav-child">
							<dd>
								<a href="#" class="site-demo-active" data-url="YHXX"
									data-id="YHXX" data-type="tabYHXX">用户信息</a>
							</dd>
							<dd>
								<a href="#" class="site-demo-active" data-url="XXXG"
									data-id="XXXG" data-type="tabXXXG">信息修改</a>
							</dd>
						</dl></li>
				</ul>
			</div>
		</div>

		<div class="layui-body">
			<!-- 内容主体区域 -->
			<div class="layui-tab layui-tab-brief" lay-filter="demo">
				<ul class="layui-tab-title">
					<li class="layui-this" lay-id="ZPXX">企业信息 <!--lay-allowclose="true"(div) <i class="layui-icon layui-unselect layui-tab-close">ဆ</i> -->
					</li>
				</ul>
				<div class="layui-tab-content">
					<div class="layui-tab-item layui-col-space10" id="item-ZPXX"
						style="display: inline-block; width: 100%">
						<div class="layui-col-md4">
							<div class="layui-card">
								<div class="layui-card-header">
									<strong style="font-size: 18px;">本周平台企业上线情况</strong>
								</div>
								<div class="layui-card-body" style="display: inline-block;">
									<div id="linebar"
										style="margin-left: -10px; width: 420px; height: 280px;"></div>
								</div>
							</div>

							<div class="layui-card">
								<div class="layui-card-body" style="display: inline-block;">
									<div id="halfcircle1"
										style="margin-left: -10px; width: 420px; height: 320px;"></div>
								</div>
							</div>
						</div>

						<div class="layui-col-md4">
							<div class="layui-card">

								<div class="layui-card-body">
									<div id="lines"
										style="margin-left: -10px; width: 420px; height: 328px;"></div>
								</div>
							</div>


							<div class="layui-card">
								<div class="layui-card-body">
									<div id="halfcircle2" style="margin-left:-10px;width:420px;height:320px;"></div>
								</div>
							</div>
						</div>

						<div class="layui-col-md4">
							<div class="layui-card">

								<div class="layui-card-body">
									<div id="wordcould"
										style="margin-left: -10px; width: 420px; height: 684px;"></div>
								</div>
							</div>
						</div>
						
						<div class="layui-col-md5">
							<div class="layui-card">
								<div class="layui-card-header">
									<strong style="font-size: 18px;">平台用户地域分布</strong>
								</div>
								<div class="layui-card-body" style="display: inline-block;">
									<div id="map"
										style="margin-left: -10px; width: 520px; height: 285px;"></div>
								</div>
							</div>

							<div class="layui-card">
								<div class="layui-card-body" style="display: inline-block;">
									<div id="pie"
										style="margin-left: -10px; width: 520px; height: 320px;"></div>
								</div>
							</div>
						</div>
						
						<div class="layui-col-md7">
							<div class="layui-card">
								<div class="layui-card-header">
									<strong style="font-size: 18px;">平台用户信息总览</strong>
								</div>
								<div class="layui-card-body" style="display: inline-block;">
									<div id="barpie"
										style="margin-left: -10px; width: 740px; height: 645px;"></div>
								</div>
							</div>
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

	<!-- 用户平台上线linebar -->
	<script type="text/javascript">
		var dom = document.getElementById("linebar");
		var myChart = echarts.init(dom);
		var app = {};
		
		option = {
		    title:{
		        show:false,
		        text:"本周平台用户上线情况",
		        x:'center',
		        y:'top',
		        padding:10,
		        textStyle: {//主标题文本样式{"fontSize": 18,"fontWeight": "bolder","color": "#333"}
		                fontFamily: 'Arial',
		                fontSize: 18,
		                fontStyle: 'normal',
		                fontWeight: 'bold',
		            },
		    },
		    tooltip: {
		        trigger: 'axis',
		        axisPointer: {
		            type: 'cross',
		            crossStyle: {
		                color: '#999'
		            }
		        }
		    },
		    toolbox: {
		        feature: {
		            dataView: {show: true, readOnly: false},
		            magicType: {show: true, type: ['line', 'bar']},
		            restore: {show: true},
		            saveAsImage: {show: true}
		        }
		    },
		    legend: {
		        data: ['上线', '未上线', '差值'],
		        orient: 'vertical', // 'vertical'
		        x:550, // 'center' | 'left' | {number},
		        y:60, // 'center' | 'bottom' | {number}
		        textStyle : {
		　　　　　　　　fontWeight : 'normal',
		　　　　　　　　fontSize : 12,
		　　　　　　},
		        borderColor: 'rgba(89, 100, 114,0.8)',
		        borderWidth: 2,
		    },
		    xAxis: [
		        {
		            type: 'category',
		            data: ['周一', '周二', '周三', '周四', '周五', '周六', '周日'],
		            axisPointer: {
		                type: 'shadow'
		            },axisLabel: {
		                formatter: '{value} ',
		                textStyle: {
		          fontSize : 12     //更改坐标轴文字大小
		        }
		            }
		        }
		    ],
		    yAxis: [
		        {
		            type: 'value',
		            name: '人次',
		            min: 0,
		            max: 5000,
		            interval: 500,
		            axisLabel: {
		                formatter: '{value} ',
		                textStyle: {
		          fontSize : 12     //更改坐标轴文字大小
		        }
		            }
		        }
		    ],
		    series: [
		        {
		            name: '上线',
		            type: 'bar',
		            color:'#fac958',
		            data: [2320,3470,4370,3680,3790,3835,3760]
		        },
		        {
		            name: '未上线',
		            type: 'bar',
		            color:'#91cd76',
		            data: [1720,1570,1670,1880,1790,1865,1940]
		        },
		        {
		            name: '差值',
		            type: 'line',
		            color:'#ef6667',
		
		            data: [500,1900,2700,1800,2000,1970,1820]
		        }
		    ]
		};
		myChart.setOption(option);
       </script>

	<!-- 本月新增用户 lines -->
	<script>
			Highcharts.chart('lines', {
			chart: {
				type: 'area',
				options3d: {
					enabled: true,
					alpha: 15,
					beta:20,
					depth: 200
				}
			},
			title: {
				text: "本月新增用户",
				style: {
					fontFamily: 'Arial',
		                fontSize: 18,
		                fontStyle: 'normal',
		                fontWeight: 'bold',
					},
			},
			yAxis: {
				title: {
					text: '人数',
					x: -40,
					style: {
					fontFamily: 'Arial',
		                fontSize: 12,
		                fontStyle: 'normal',
		                fontWeight: 'bold',
					},
				},
				labels: {
					format: '{value:,.0f}',
					style: {
		                    fontSize: '12px',
		                    fontWeight: 'bold'
		                }
				},
				gridLineDashStyle: 'Dash'
			},
			xAxis: [{
				visible: true,
				style: {
		                    fontSize: '12px',
		                    fontWeight: 'bold'
		                }
			}, {
				visible: false
			}, {
				visible: false
			}, {
				visible: false
			}, {
				visible: false
			}],
			plotOptions: {
				area: {
					depth: 100,
					marker: {
						enabled: false
					},
					states: {
						inactive: {
							enabled: false
						}
					}
				}
			},
			tooltip: {
				valueSuffix: ' MAMSL'
			},
			legend : {
		    itemStyle : {
		        'fontSize' : '12px'
		    }
		},
			series: [{
				name: "新增用户",
				lineColor: 'rgb(43, 144, 143)',
				color: 'rgb(43, 144, 143)',
				fillColor: 'rgb(119, 206, 199)',
				data: [
					['1', 80],
					['2', 59],
					['3', 52],
					['4', 32],
					['5', 31],
					['6', 68],
					['7', 100],
					['8', 84],
					['9', 168],
					['10', 159],
					['11', 146],
					['12', 135],
					['13', 67],
					['14', 72],
					['15', 40],
					['16', 72],
					['17', 52],
					['18', 70],
					['19',48],
					['20', 55],
					['21',88],
					['22', 85],
					['23', 70],
					['24', 78],
					['25', 70],
					['26', 62],
					['27', 67],
					['28', 60],
					['29', 63],
					['30', 66],
					['31', 61],
				]
			}]
		});
	</script>

	<!-- 词云图 -->
	<script>
		var text2=" 稳定就业 稳定就业 稳定就业 创业 稳定 职业规划 跨境电商 创业 稳定 职业规划 跨境电商 创业 稳定 职业规划 跨境电商 创业 稳定 职业规划 跨境电商 创业 稳定 职业规划 跨境电商 创业 稳定 职业规划 跨境电商 创业 稳定 创业 稳定 创业 稳定创业 稳定  跨境电商 创业 稳定 职业规划 跨境电商 创业 稳定 职业规划 跨境电商 策划 趋势 压力 专业 加班 经验 策划 趋势 压力 专业 加班 经验 策划 趋势 压力 专业 加班 经验 策划 趋势 压力 专业 加班 经验 策划 趋势 压力 专业 加班 经验 策划 经验 策划 经验 策划 趋势 压力 专业 加班 专业 加班 专业 加班 专业 加班 专业 加班 经验 学生 学生 学生 学生 学生 学生 学生 学生 学生 学生 学生 学生 学生  大专  大专  大专 大专 大专 大专 大专  大专 高薪 高薪 高薪 高薪 高薪 高薪 应届生 应届生 应届生 应届生 应届生 应届生 应届生 应届生 应届生 应届生 试用期  试用期 试用期 试用期 试用期 试用期 薪水 薪水 薪水 薪水 薪水 薪水 薪水 薪水 薪水 薪水 薪水 薪水 薪水 薪水 薪水 薪水 薪水 薪水 薪水 薪水 薪水 薪水 薪水  面试  面试  面试  面试  面试  面试  面试  面试  面试  面试  面试  面试  面试  面试  面试  面试  面试  面试  面试  面试  面试  面试  面试  面试 转行 转行 转行 转行 转行 转行 转行 转行  新媒体  新媒体  新媒体  新媒体  新媒体  新媒体  新媒体  新媒体  新媒体  创新 创新 创新 创新 创新 创新 创新 创新 创新 创新"
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
		Highcharts.chart('wordcould', {
			series: [{
				type: 'wordcloud',
				data: data
			}],
			title: {
				text: '今日提问关键词TOP20',
				style: {
					fontFamily: 'Arial',
		                fontSize: 18,
		                fontStyle: 'normal',
		                fontWeight: 'bold',
					},
		
			}
		});

	</script>

	<!-- 昨日职业搜索指数 halfcircle1 -->
	<script>
		Highcharts.chart('halfcircle1', {
			colors: ['#FFD700', '#C0C0C0', '#CD7F32'],
			chart: {
				type: 'column',
				inverted: true,
				polar: true
			},
			title: {
				text: '昨日职业搜索指数(TOP 10)',
		        style: {
					fontFamily: 'Arial',
		                fontSize: 18,
		                fontStyle: 'normal',
		                fontWeight: 'bold',
					},
			},
			tooltip: {
				outside: true
			},
			pane: {
				size: '85%',
				endAngle: 270
			},
			legend:{
				enabled: false,
			},
			xAxis: {
				tickInterval: 1,
				labels: {
					align: 'right',
					useHTML: true,
					allowOverlap: true,
					step: 1,
					y: 4,
					style: {
						fontSize: '12px',
		                fontWeight:'bold'
					}
				},
				lineWidth: 0,
				categories: [
					'实习',
					'后勤',
					'市场营销',
					'Java技术员',
					'产品运营',
					'网络推广',
					'算法工程师',
					'产品经理',
					'UI设计师',
					'平面设计',
				]
			},
			yAxis: {
				lineWidth: 0,
				tickInterval: 500,
				reversedStacks: false,
				endOnTick: true,
				showLastLabel: true,
		        labels: {
		
					style: {
		                    fontSize: '12px',
		                    fontWeight: 'bold'
		                }
				}
			},
			plotOptions: {
				column: {
					stacking: 'normal',
					borderWidth: 0,
					pointPadding: 0,
					groupPadding: 0.25
				}
			},
			series: [{
				name: '',
				data: [8098,7879,6834,6599,5490,4789,4089,3777,2897,1900]
			}]
		});
	</script>

	<!-- 昨日企业搜索指数halfcircle2 -->
	<script>
	  Highcharts.chart('halfcircle2', {
	   colors: ['#a3ebb9', '#C0C0C0', '#CD7F32'],
	   chart: {
	    type: 'column',
	    inverted: true,
	    polar: true
	   },
	   title: {
	    text: '昨日企业搜索指数(TOP 10)',
	          style: {
	     fontFamily: 'Arial',
	                  fontSize: 18,
	                  fontStyle: 'normal',
	                  fontWeight: 'bold',
	     },
	   },
	   tooltip: {
	    outside: true
	   },
	   pane: {
	    size: '85%',
	    endAngle: 270
	   },
	   legend:{
	    enabled: false,
	   },
	   xAxis: {
	    tickInterval: 1,
	    labels: {
	     align: 'right',
	     useHTML: true,
	     allowOverlap: true,
	     step: 1,
	     y: 4,
	     style: {
	      fontSize: '12px',
	                  fontWeight:'bold'
	     }
	    },
	    lineWidth: 0,
	    categories: [
	     '琳俊网络',
	     '广筑信息技术',
	     '亿牛科技',
	     '梅每珠宝',
	     '企鹊桥',
	     '美术宝',
	     '跟谁学',
	     '德悦',
	     '亦优贸易',
	     '嗳玖设计',
	    ]
	   },
	   yAxis: {
	    lineWidth: 0,
	    tickInterval: 100,
	    reversedStacks: false,
	    endOnTick: true,
	    showLastLabel: true,
	          labels: {
	  
	     style: {
	                      fontSize: '12px',
	                      fontWeight: 'bold'
	                  }
	    }
	   },
	   plotOptions: {
	    column: {
	     stacking: 'normal',
	     borderWidth: 0,
	     pointPadding: 0,
	     groupPadding: 0.25
	    }
	   },
	   series: [{
	    name: '',
	    data: [3098,2879,2434,2599,1490,1189,489,377,287,190]
	   }]
	  });
	</script>
	
	<!-- 平台用户信息总览 barpie -->
	<script type="text/javascript">
		var dom = document.getElementById("barpie");
		var myChart = echarts.init(dom);
		var app = {};
		var builderJson = {
		
		"charts": {
		  "高中及以下": 1330,
		  "博士及以上": 765,
		  "硕士": 2561,
		  "大专": 4778,
		  "本科": 9055,
		  "其他":3089
		
		},
		"components": {
		  "100k以上": 288,
		  "50-100k": 675,
		  "5k以下": 680,
		  "10k-50k": 3466,
		  "8k-10k": 2736,
		  "5k-8k": 6944,
		  "暂无工作":10893
		
		},
		
		};
		
		var downloadJson = {
		"男性": 4773,
		"女性": 3079,
		"空白": 210,
		
		};
		
		var themeJson = {
		"20岁以下": 1294,
		"20-30岁": 3325,
		"30-40岁": 2608,
		"40-50岁": 1321,
		"50岁以上": 1179
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
		      text: '收入分布',
		      left: '25%',
		      top:'50%',
		      textAlign: 'center'
		  },  {
		      text: '性别分布',
		      left: '75%',
		      textAlign: 'center'
		  }, {
		      text: '年龄分布',
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
		          fontSize : 14      //更改坐标轴文字大小
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
		          fontSize : 14      //更改坐标轴文字大小
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
		          fontSize : 14      //更改坐标轴文字大小
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
		          fontSize : 14      //更改坐标轴文字大小
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
		          color: '#91cd76'
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
		          color: '#fac958'
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
		      
		      
		      center: ['75%', '25%'],
		      color:['#9dc8f1','#acf29e','#d7797f'],
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
		      color:['#d7797f','#9dc8f1','#acf29e','#e2b864','#859dd5'],
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

	<!-- 平台用户就业情况 pie -->
	<script>
		Highcharts.setOptions({
		colors: ['#7cb5ec','#90ed7d'],
	});
	var chart=Highcharts.chart('pie', {
		title: {
			text: '平台用户<br>就业情况',
			align: 'center',
			verticalAlign: 'middle',
			y: 70,
	        style: {
				fontFamily: 'Arial',
	                fontSize: 18,
	                fontStyle: 'normal',
	                fontWeight: 'bold',
				},
		},
		tooltip: {
			headerFormat: '{series.name}<br>',
			pointFormat: '{point.name}: <b>{point.percentage:.1f}%</b>'
		},
		plotOptions: {
			pie: {
				dataLabels: {
					enabled: true,
					distance: -50,
					style: {
						fontWeight: 'bold',
						color: 'white',
						textShadow: '0px 1px 2px black',
						fontSize:14
					}
				},
				startAngle: -90, // 圆环的开始角度
				endAngle: 90,    // 圆环的结束角度
				center: ['50%', '75%']
			}
		},
		series: [{
			type: 'pie',
			name: '平台用户占比',
			innerSize: '50%',
			data: [
				['就业',2918.0],
				['未就业',4928.8],
			]
		}]
	});

    </script>
	
	<!-- 地图分布 map -->	
	<script>
	var chartDom = document.getElementById('map');
	var myChart = echarts.init(chartDom);
	var option;
	
	var data = [
	     {name: '海门', value: 9},
	     {name: '鄂尔多斯', value: 12},
	     {name: '招远', value: 12},
	     {name: '舟山', value: 12},
	     {name: '齐齐哈尔', value: 14},
	     {name: '盐城', value: 15},
	     {name: '赤峰', value: 16},
	     {name: '青岛', value: 18},
	     {name: '乳山', value: 18},
	     {name: '金昌', value: 19},
	     {name: '泉州', value: 21},
	     {name: '莱西', value: 21},
	     {name: '日照', value: 21},
	     {name: '胶南', value: 22},
	     {name: '南通', value: 23},
	     {name: '拉萨', value: 24},
	     {name: '云浮', value: 24},
	     {name: '梅州', value: 25},
	     {name: '文登', value: 25},
	     {name: '上海', value: 325},
	     {name: '攀枝花', value: 25},
	     {name: '威海', value: 25},
	     {name: '承德', value: 25},
	     {name: '厦门', value: 226},
	     {name: '汕尾', value: 26},
	     {name: '潮州', value: 26},
	     {name: '丹东', value: 27},
	     {name: '太仓', value: 27},
	     {name: '曲靖', value: 27},
	     {name: '烟台', value: 28},
	     {name: '福州', value: 29},
	     {name: '瓦房店', value: 30},
	     {name: '即墨', value: 30},
	     {name: '抚顺', value: 31},
	     {name: '玉溪', value: 31},
	     {name: '张家口', value: 31},
	     {name: '阳泉', value: 31},
	     {name: '莱州', value: 32},
	     {name: '湖州', value: 132},
	     {name: '汕头', value: 32},
	     {name: '昆山', value: 33},
	     {name: '宁波', value: 33},
	     {name: '湛江', value: 33},
	     {name: '揭阳', value: 34},
	     {name: '荣成', value: 34},
	     {name: '连云港', value: 35},
	     {name: '葫芦岛', value: 35},
	     {name: '常熟', value: 36},
	     {name: '东莞', value: 36},
	     {name: '河源', value: 36},
	     {name: '淮安', value: 36},
	     {name: '泰州', value: 36},
	     {name: '南宁', value: 37},
	     {name: '营口', value: 37},
	     {name: '惠州', value: 37},
	     {name: '江阴', value: 37},
	     {name: '蓬莱', value: 37},
	     {name: '韶关', value: 38},
	     {name: '嘉峪关', value: 38},
	     {name: '广州', value: 238},
	     {name: '延安', value: 38},
	     {name: '太原', value: 39},
	     {name: '清远', value: 39},
	     {name: '中山', value: 39},
	     {name: '昆明', value: 39},
	     {name: '寿光', value: 40},
	     {name: '盘锦', value: 40},
	     {name: '长治', value: 41},
	     {name: '深圳', value: 241},
	     {name: '珠海', value: 42},
	     {name: '宿迁', value: 43},
	     {name: '咸阳', value: 43},
	     {name: '铜川', value: 44},
	     {name: '平度', value: 44},
	     {name: '佛山', value: 44},
	     {name: '海口', value: 44},
	     {name: '江门', value: 45},
	     {name: '章丘', value: 45},
	     {name: '肇庆', value: 46},
	     {name: '大连', value: 47},
	     {name: '临汾', value: 47},
	     {name: '吴江', value: 47},
	     {name: '石嘴山', value: 49},
	     {name: '沈阳', value: 50},
	     {name: '苏州', value: 250},
	     {name: '茂名', value: 50},
	     {name: '嘉兴', value: 51},
	     {name: '长春', value: 51},
	     {name: '胶州', value: 52},
	     {name: '银川', value: 52},
	     {name: '张家港', value: 52},
	     {name: '三门峡', value: 53},
	     {name: '锦州', value: 54},
	     {name: '南昌', value: 154},
	     {name: '柳州', value: 54},
	     {name: '三亚', value: 54},
	     {name: '自贡', value: 56},
	     {name: '吉林', value: 56},
	     {name: '阳江', value: 57},
	     {name: '泸州', value: 57},
	     {name: '西宁', value: 57},
	     {name: '宜宾', value: 58},
	     {name: '呼和浩特', value: 58},
	     {name: '成都', value: 158},
	     {name: '大同', value: 58},
	     {name: '镇江', value: 59},
	     {name: '桂林', value: 59},
	     {name: '张家界', value: 59},
	     {name: '宜兴', value: 59},
	     {name: '北海', value: 60},
	     {name: '西安', value: 61},
	     {name: '金坛', value: 62},
	     {name: '东营', value: 62},
	     {name: '牡丹江', value: 63},
	     {name: '遵义', value: 63},
	     {name: '绍兴', value: 63},
	     {name: '扬州', value: 64},
	     {name: '常州', value: 64},
	     {name: '潍坊', value: 65},
	     {name: '重庆', value: 266},
	     {name: '台州', value: 67},
	     {name: '南京', value: 267},
	     {name: '滨州', value: 70},
	     {name: '贵阳', value: 71},
	     {name: '无锡', value: 71},
	     {name: '本溪', value: 71},
	     {name: '克拉玛依', value: 72},
	     {name: '渭南', value: 72},
	     {name: '马鞍山', value: 72},
	     {name: '宝鸡', value: 72},
	     {name: '焦作', value: 75},
	     {name: '句容', value: 75},
	     {name: '北京', value: 379},
	     {name: '徐州', value: 79},
	     {name: '衡水', value: 180},
	     {name: '包头', value: 80},
	     {name: '绵阳', value: 80},
	     {name: '乌鲁木齐', value: 84},
	     {name: '枣庄', value: 84},
	     {name: '杭州', value: 384},
	     {name: '淄博', value: 85},
	     {name: '鞍山', value: 86},
	     {name: '溧阳', value: 86},
	     {name: '库尔勒', value: 86},
	     {name: '安阳', value: 90},
	     {name: '开封', value: 90},
	     {name: '济南', value: 92},
	     {name: '德阳', value: 93},
	     {name: '温州', value: 95},
	     {name: '九江', value: 96},
	     {name: '邯郸', value: 98},
	     {name: '临安', value: 99},
	     {name: '兰州', value: 99},
	     {name: '沧州', value: 100},
	     {name: '临沂', value: 103},
	     {name: '南充', value: 104},
	     {name: '天津', value: 105},
	     {name: '富阳', value: 106},
	     {name: '泰安', value: 112},
	     {name: '诸暨', value: 112},
	     {name: '郑州', value: 113},
	     {name: '哈尔滨', value: 114},
	     {name: '聊城', value: 116},
	     {name: '芜湖', value: 117},
	     {name: '唐山', value: 119},
	     {name: '平顶山', value: 119},
	     {name: '邢台', value: 119},
	     {name: '德州', value: 120},
	     {name: '济宁', value: 120},
	     {name: '荆州', value: 127},
	     {name: '宜昌', value: 130},
	     {name: '义乌', value: 232},
	     {name: '丽水', value: 133},
	     {name: '洛阳', value: 134},
	     {name: '秦皇岛', value: 136},
	     {name: '株洲', value: 143},
	     {name: '石家庄', value: 147},
	     {name: '莱芜', value: 148},
	     {name: '常德', value: 152},
	     {name: '保定', value: 153},
	     {name: '湘潭', value: 154},
	     {name: '金华', value: 157},
	     {name: '岳阳', value: 169},
	     {name: '长沙', value: 175},
	     {name: '衢州', value: 177},
	     {name: '廊坊', value: 193},
	     {name: '菏泽', value: 194},
	     {name: '合肥', value: 229},
	     {name: '武汉', value: 103},
	     {name: '大庆', value: 79}
	];
	var geoCoordMap = {
	    '海门':[121.15,31.89],
	    '鄂尔多斯':[109.781327,39.608266],
	    '招远':[120.38,37.35],
	    '舟山':[122.207216,29.985295],
	    '齐齐哈尔':[123.97,47.33],
	    '盐城':[120.13,33.38],
	    '赤峰':[118.87,42.28],
	    '青岛':[120.33,36.07],
	    '乳山':[121.52,36.89],
	    '金昌':[102.188043,38.520089],
	    '泉州':[118.58,24.93],
	    '莱西':[120.53,36.86],
	    '日照':[119.46,35.42],
	    '胶南':[119.97,35.88],
	    '南通':[121.05,32.08],
	    '拉萨':[91.11,29.97],
	    '云浮':[112.02,22.93],
	    '梅州':[116.1,24.55],
	    '文登':[122.05,37.2],
	    '上海':[121.48,31.22],
	    '攀枝花':[101.718637,26.582347],
	    '威海':[122.1,37.5],
	    '承德':[117.93,40.97],
	    '厦门':[118.1,24.46],
	    '汕尾':[115.375279,22.786211],
	    '潮州':[116.63,23.68],
	    '丹东':[124.37,40.13],
	    '太仓':[121.1,31.45],
	    '曲靖':[103.79,25.51],
	    '烟台':[121.39,37.52],
	    '福州':[119.3,26.08],
	    '瓦房店':[121.979603,39.627114],
	    '即墨':[120.45,36.38],
	    '抚顺':[123.97,41.97],
	    '玉溪':[102.52,24.35],
	    '张家口':[114.87,40.82],
	    '阳泉':[113.57,37.85],
	    '莱州':[119.942327,37.177017],
	    '湖州':[120.1,30.86],
	    '汕头':[116.69,23.39],
	    '昆山':[120.95,31.39],
	    '宁波':[121.56,29.86],
	    '湛江':[110.359377,21.270708],
	    '揭阳':[116.35,23.55],
	    '荣成':[122.41,37.16],
	    '连云港':[119.16,34.59],
	    '葫芦岛':[120.836932,40.711052],
	    '常熟':[120.74,31.64],
	    '东莞':[113.75,23.04],
	    '河源':[114.68,23.73],
	    '淮安':[119.15,33.5],
	    '泰州':[119.9,32.49],
	    '南宁':[108.33,22.84],
	    '营口':[122.18,40.65],
	    '惠州':[114.4,23.09],
	    '江阴':[120.26,31.91],
	    '蓬莱':[120.75,37.8],
	    '韶关':[113.62,24.84],
	    '嘉峪关':[98.289152,39.77313],
	    '广州':[113.23,23.16],
	    '延安':[109.47,36.6],
	    '太原':[112.53,37.87],
	    '清远':[113.01,23.7],
	    '中山':[113.38,22.52],
	    '昆明':[102.73,25.04],
	    '寿光':[118.73,36.86],
	    '盘锦':[122.070714,41.119997],
	    '长治':[113.08,36.18],
	    '深圳':[114.07,22.62],
	    '珠海':[113.52,22.3],
	    '宿迁':[118.3,33.96],
	    '咸阳':[108.72,34.36],
	    '铜川':[109.11,35.09],
	    '平度':[119.97,36.77],
	    '佛山':[113.11,23.05],
	    '海口':[110.35,20.02],
	    '江门':[113.06,22.61],
	    '章丘':[117.53,36.72],
	    '肇庆':[112.44,23.05],
	    '大连':[121.62,38.92],
	    '临汾':[111.5,36.08],
	    '吴江':[120.63,31.16],
	    '石嘴山':[106.39,39.04],
	    '沈阳':[123.38,41.8],
	    '苏州':[120.62,31.32],
	    '茂名':[110.88,21.68],
	    '嘉兴':[120.76,30.77],
	    '长春':[125.35,43.88],
	    '胶州':[120.03336,36.264622],
	    '银川':[106.27,38.47],
	    '张家港':[120.555821,31.875428],
	    '三门峡':[111.19,34.76],
	    '锦州':[121.15,41.13],
	    '南昌':[115.89,28.68],
	    '柳州':[109.4,24.33],
	    '三亚':[109.511909,18.252847],
	    '自贡':[104.778442,29.33903],
	    '吉林':[126.57,43.87],
	    '阳江':[111.95,21.85],
	    '泸州':[105.39,28.91],
	    '西宁':[101.74,36.56],
	    '宜宾':[104.56,29.77],
	    '呼和浩特':[111.65,40.82],
	    '成都':[104.06,30.67],
	    '大同':[113.3,40.12],
	    '镇江':[119.44,32.2],
	    '桂林':[110.28,25.29],
	    '张家界':[110.479191,29.117096],
	    '宜兴':[119.82,31.36],
	    '北海':[109.12,21.49],
	    '西安':[108.95,34.27],
	    '金坛':[119.56,31.74],
	    '东营':[118.49,37.46],
	    '牡丹江':[129.58,44.6],
	    '遵义':[106.9,27.7],
	    '绍兴':[120.58,30.01],
	    '扬州':[119.42,32.39],
	    '常州':[119.95,31.79],
	    '潍坊':[119.1,36.62],
	    '重庆':[106.54,29.59],
	    '台州':[121.420757,28.656386],
	    '南京':[118.78,32.04],
	    '滨州':[118.03,37.36],
	    '贵阳':[106.71,26.57],
	    '无锡':[120.29,31.59],
	    '本溪':[123.73,41.3],
	    '克拉玛依':[84.77,45.59],
	    '渭南':[109.5,34.52],
	    '马鞍山':[118.48,31.56],
	    '宝鸡':[107.15,34.38],
	    '焦作':[113.21,35.24],
	    '句容':[119.16,31.95],
	    '北京':[116.46,39.92],
	    '徐州':[117.2,34.26],
	    '衡水':[115.72,37.72],
	    '包头':[110,40.58],
	    '绵阳':[104.73,31.48],
	    '乌鲁木齐':[87.68,43.77],
	    '枣庄':[117.57,34.86],
	    '杭州':[120.19,30.26],
	    '淄博':[118.05,36.78],
	    '鞍山':[122.85,41.12],
	    '溧阳':[119.48,31.43],
	    '库尔勒':[86.06,41.68],
	    '安阳':[114.35,36.1],
	    '开封':[114.35,34.79],
	    '济南':[117,36.65],
	    '德阳':[104.37,31.13],
	    '温州':[120.65,28.01],
	    '九江':[115.97,29.71],
	    '邯郸':[114.47,36.6],
	    '临安':[119.72,30.23],
	    '兰州':[103.73,36.03],
	    '沧州':[116.83,38.33],
	    '临沂':[118.35,35.05],
	    '南充':[106.110698,30.837793],
	    '天津':[117.2,39.13],
	    '富阳':[119.95,30.07],
	    '泰安':[117.13,36.18],
	    '诸暨':[120.23,29.71],
	    '郑州':[113.65,34.76],
	    '哈尔滨':[126.63,45.75],
	    '聊城':[115.97,36.45],
	    '芜湖':[118.38,31.33],
	    '唐山':[118.02,39.63],
	    '平顶山':[113.29,33.75],
	    '邢台':[114.48,37.05],
	    '德州':[116.29,37.45],
	    '济宁':[116.59,35.38],
	    '荆州':[112.239741,30.335165],
	    '宜昌':[111.3,30.7],
	    '义乌':[120.06,29.32],
	    '丽水':[119.92,28.45],
	    '洛阳':[112.44,34.7],
	    '秦皇岛':[119.57,39.95],
	    '株洲':[113.16,27.83],
	    '石家庄':[114.48,38.03],
	    '莱芜':[117.67,36.19],
	    '常德':[111.69,29.05],
	    '保定':[115.48,38.85],
	    '湘潭':[112.91,27.87],
	    '金华':[119.64,29.12],
	    '岳阳':[113.09,29.37],
	    '长沙':[113,28.21],
	    '衢州':[118.88,28.97],
	    '廊坊':[116.7,39.53],
	    '菏泽':[115.480656,35.23375],
	    '合肥':[117.27,31.86],
	    '武汉':[114.31,30.52],
	    '大庆':[125.03,46.58]
	};
	
	var convertData = function (data) {
	    var res = [];
	    for (var i = 0; i < data.length; i++) {
	        var geoCoord = geoCoordMap[data[i].name];
	        if (geoCoord) {
	            res.push({
	                name: data[i].name,
	                value: geoCoord.concat(data[i].value)
	            });
	        }
	    }
	    return res;
	};
	
	option = {
	    title: {
	    	show:false,
	        text: '平台用户地域分布',
	        //subtext: 'data from PM25.in',
	        //sublink: 'http://www.pm25.in',
	        top:18,
	        left: 'center',
	        textStyle: {
	            color: '#000',
	            fontSize:30
	        }
	    },
	    tooltip : {
	        trigger: 'item'
	    },
	    bmap: {
	        center: [165.114129, 23.550339],
	        zoom: 5,
	        roam: true,
	        mapStyle: {
	            styleJson: [{
	                'featureType': 'water',
	                'elementType': 'all',
	                'stylers': {
	                    'color': '#d1d1d1'
	                }
	            }, {
	                'featureType': 'land',
	                'elementType': 'all',
	                'stylers': {
	                    'color': '#f3f3f3'
	                }
	            }, {
	                'featureType': 'railway',
	                'elementType': 'all',
	                'stylers': {
	                    'visibility': 'off'
	                }
	            }, {
	                'featureType': 'highway',
	                'elementType': 'all',
	                'stylers': {
	                    'color': '#fdfdfd'
	                }
	            }, {
	                'featureType': 'highway',
	                'elementType': 'labels',
	                'stylers': {
	                    'visibility': 'off'
	                }
	            }, {
	                'featureType': 'arterial',
	                'elementType': 'geometry',
	                'stylers': {
	                    'color': '#fefefe'
	                }
	            }, {
	                'featureType': 'arterial',
	                'elementType': 'geometry.fill',
	                'stylers': {
	                    'color': '#fefefe'
	                }
	            }, {
	                'featureType': 'poi',
	                'elementType': 'all',
	                'stylers': {
	                    'visibility': 'off'
	                }
	            }, {
	                'featureType': 'green',
	                'elementType': 'all',
	                'stylers': {
	                    'visibility': 'off'
	                }
	            }, {
	                'featureType': 'subway',
	                'elementType': 'all',
	                'stylers': {
	                    'visibility': 'off'
	                }
	            }, {
	                'featureType': 'manmade',
	                'elementType': 'all',
	                'stylers': {
	                    'color': '#d1d1d1'
	                }
	            }, {
	                'featureType': 'local',
	                'elementType': 'all',
	                'stylers': {
	                    'color': '#d1d1d1'
	                }
	            }, {
	                'featureType': 'arterial',
	                'elementType': 'labels',
	                'stylers': {
	                    'visibility': 'off'
	                }
	            }, {
	                'featureType': 'boundary',
	                'elementType': 'all',
	                'stylers': {
	                    'color': '#fefefe'
	                }
	            }, {
	                'featureType': 'building',
	                'elementType': 'all',
	                'stylers': {
	                    'color': '#d1d1d1'
	                }
	            }, {
	                'featureType': 'label',
	                'elementType': 'labels.text.fill',
	                'stylers': {
	                    'color': '#999999'
	                }
	            }]
	        }
	    },
	    series : [
	        {
	            name: 'pm2.5',
	            type: 'scatter',
	            coordinateSystem: 'bmap',
	            data: convertData(data),
	            symbolSize: function (val) {
	                return val[2] / 10;
	            },
	            encode: {
	                value: 2
	            },
	            label: {
	                formatter: '{b}',
	                position: 'right',
	                show: false
	            },
	            emphasis: {
	                label: {
	                    show: true
	                }
	            }
	        },
	        {
	            name: 'Top 5',
	            type: 'effectScatter',
	            coordinateSystem: 'bmap',
	            data: convertData(data.sort(function (a, b) {
	                return b.value - a.value;
	            }).slice(0, 6)),
	            symbolSize: function (val) {
	                return val[2] / 10;
	            },
	            encode: {
	                value: 2
	            },
	            showEffectOn: 'render',
	            rippleEffect: {
	                brushType: 'stroke'
	            },
	            hoverAnimation: true,
	            label: {
	                formatter: '{b}',
	                position: 'right',
	                show: true
	            },
	            itemStyle: {
	                shadowBlur: 10,
	                shadowColor: '#333'
	            },
	            zlevel: 1
	        }
	    ]
	};
	option && myChart.setOption(option);
	
	</script>

</body>
</html>
