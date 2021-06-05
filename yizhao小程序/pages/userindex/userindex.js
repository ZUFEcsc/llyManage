// pages/userindex/userindex.js
var app = getApp();
Page({
  data: {
    joblist:[{
      id:0,
      jobname:"电商运营实习生",
      money:"100-150/天",
      detail:"杰士邦 | 已上市 | 500-999人",
      imgsrc:"../../icons/humans-3.png",
      peoplename:"梁雯萱·运营",
      local:"西湖区 西溪",
      children:[{
        idd:0,
        text:"4周/天"
      },{
        idd:1,
        text:"本科"
      },{
        idd:2,
        text:"淘宝运营"
      },{
        idd:3,
        text:"天猫运营"
      },]
    },{
      id:1,
      jobname:"Java技术师",
      money:"300-450/天",
      detail:"喔最邦 | A轮 | 500-999人",
      imgsrc:"../../icons/humans-2.png",
      peoplename:"陈涛·运营",
      local:"西湖区 西溪",
      children:[{
        idd:0,
        text:"4周/天"
      },{
        idd:1,
        text:"本科"
      },{
        idd:2,
        text:"技术员"
      },{
        idd:3,
        text:"JAVA编程"
      },]
    },{
      id:2,
      jobname:"前端UI设计师",
      money:"300-450/天",
      detail:"杰士邦 | 已上市 | 500-999人",
      imgsrc:"../../icons/humans-3.png",
      peoplename:"梁雯萱·运营",
      local:"西湖区 西溪",
      children:[{
        idd:0,
        text:"4周/天"
      },{
        idd:1,
        text:"本科"
      },{
        idd:2,
        text:"设计师"
      },{
        idd:3,
        text:"UI设计"
      },]
    }]
  },
  onShow: function () {
    app.editTabBar();    //显示自定义的底部导航
  },
  onLoad: function () {

  }
})  