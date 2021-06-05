// components/user21/user21.js
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
    testList:[{
      id:0,
      comimg:"../../icons/com-1.png",
      comname:"恒慕教育",
      comdescribe:"A轮 | 100-499人 | 互联网",
      children:[{
        testid:0,
        testname:"UI前端设计师线上考核",
        testdegree:"难度：4",
        testdescribe:"2人 | 4.18-4.19 | 直接进入二轮面试"
      },{
        testid:1,
        testname:"Java技术员线上考核",
        testdegree:"难度：4",
        testdescribe:"2人 | 4.19-4.20 | 直接进入二轮面试"
      },
      {
        testid:2,
        testname:"高级技术分析师线上考核",
        testdegree:"难度：3",
        testdescribe:"3人 | 4.18-3.20 | 直接进入二轮面试"
      }]

    },{
      id:1,
      comimg:"../../icons/com-2.png",
      comname:"神汽在线",
      comdescribe:"A轮 | 100-499人 | 互联网",
      children:[{
        testid:0,
        testname:"UI前端设计师线上考核",
        testdegree:"难度：2",
        testdescribe:"2人 | 4.17-4.21 | 直接进入二轮面试"
      },{
        testid:1,
        testname:"UI前端设计师线上考核",
        testdegree:"难度：4",
        testdescribe:"2人 | 3.8-3.10 | 直接进入二轮面试"
      },
      {
        testid:2,
        testname:"UI前端设计师线上考核",
        testdegree:"难度：4",
        testdescribe:"2人 | 3.8-3.10 | 直接进入二轮面试"
      }]

    }]
  },

  /**
   * 组件的方法列表
   */
  methods: {

  }
})
