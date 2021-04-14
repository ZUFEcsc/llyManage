<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%><!DOCTYPE html>
<html>
<head>
<%@ include file="bootstrap.jsp"%>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<title>企业评价</title>
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

		<%@ include file="user-header.jsp"%>

		<div class="layui-layout-body">
			<div class="layui-row layui-col-space10 layui-bg-gray"
				style="padding: 5px;">
				<div class="layui-col-md12">
					<div class="layui-card">
						<div class="layui-card-header" style="text-align: center;">
							<a class="layui-btn-xs" href="userCenter.jsp" style="float:left;margin:10px 10px;"> <i
														class="iconfont icon-ziyuan25"
														style="font-size: 22px; color: #16c2c2;"></i> 返回
												</a>
							<strong style="font-size: 24px;">创新创业公司评价总览</strong>
						</div>
					</div>
				</div>
				<div class="layui-col-md4">
					<div class="layui-card">
						<div class="layui-card-body">

							<div id="bar"
								style="margin-left: -15px; width: 490px; height: 330px;"></div>

						</div>
					</div>
					<div class="layui-card">
						<div class="layui-card-body">
							<!-- border:solid 1px black; -->
							<div id="linebar"
								style="margin-left: -20px; width: 500px; height: 320px;"></div>
						</div>
					</div>
				</div>


				<div class="layui-col-md4">
					<div class="layui-card">
						<div class="layui-card-body">
							<!-- border: solid 1px black; -->
							<div id="pie"
								style="margin-left: -15px; width: 490px; height: 330px;">
							</div>
						</div>
					</div>

					<div class="layui-card">
						<div class="layui-card-body">
							<div id="rader"
								style="margin-left: -20px; width: 500px; height: 295px;"></div>
							<!-- border: solid 1px black; -->
						</div>
					</div>
				</div>

				<div class="layui-col-md4">
					<div class="layui-card">
						<div class="layui-card-body">
							<div id="wordcloud"
								style="margin-left: -15px; width: 490px; height: 670px;"></div>
						</div>
					</div>

					<!-- 
					<div class="layui-card">
						<div class="layui-card-header" style="text-align: center;">
							<strong style="font-size: 18px;">综合信用得分</strong>
						</div>
						<div class="layui-card-body" style="margin-left: -15px;"></div>
					</div> 
					-->
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

	<!-- 柱形图 -->
	<script type="text/javascript">
		var dom = document.getElementById("linebar");
		var myChart = echarts.init(dom);
		var app = {};
		
		// Generate data
		var category = [];
		var dottedBase = +new Date();
		var lineData = [];
		var barData = [];
		
		barData=['67','67','77','88','86','76','75','79','80','91','78','90'];
		lineData=['92','97','87','91','98','88','89','93','94','91','98','95'];
		categorys=['2020-01','2020-02','2020-03','2020-04','2020-05','2020-06','2020-07','2020-08','2020-09','2020-10','2020-11','2020-12']
		// option
		option = {
		    title:{
		        show:true,
		        text:"本年度绩效评价",
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
		            type: 'shadow'
		        }
		    },
		    legend: {
		        data: ['最高评分', '个人得分'],
		        textStyle: {
		            color: '#ccc'
		        },
		
		        x:530, // 'center' | 'left' | {number},
		        y:00, // 'center' | 'bottom' | {number}
		        textStyle : {
		　　　　　　　　fontWeight : 'normal',
		　　　　　　　　fontSize : 14,
		　　　　　　},
		        borderColor: 'rgba(89, 100, 114,0.8)',
		        borderWidth: 2,
		    },
		    xAxis: {
		        data: categorys,
		        axisLine: {
		            lineStyle: {
		                color: '#ccc'
		            }
		        },
		        axisLabel: {
		       show: true,
		        textStyle: {
		          color: '#000',  //更改坐标轴文字颜色
		          fontSize : 14      //更改坐标轴文字大小
		        }
		     },
		
		    },
		    yAxis: {
		        splitLine: {show: false},
		        axisLine: {
		            lineStyle: {
		                color: '#ccc'
		            }
		        },axisLabel: {
		       show: true,
		        textStyle: {
		          color: '#000',  //更改坐标轴文字颜色
		          fontSize : 14      //更改坐标轴文字大小
		        }
		     },
		    },
		    series: [{
		        name: '最高评分',
		        type: 'line',
		        smooth: true,
		        showAllSymbol: true,
		        symbol: 'emptyCircle',
		        symbolSize:22,
		        data: lineData
		    }, {
		        name: '个人得分',
		        type: 'bar',
		        barWidth: 22,
		        itemStyle: {
		            barBorderRadius: 5,
		            color: new echarts.graphic.LinearGradient(
		                0, 0, 0, 1,
		                [
		                    {offset: 0, color: '#14c8d4'},
		                    {offset: 1, color: '#43eec6'}
		                ]
		            )
		        },
		        data: barData
		    }, {
		        name: '最高评分',
		        type: 'bar',
		        barGap: '-100%',
		        barWidth: 22,
		        itemStyle: {
		            color: new echarts.graphic.LinearGradient(
		                0, 0, 0, 1,
		                [
		                    {offset: 0, color: 'rgba(20,200,212,0.5)'},
		                    {offset: 0.2, color: 'rgba(20,200,212,0.2)'},
		                    {offset: 1, color: 'rgba(20,200,212,0)'}
		                ]
		            )
		        },
		        z: -12,
		        data: lineData
		    }]
		};
		
		myChart.setOption(option);

	</script>

	<!-- 柱形图2 -->
	<script>
       var chart = Highcharts.chart('bar', {
			chart: {
				type: 'column',
				options3d: {
					enabled: true,
					alpha: 0,
					beta: 0,
					viewDistance: 25,
					depth: 40
				},
				marginTop: 80,
				marginRight: 40
			},
			title: {
				text: '综合评分',
				style: {
					fontFamily: 'Arial',
		                fontSize: 18,
		                fontStyle: 'normal',
		                fontWeight: 'bold',
					},
		
			},
			xAxis: {
				categories:['工作量', '工作效率', '团队能力', '贡献力', '创造力', '领导力'],
				labels: {
		                style: {
		                    fontSize: '12px',
		                    fontWeight: 'bold'
		                }
		            }
		
			},
			yAxis: {
				allowDecimals: false,
				min: 0,
				title: {
					text: '评分',
					style: {
						color:'#596472',
		                fontSize: 12,
		                fontStyle: 'normal',
		                fontWeight: 'bold',
					},
				},
				labels: {
		                style: {
		                    fontSize: '12px',
		                    fontWeight: 'bold'
		                }
		            }
		
		
		
			},
			legend : {
		    itemStyle : {
		        'fontSize' : '12px'
		    }
		},
			tooltip: {
				headerFormat: '<b>{point.key}</b><br>',
				pointFormat: '<span style="color:{series.color}">\u25CF</span> {series.name}: {point.y} / {point.stackTotal}'
			},
			plotOptions: {
				column: {
					stacking: 'normal',
					depth: 40
				}
			},
			series: [{
				name: '部门平均得分',
				data: [ 23, 44, 57, 62,87,77],
				stack: 'male',
				color:'#90ed7d'
			}, {
				name: '个人得分',
				data: [30, 40, 34, 95,88,76],
				stack: 'female',
				color:'#f7a35c'
			}]
		});
    </script>

	<!-- 饼图 -->
	<script>
		Highcharts.getOptions().colors = ['#3ba272','#fac858','#91cc75','#ee6666','#73c0de','#5470c6'];
		var chart = Highcharts.chart('pie', {
			chart: {
				type: 'pie',
				options3d: {
					enabled: true,
					alpha: 45
				}
			},
			title: {
		                text: "总体考勤情况",
		
		                style: {//主标题文本样式{"fontSize": 18,"fontWeight": "bolder","color": "#333"}
		                    fontFamily: 'Arial',
		                    fontSize: 18,
		                    fontStyle: 'normal',
		                    fontWeight: 'bold',
		                },
		            },
			plotOptions: {
				pie: {
					innerSize: 100,
					depth: 45,
						dataLabels: {
		                                enabled: true,
		                                format: '<b>{point.name}</b>: {point.percentage:.1f} %',
		                                style: {
		                                    fontSize: '14px',//这个是改饼状图里面显示的字体
		                                        color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'                    
		                                }
		                        }
				}
			},
			series: [{
				name: '考勤情况',
				data: [
					['请假', 31],
					['假期', 80],
					['迟到', 20],
					['旷工', 6],
					['出勤', 170],
					['早退', 16]
				],
			}]
		});
	</script>

	<!-- 雷达图 -->
	<script type="text/javascript">
	var dom = document.getElementById("rader");
	var myChart = echarts.init(dom);
	var app = {};
	option = {
	    title:{
	        show:true,
	        text:"年度评价",
	        x:'center',
	        y:'top',
	        padding:8,
	        textStyle: {//主标题文本样式{"fontSize": 18,"fontWeight": "bolder","color": "#333"}
	                fontFamily: 'Arial',
	                fontSize: 18,
	                fontStyle: 'normal',
	                fontWeight: 'bold',
	            },
	    },
	
	    angleAxis: {
	        type: 'category',
	        data: ['工作能力', '工作效率', '发展潜力', '交流能力', '喜爱程度'],
	        textStyle : {
	　　　　　　　　fontWeight : 'normal',
	　　　　　　　　fontSize : 14,
	　　　　　　　　
	　　　　　　},
	    },
	    radiusAxis: {
	    },
	    polar: {
	    },
	    series: [{
	        type: 'bar',
	        data: [3, 0, 0, 0, 0],
	        coordinateSystem: 'polar',
	        name: '工作能力',
	        textStyle : {
	　　　　　　　　fontWeight : 'normal',
	　　　　　　　　fontSize : 16,
	　　　　　　　　
	　　　　　　},
	        stack: 'a',
	        emphasis: {
	            focus: 'series'
	        }
	    }, {
	        type: 'bar',
	        data: [0, 4, 0, 0, 0 ],
	        coordinateSystem: 'polar',
	        name: '工作效率',
	        stack: 'a',
	        emphasis: {
	            focus: 'series'
	        }
	    }, {
	        type: 'bar',
	        data: [0,0,4.5,0,0],
	        coordinateSystem: 'polar',
	        name: '发展潜力',
	        stack: 'a',
	        emphasis: {
	            focus: 'series'
	        }
	    }, {
	        type: 'bar',
	        data: [0,0,0,2,0],
	        coordinateSystem: 'polar',
	        name: '交流能力',
	        stack: 'a',
	        emphasis: {
	            focus: 'series'
	        }
	    }, {
	        type: 'bar',
	        data: [0,0,0,0,3.5],
	        coordinateSystem: 'polar',
	        name: '喜爱程度',
	        stack: 'a',
	        emphasis: {
	            focus: 'series'
	        }
	    }],
	    legend: {
	        show: true,
	        data: ['工作能力', '工作效率', '发展潜力', '交流能力', '喜爱程度'],
	        orient: 'vertical', // 'vertical'
	        x:30, // 'center' | 'left' | {number},
	        y:30, // 'center' | 'bottom' | {number}
	        textStyle : {
	　　　　　　　　fontWeight : 'normal',
	　　　　　　　　fontSize : 10,
	　　　　　　},
	        borderColor: 'rgba(89, 100, 114,0.8)',
	        borderWidth: 2,
	    }
	};
	myChart.setOption(option);
	</script>

	<!-- 词云 -->
	<script>
        var text2="聪明 聪明 聪明 聪明 聪明 聪明 聪明 友善 友善 友善 稳重 棒 乐观 积极 积极 粗心 积极 进取 稳重 沉稳 有思想 有思想 有思想 有思想 开朗 乐观 乐观 开朗 积极 粗心 努力 努力 努力 努力 努力 努力 能力强 能力强 学习能力强 学习能力强 技能好 技能好 粗心 懈怠  懈怠 懈怠 懈怠";
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
				text: '个人年末评价关键词云',
				style: {
					fontFamily: 'Arial',
		                fontSize: 18,
		                fontStyle: 'normal',
		                fontWeight: 'bold',
					},
		
			}
		});
	</script>
</body>
</html>
