// pages/userwd/index.js
var app = getApp();
Page({

  /**
   * 页面的初始数据
   */
  data: {
    minelist:[{
      id:0,
      iconsrc:"../../icons/我的.png",
      text:"附件简历",
      url:"../../pages/userxx/index",
    },{
      id:1,
      iconsrc:"../../icons/我的.png",
      text:"个人档案",
      url:"../../pages/userxx/index",
    },{
      id:2,
      iconsrc:"../../icons/我的.png",
      text:"个人主页",
      url:"../../pages/userxx/index",
    },{
      id:3,
      iconsrc:"../../icons/我的.png",
      text:"历史绩效",
      url:"../../pages/userxx/index",
    },{
      id:4,
      iconsrc:"../../icons/我的.png",
      text:"帮助与反馈",
      url:"../../pages/userxx/index",
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