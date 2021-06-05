// pages/teacher/teacher.js
Page({

  /**
   * 页面的初始数据
   */
  data: {
    tabs:[
      {
        id:0,
        value:"个人信息",
        isactive:true
      },
      {
        id:1,
        value:"历史评价",
        isactive:false
      },
      {
        id:2,
        value:"预约指导",
        isactive:false
      }
    ],
    evaluelist:[{
      id:0,
      imgsrc:"../../icons/humans-3.png",
      text:"我是应届毕业生，没有什么面试经验，张老师的课给了我很大的帮助，他对我针对性的情景模拟很好的练习了我的临场反应能力和语言组织能力，非常棒的老师！"
    },{
      id:1,
      imgsrc:"../../icons/humans-4.png",
      text:"我是应届毕业生，没有什么面试经验，张老师的课给了我很大的帮助，他对我针对性的情景模拟很好的练习了我的临场反应能力和语言组织能力，非常棒的老师！"
    },{
      id:2,
      imgsrc:"../../icons/humans-6.png",
      text:"我是应届毕业生，没有什么面试经验，张老师的课给了我很大的帮助，他对我针对性的情景模拟很好的练习了我的临场反应能力和语言组织能力，非常棒的老师！"
    }],
    calendar:[],
    width:0,
    currentIndex:0,
    currentTime: 0,
    timeArr: [{ "time": "8:00-9:00", "status": "约满" }, { "time": "9:00-10:00", "status": "约满" }, { "time": "10:00-11:00", "status": "约满" }, { "time": "13:00-14:00", "status": "约满" }, { "time": "14:00-15:00", "status": "约满" }, { "time": "15:00-16:00", "status": "约满" }, { "time": "16:00-17:00", "status": "约满" }, { "time": "19:00-20:00", "status": "约满" }, { "time": "20:00-21:00", "status": "约满" }, { "time": "21:00-22:00", "status": "可预约" }]
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
    var that=this;
    function getThisMonthDays(year, month) {
      return new Date(year, month, 0).getDate();
    }
  // 计算每月第一天是星期几
    function getFirstDayOfWeek(year, month) {
    return new Date(Date.UTC(year, month - 1, 1)).getDay();
    }
    const date = new Date();
    const cur_year = date.getFullYear();
    const cur_month = date.getMonth() + 1;
    const cur_date=date.getDate();
    const weeks_ch = ['日', '一', '二', '三', '四', '五', '六'];
    //利用构造函数创建对象
    function calendar(date,week){
      this.date=cur_year+'-'+cur_month+'-'+date;
      if(date==cur_date){
        this.week = "今天";
      }else if(date==cur_date+1){
        this.week = "明天";
      }else{
        this.week = '星期' + week;
      }
    }
    //当前月份的天数
    var monthLength= getThisMonthDays(cur_year, cur_month)
    //当前月份的第一天是星期几
    var week = getFirstDayOfWeek(cur_year, cur_month)
    var x = week;
    for(var i=1;i<=monthLength;i++){
      //当循环完一周后，初始化再次循环
      if(x>6){
        x=0;
      }
      //利用构造函数创建对象
      that.data.calendar[i] = new calendar(i, [weeks_ch[x]][0])
      x++;
    }
    //限制要渲染的日历数据天数为7天以内（用户体验）
    var flag = that.data.calendar.splice(cur_date, that.data.calendar.length - cur_date <= 7 ? that.data.calendar.length:7)
    that.setData({
      calendar: flag
    })
    //设置scroll-view的子容器的宽度
    that.setData({
      width: 186 * parseInt(that.data.calendar.length - cur_date <= 7 ? that.data.calendar.length : 7)
    })
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

  },
  select:function(event){
    //为上半部分的点击事件

    this.setData({
      currentIndex: event.currentTarget.dataset.index
    })
  },
  selectTime:function(event){
    wx.showModal({
      title: '提示',
      content: '确定要预约吗？',
      success: function (res) {
        if (res.confirm) {//这里是点击了确定以后
          wx.showToast({
            title: '预约成功！',
            icon: 'success',
            duration: 1000//持续的时间
          });
          
        } else {//这里是点击了取消以后
          console.log('用户点击取消')
        }
      }
    });

    //为下半部分的点击事件
    this.setData({
      currentTime: event.currentTarget.dataset.tindex
    })
  }
})