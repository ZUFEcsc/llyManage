// pages/test/test.js
import * as echarts from '../../ec-canvas/echarts';//需要注意这个地方的路径不用引用错误了
let chart = null;
//自我评价图
function initChart(canvas, width, height) {
    chart = echarts.init(canvas, null, {
        width: 1.2 * width,
        height: 1.2 * height
    });
    canvas.setChart(chart);
    // Generate data

    var barData = ['67', '67', '77', '88', '86', '76', '75', '79', '80', '91', '78', '90'];
    var lineData = ['92', '97', '87', '91', '98', '88', '89', '93', '94', '91', '98', '95'];
    var categorys = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12'];
    // option
    var option = {
        title: {
            show: true,
            text: "本年度绩效评价",
            x: 'center',
            y: 'top',
            padding: 10,
            textStyle: {//主标题文本样式{"fontSize": 18,"fontWeight": "bolder","color": "#333"}
                fontFamily: 'Arial',
                fontSize: 22,
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

            x: 530, // 'center' | 'left' | {number},
            y: 0, // 'center' | 'bottom' | {number}
            textStyle: {
                fontWeight: 'normal',
                fontSize: 18,
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
                    fontSize: 18      //更改坐标轴文字大小
                }
            },

        },
        yAxis: {
            splitLine: { show: false },
            axisLine: {
                lineStyle: {
                    color: '#ccc'
                }
            }, axisLabel: {
                show: true,
                textStyle: {
                    color: '#000',  //更改坐标轴文字颜色
                    fontSize: 18      //更改坐标轴文字大小
                }
            },
        },
        series: [{
            name: '最高评分',
            type: 'line',
            smooth: true,
            showAllSymbol: true,
            symbol: 'emptyCircle',
            symbolSize: 22,
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
                        { offset: 0, color: '#14c8d4' },
                        { offset: 1, color: '#43eec6' }
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
                        { offset: 0, color: 'rgba(20,200,212,0.5)' },
                        { offset: 0.2, color: 'rgba(20,200,212,0.2)' },
                        { offset: 1, color: 'rgba(20,200,212,0)' }
                    ]
                )
            },
            z: -12,
            data: lineData
        }]
    };

    // 为echarts对象加载数据
    chart.setOption(option);
    return chart;
};
//综合能力得分图
function initChart2(canvas, width, height) {
    chart = echarts.init(canvas, null, {
        width: 1.0 * width,
        height: 1.0 * height
    });
    canvas.setChart(chart);
    var option = {
        title:{
            show:true,
            text:"年度评价",
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
    
        angleAxis: {
            type: 'category',
            data: ['工作能力', '工作效率', '发展潜力', '交流能力', '喜爱程度'],
            textStyle : {
    　　　　　　　　fontWeight : 'normal',
    　　　　　　　　fontSize : 40,
    color:'#000'
    　　　　　　　　
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
            textStyle:{
                fontSize:20,
            },
            stack: 'a',
            emphasis: {
                focus: 'series'
            }
        }],
        legend: {
            show: false,
            data: ['工作能力', '工作效率', '发展潜力', '交流能力', '喜爱程度'],
            orient: 'vertical', // 'vertical'
            x:30, // 'center' | 'left' | {number},
            y:30, // 'center' | 'bottom' | {number}
            textStyle : {
    　　　　　　　　fontWeight : 'normal',
    　　　　　　　　fontSize : 18,
    　　　　　　},
            borderColor: 'rgba(89, 100, 114,0.8)',
            borderWidth: 2,
        }
    };
    // 为echarts对象加载数据
    chart.setOption(option);
    return chart;
};

function initChart3(canvas, width, height) {
    chart = echarts.init(canvas, null, {
        width: 1.0 * width,
        height: 1.0 * height
    });
    canvas.setChart(chart);

    var dateList = [
        ['2017-3-1', '初四','出勤'],
        ['2017-3-2', '初五','出勤'],
        ['2017-3-3', '初六','出勤'],
        ['2017-3-4', '初七','假期'],
        ['2017-3-5', '初八','迟到'],
        ['2017-3-6', '初九','出勤'],
        ['2017-3-7', '初十','早退'],
        ['2017-3-8', '十一','出勤'],
        ['2017-3-9', '十二','旷工'],
        ['2017-3-10', '十三','迟到'],
        ['2017-3-11', '十四','假期'],
        ['2017-3-12', '十五','迟到'],
        ['2017-3-13', '十六','出勤'],
        ['2017-3-14', '十七','出勤'],
        ['2017-3-15', '十八','出勤'],
        ['2017-3-16', '十九','早退'],
        ['2017-3-17', '二十','旷工'],
        ['2017-3-18', '廿一','出勤'],
        ['2017-3-19', '廿二','假期'],
        ['2017-3-20', '廿三','出勤'],
        ['2017-3-21', '廿四','出勤'],
        ['2017-3-22', '廿五','请假'],
        ['2017-3-23', '廿六','假期'],
        ['2017-3-24', '廿七','早退'],
        ['2017-3-25', '廿八','出勤'],
        ['2017-3-26', '廿九','出勤'],
        ['2017-3-27', '三十','出勤'],
        ['2017-3-28', '三月','早退'],
        ['2017-3-29', '初二','出勤'],
        ['2017-3-30', '初三','出勤'],
        ['2017-3-31', '初四','出勤'],
    ];
    var heatmapDatas=[1,1,1,2,3,1,4,1,6,3,2,3,1,1,1,4,6,1,2,1,1,5,2,4,1,1,1,4,1,1,1];
    var heatmapData = [];
    var lunarData = [];
    for (var i = 0; i < dateList.length; i++) {
        heatmapData.push([
            dateList[i][0],
            //Math.random() * 300
            heatmapDatas[i]
        ]);
        lunarData.push([
            dateList[i][0],
            1,
            dateList[i][1],
            dateList[i][2]
        ]);
    }

    
    var option = {
        title:{
            show:true,
            text:"本月考勤记录",
            x:'center',
            y:-10,
            padding:10,
            textStyle: {//主标题文本样式{"fontSize": 18,"fontWeight": "bolder","color": "#333"}
                    fontFamily: 'Arial',
                    fontSize: 20,
                    fontStyle: 'normal',
                    fontWeight: 'bold',
                },
        },
    
        tooltip: {
            formatter: function (params) {
                return '降雨量: ' + params.value[1].toFixed(2);
            }
        },
    
        visualMap: {
            show: false,
            min: 1,
            max: 6,
            calculable: true,
            seriesIndex: [2],
            orient: 'horizontal',
            left: 'center',
            bottom: 20,
            inRange: {
                color: ['#FFFFF0', '#20B2AA'],
                //opacity: 0.3
            },
            controller: {
                inRange: {
                    opacity: 0.5
                }
            }
        },
    
        calendar: [{
            left: 'center',
            top: 'middle',
            cellSize: [55, 65],
            yearLabel: {show: false},
            orient: 'vertical',
            dayLabel: {
                firstDay: 1,
                nameMap: 'cn',
                show:true
            },
            monthLabel: {
                show: false
            },
            range: '2017-03'
        }],
    
        series: [{
            type: 'scatter',
            coordinateSystem: 'calendar',
            symbolSize: 1,
            label: {
                show: true,
                formatter: function (params) {
                    var d = echarts.number.parseDate(params.value[0]);
                    return d.getDate() + '\n\n';
                },
                color: '#000'
            },
            data: lunarData
        }, {
            type: 'scatter',
            coordinateSystem: 'calendar',
            symbolSize: 1,
            label: {
                show: true,
                formatter: function (params) {
                    return '\n\n\n' + (params.value[3] || '');
                },
                fontSize: 14,
                fontWeight: 700,
                color: '#2F4F4F'
            },
            data: lunarData
        }, {
            name: '降雨量',
            type: 'heatmap',
            coordinateSystem: 'calendar',
            data: heatmapData
        }]
    };
    // 为echarts对象加载数据
    chart.setOption(option);
    return chart;
};
Page({
    onShareAppMessage: function (res) {
        return {
            title: 'ECharts',
            path: '/pages/bx/bx',
            success: function () { },
            fail: function () { }
        }
    },
    /**
     * 页面的初始数据
     */
    data: {
        ec: {
            onInit: initChart2 // 3、将数据放入到里面
        },
        ec2: {
            onInit: initChart // 3、将数据放入到里面
        },
        ec3: {
            onInit: initChart3 // 3、将数据放入到里面
        },

    },

    /**
     * 生命周期函数--监听页面加载
     */
    onLoad: function (options) {

    },

    /**
     * 生命周期函数--监听页面初次渲染完成
     */
    onReady: function () {
        setTimeout(function () {
            // 获取 chart 实例的方式
            console.log(chart)
        }, 2000);
    },

    /**
     * 生命周期函数--监听页面显示
     */
    onShow: function () {

    },

    /**
     * 生命周期函数--监听页面隐藏
     */
    onHide: function () {

    },

    /**
     * 生命周期函数--监听页面卸载
     */
    onUnload: function () {

    },

    /**
     * 页面相关事件处理函数--监听用户下拉动作
     */
    onPullDownRefresh: function () {

    },

    /**
     * 页面上拉触底事件的处理函数
     */
    onReachBottom: function () {

    },

    /**
     * 用户点击右上角分享
     */
    onShareAppMessage: function () {

    }
})