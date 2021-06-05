// components/user-1-1/user11.js
Component({
  /**
   * 组件的属性列表
   */
  properties: {

  },

  /**
   * 组件的初始数据
   */
  data: {
    list1:[{
      id:0,
      imgsrc:"../../icons/人物.png",
      text1:"UI前端设计师",
      text2:"67家匹配企业 | 职位多 | 体验好"

    },{
      id:1,
      imgsrc:"../../icons/人物.png",
      text1:"Java技术员",
      text2:"67家匹配企业 | 职位多 | 体验好"
    },{
      id:2,
      imgsrc:"../../icons/人物.png",
      text1:"淘宝运营",
      text2:"67家匹配企业 | 职位多 | 体验好"
    }],
    
    companylist:[{
      id:0,
      imgsrc:"../../icons/com-2.png",
      title:"神汽在线",
      detail:"A轮 | 100-499人 | 互联网",
      children:[{
        idd:0,
        jobname:"运营助理",
        money:"150-200元/天"
      },{
        idd:1,
        jobname:"UI前端设计师",
        money:"300-500元/天"
      },{
        idd:2,
        jobname:"Java技术师",
        money:"450-500元/天"
      }]
    },{
      id:1,
      imgsrc:"../../icons/人物.png",
      title:"杭州一闲",
      detail:"不需要融资 | 100-499人 | 移动互联网",
      children:[{
        idd:0,
        jobname:"运营助理",
        money:"150-200元/天"
      },{
        idd:1,
        jobname:"UI前端设计师",
        money:"300-500元/天"
      },{
        idd:2,
        jobname:"Java技术师",
        money:"450-500元/天"
      }]
    },{
      id:2,
      imgsrc:"../../icons/人物.png",
      title:"杭州一闲",
      detail:"不需要融资 | 100-499人 | 移动互联网",
      children:[{
        idd:0,
        jobname:"运营助理",
        money:"150-200元/天"
      },{
        idd:1,
        jobname:"UI前端设计师",
        money:"300-500元/天"
      },{
        idd:2,
        jobname:"Java技术师",
        money:"450-500元/天"
      }]
    }]
  },

  /**
   * 组件的方法列表
   */
  methods: {

  }
})
