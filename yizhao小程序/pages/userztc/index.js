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
        value:"智能推荐",
        isactive:true
      },
      {
        id:1,
        value:"面试直通",
        isactive:false

      },
      {
        id:2,
        value:"就业指南",
        isactive:false
      }
    ],
    tabs1:[
      {
        id:0,
        value:"企业库",
        imgsrc:"../../icons/企业.png",
        isactive:true
      },
      {
        id:1,
        value:"岗位库",
        imgsrc:"../../icons/岗位.png",
        isactive:false
      }
    ],
    tabs2:[
      {
        id:0,
        value:"线上考核",
        imgsrc:"../../icons/考核.png",
        isactive:true
      },
      {
        id:1,
        value:"专项挑战",
        imgsrc:"../../icons/挑战.png",
        isactive:false
      },{
        id:2,
        value:"云上招聘",
        imgsrc:"../../icons/云上招聘.png",
        isactive:false
      }
      
    ],tabs3:[
      {
        id:0,
        value:"职业指导",
        imgsrc:"../../icons/指导.png",
        isactive:true
      },
      {
        id:1,
        value:"情景对话",
        imgsrc:"../../icons/对话.png",
        isactive:false
      },{
        id:2,
        value:"就业帮助",
        imgsrc:"../../icons/帮助.png",
        isactive:false
      }
      
    ],
    tabs31:[
      {
        id:0,
        value:"面试题库",
        isactive:true
      },
      {
        id:1,
        value:"求职锦囊",
        isactive:false
      },{
        id:2,
        value:"自我提升",
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
  handletabsitemchange1(e){
    const {index}=e.detail;
    let {tabs1}=this.data;
    console.log("aaa");
    tabs1.forEach((v,i)=>i===index?v.isactive=true:v.isactive=false);
    this.setData({
      tabs1
    }) 
  },
  handletabsitemchange2(e){
    const {index}=e.detail;
    let {tabs2}=this.data;
    console.log("aaa");
    tabs2.forEach((v,i)=>i===index?v.isactive=true:v.isactive=false);
    this.setData({
      tabs2
    }) 
  },
  handletabsitemchange3(e){
    const {index}=e.detail;
    let {tabs3}=this.data;
    console.log("aaa");
    tabs3.forEach((v,i)=>i===index?v.isactive=true:v.isactive=false);
    this.setData({
      tabs3
    }) 
  },
  
  handletabsitemchange31(e){
    const {index}=e.detail;
    let {tabs31}=this.data;
    console.log("aaa");
    tabs31.forEach((v,i)=>i===index?v.isactive=true:v.isactive=false);
    this.setData({
      tabs31
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