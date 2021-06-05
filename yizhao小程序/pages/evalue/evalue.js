// pages/evalue/evalue.js
var app = getApp();
Page({
  data: {
    flag: 0,
    currentTab: 0,
    employlist:[
      {
        id:0,
        name:"陈沈清",
        picsrc:"../../icons/人物.png"
      },{
        id:1,
        name:"陈彬捷",
        picsrc:"../../icons/人物.png"
      },{
        id:2,
        name:"解远远",
        picsrc:"../../icons/人物.png"
      },{
        id:3,
        name:"郭炜囡",
        picsrc:"../../icons/人物.png"
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
