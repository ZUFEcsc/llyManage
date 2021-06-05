// pages/test/test.js
import * as echarts from '../../ec-canvas/echarts';//需要注意这个地方的路径不用引用错误了
let chart = null;
//自我评价图
function initChart(canvas, width, height) {
  chart = echarts.init(canvas, null, {
    width: 0.9*width,
    height: 0.9*height
  });
  canvas.setChart(chart);
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

  var option = {
    title:{
        show:true,
        text:"个人评价",
        x:'center',
        y:'top',
        padding:10,
        textStyle: {//主标题文本样式{"fontSize": 18,"fontWeight": "bolder","color": "#333"}
                fontFamily: 'Arial',
                fontSize: 20,
                fontStyle: 'normal',
                fontWeight: 'bold',
            },
    },
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
                  textShadowColor : '#333',
              },
              downplay : {
                  label : {
                      opacity : 1
                  }
              }
          } ]
      } ]
  };
  // 为echarts对象加载数据
  chart.setOption(option);
  return chart;
};
//综合能力得分图
function initChart2(canvas, width, height) {
  chart = echarts.init(canvas, null, {
    width: 1.2*width,
    height: 1.2*height
  });
  canvas.setChart(chart);

  var option = {
    title:{
        show:true,
        text:"综合能力得分",
        x:'center',
        y:'top',
        padding:10,
        textStyle: {//主标题文本样式{"fontSize": 18,"fontWeight": "bolder","color": "#333"}
                fontFamily: 'Arial',
                fontSize: 26,
                fontStyle: 'normal',
                fontWeight: 'bold',
            },
    },
    series: [{
        type: 'gauge',
        startAngle: 180,
        endAngle: 0,
        min: 0,
        max: 1,
        splitNumber: 8,
        axisLine: {
            lineStyle: {
                width: 6,
                color: [
                    [0.25, '#FF6E76'],
                    [0.5, '#FDDD60'],
                    [0.75, '#58D9F9'],
                    [1, '#7CFFB2']
                ]
            }
        },
        pointer: {
            icon: 'https://echarts.apache.org/examples/path/M12.8,0.7l12,40.1H0.7L12.8,0.7z',
            length: '70%',
            width: 10,
            offsetCenter: [40, -60],
            itemStyle: {
                color: 'auto'
            }
        },
        axisTick: {
            length: 12,
            lineStyle: {
                color: 'auto',
                width: 2
            }
        },
        splitLine: {
            length: 20,
            lineStyle: {
                color: 'auto',
                width: 5
            }
        },
        axisLabel: {
            color: '#464646',
            fontSize: 20,
            distance: -60,
            formatter: function (value) {
                if (value === 0.875) {
                    return '优';
                }
                else if (value === 0.625) {
                    return '中';
                }
                else if (value === 0.375) {
                    return '良';
                }
                else if (value === 0.125) {
                    return '差';
                }
            }
        },
        title: {
            offsetCenter: [0, '-20%'],
            fontSize: 30
        },
        detail: {
            fontSize: 50,
            offsetCenter: [0, -70],
            valueAnimation: true,
            formatter: function (value) {
                return Math.round(value * 100) + '分';
            },
            color: 'auto'
        },
        data: [{
            value: 0.86,
            name: ''
        }]
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