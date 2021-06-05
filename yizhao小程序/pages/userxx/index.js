// pages/userxx/index.js
var app = getApp();
Page({

  /**
   * 页面的初始数据
   */
  data: {
    messagelist:[{
      id:0,
      imgsrc:"../../icons/human-1.png",
      name:"李自强",
      detail:"杭州华唐文化传媒·艺人总监",
      time:"昨天",
      message:"你好！请问你是否有兴趣..."
    },{
      id:1,
      imgsrc:"../../icons/human-2.png",
      name:"李自强",
      detail:"杭州华唐文化传媒·艺人总监",
      time:"昨天",
      message:"你好！请问你是否有兴趣..."
    },{
      id:2,
      imgsrc:"../../icons/human-3.png",
      name:"李自强",
      detail:"杭州华唐文化传媒·艺人总监",
      time:"昨天",
      message:"你好！请问你是否有兴趣..."
    },{
      id:3,
      imgsrc:"../../icons/human-4.png",
      name:"李自强",
      detail:"杭州华唐文化传媒·艺人总监",
      time:"昨天",
      message:"你好！请问你是否有兴趣..."
    }]
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