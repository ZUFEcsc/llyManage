// pages/vedio/vedio.js
const app = getApp(); // 获取全局变量
Page({

  /**
   * 页面的初始数据
   */
  data: {
    vediotabs:[
      {
        id:0,
        value:"互动",
        isactive:true
      },
      {
        id:1,
        value:"职位",
        isactive:false
      },
      {
        id:2,
        value:"主播",
        isactive:false
      }
    ],
    joblist:[{
      id:0,
      name:"电商运营实习生",
      money:"100-150/天",
      describe:"4天/周 | 本科学历 | 淘宝天猫运营",
      jindu:"499/500",
      btnname:"投简历"
    },{
      id:2,
      name:"JAVA技术员",
      money:"300-450/天",
      describe:"6天/周 | 本科学历 | 精通JAVA编程",
      jindu:"378/500",
      btnname:"投简历"
    },{
      id:3,
      name:"前端UI设计师",
      money:"300-450/天",
      describe:"6天/周 | 本科学历 | 精通UI设计",
      jindu:"67/250",
      btnname:"投简历"
    }]
  },
  jinduchange(e){
    
    wx.showModal({
      title: '提示',
      content: '确定要投递简历吗？',
      success: function (res) {
        if (res.confirm) {//这里是点击了确定以后
          wx.showToast({
            title: '投递成功！',
            icon: 'success',
            duration: 1000//持续的时间
          });
          
        } else {//这里是点击了取消以后
          console.log('用户点击取消')
        }
      }
    });

    var arr=this.data.joblist;
    var index = e.currentTarget.dataset.index;
    arr[index].jindu="379/500";
    arr[index].btnname="已投递";
    this.setData({
      joblist:arr
    });
    console.log(arr);
    
    
  },
  handletabsitemchange(e){
    const {index}=e.detail;
    let {vediotabs}=this.data;
    console.log("aaa");
    vediotabs.forEach((v,i)=>i===index?v.isactive=true:v.isactive=false);
    this.setData({
      vediotabs
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
    let that = this;
    // 淡入
        setTimeout(function () {
          app.slideupshow(this, 'slide_up1', 20, 1)
        }.bind(this), 2500);
        setTimeout(function () {
          app.slideupshow(this, 'slide_up2', 40, 1)
        }.bind(this), 4500);
        setTimeout(function () {
          app.slideupshow(this, 'slide_up3', 60, 1)
        }.bind(this), 7000);
    
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