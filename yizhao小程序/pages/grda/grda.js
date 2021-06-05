// pages/userztc/index.js
var app = getApp();
Page({

  /**
   * 页面的初始数据
   */
  data: {
    tabs:[
      {
        id:0,
        value:"基本信息",
        isactive:true
      },
      {
        id:1,
        value:"综合评价",
        isactive:false

      },
      {
        id:2,
        value:"绩效评分",
        isactive:false
      }
    ],
  },
  
  handletabsitemchange(e){
    const {index}=e.detail;
    let {tabs}=this.data;
    console.log("aaa");
    tabs.forEach((v,i)=>i===index?v.isactive=true:v.isactive=false);
    this.setData({
      tabs
    }) 
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

  },

  /**
   * 生命周期函数--监听页面显示
   */
  onShow: function () {
    app.editTabBar();    //显示自定义的底部导航
  }
})