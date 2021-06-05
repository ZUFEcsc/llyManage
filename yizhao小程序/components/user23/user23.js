// components/user23/user23.js
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
    swiperlist:[{
      id:0,
      navigator_url:"../../pages/vedio/vedio",
      image_src:"../../images/vedio-swiper-1.png"
    },
    {
      id:1,
      navigator_url:"../../pages/vedio/vedio",
      image_src:"../../images/vedio-swiper-2.png"
    },
    {
      id:2,
      navigator_url:"../../pages/vedio/vedio",
      image_src:"../../images/vedio-swiper-3.png"
    }],
    cateslist:[{
      name:"互联网",
      image_src:"../../icons/互联网.png"
    },
    {
      name:"金融",
      image_src:"../../icons/金融.png"
    },{
      name:"汽车",
      image_src:"../../icons/汽车.png"
    },{
      name:"医疗",
      image_src:"../../icons/医疗.png"
    },
    {
      name:"计算机",
      image_src:"../../icons/计算机.png"
    }],
    cateslist2:[{
      name:"教育",
      image_src:"../../icons/教育.png"
    },   {
      name:"服务",
      image_src:"../../icons/服务.png"
    },   {
      name:"旅游",
      image_src:"../../icons/旅游.png"
    },   {
      name:"媒体",
      image_src:"../../icons/媒体.png"
    }, 
    {
      name:"全部",
      image_src:"../../icons/全部.png"
    }],
    floorlist:[{"floor_title":{"name":"时尚女装","image_src":"../../images/cloudvedio-1.png"},"product_list":[{"name":"优质服饰","image_src":"../../images/cloudvedio-1-1.png","image_width":"232","open_type":"navigate","navigator_url":"/pages/goods_list?query=服饰"},{"name":"春季热门","image_src":"../../images/cloudvedio-1-2.png","image_width":"233","open_type":"navigate","navigator_url":"/pages/goods_list?query=热"},{"name":"爆款清仓","image_src":"../../images/cloudvedio-1-3.png","image_width":"233","open_type":"navigate","navigator_url":"/pages/goods_list?query=爆款"},{"name":"倒春寒","image_src":"../../images/cloudvedio-1-4.png","image_width":"233","open_type":"navigate","navigator_url":"/pages/goods_list?query=春季"},{"name":"怦然心动","image_src":"../../images/cloudvedio-1-5.png","image_width":"233","open_type":"navigate","navigator_url":"/pages/goods_list?query=心动"}]},{"floor_title":{"name":"户外活动","image_src":"../../images/cloudvedio-2.png"},"product_list":[{"name":"勇往直前","image_src":"../../images/cloudvedio-2-1.png","image_width":"232","open_type":"navigate","navigator_url":"/pages/goods_list?query=户外"},{"name":"户外登山包","image_src":"../../images/cloudvedio-2-2.png","image_width":"273","open_type":"navigate","navigator_url":"/pages/goods_list?query=登山包"},{"name":"超强手套","image_src":"../../images/cloudvedio-2-3.png","image_width":"193","open_type":"navigate","navigator_url":"/pages/goods_list?query=手套"},{"name":"户外运动鞋","image_src":"../../images/cloudvedio-1-1.png","image_width":"193","open_type":"navigate","navigator_url":"/pages/goods_list?query=运动鞋"},{"name":"冲锋衣系列","image_src":"../../images/cloudvedio-1-2.png","image_width":"273","open_type":"navigate","navigator_url":"/pages/goods_list?query=冲锋衣"}]},{"floor_title":{"name":"箱包配饰","image_src":"../../images/cloudvedio-3.png"},"product_list":[{"name":"清新气质","image_src":"../../images/cloudvedio-3-1.png","image_width":"232","open_type":"navigate","navigator_url":"/pages/goods_list?query=饰品"},{"name":"复古胸针","image_src":"../../images/cloudvedio-1-2.png","image_width":"263","open_type":"navigate","navigator_url":"/pages/goods_list?query=胸针"},{"name":"韩版手链","image_src":"../../images/cloudvedio-1-3.png","image_width":"203","open_type":"navigate","navigator_url":"/pages/goods_list?query=手链"},{"name":"水晶项链","image_src":"../../images/cloudvedio-1-4.png","image_width":"193","open_type":"navigate","navigator_url":"/pages/goods_list?query=水晶项链"},{"name":"情侣表","image_src":"../../images/cloudvedio-2-2.png","image_width":"273","open_type":"navigate","navigator_url":"/pages/goods_list?query=情侣表"}]}],
  },
  onLoad: function (options) {

  },
  /**
   * 组件的方法列表
   */
  methods: {

  }
})
