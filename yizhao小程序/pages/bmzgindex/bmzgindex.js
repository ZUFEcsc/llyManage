// pages/evalue/evalue.js
var app = getApp();
Page({
  data: {
    flag: 0,
    currentTab: 0,
    employlist:[
      {
        id:0,
        name:"陈莎莎",
        picsrc:"../../icons/humans-7.png"
      },{
        id:1,
        name:"陈奔奔",
        picsrc:"../../icons/humans-8.png"
      },{
        id:2,
        name:"解跳跳",
        picsrc:"../../icons/humans-9.png"
      },{
        id:3,
        name:"郭妍妍",
        picsrc:"../../icons/humans-8.png"
      }
    ]
  },
  switchNav: function(e) {
    var page = this;
    var id = e.target.id;
    if (this.data.currentTab == id) {
      return false;
    } else {
      page.setData({
        currentTab: id
      });
    }
    page.setData({
      flag: id
    });
  },
  catchTouchMove: function (res) {
    return false
  },
   onShow: function () {
    app.editTabBar2();    //显示自定义的底部导航
  },
})