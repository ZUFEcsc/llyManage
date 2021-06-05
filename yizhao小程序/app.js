//app.js  
App({
  serverUrl: '',
  userinfo: null,

  //渐入，渐出实现 
  show : function(that,param,opacity){
    var animation = wx.createAnimation({
      //持续时间800ms
      duration: 800,
      timingFunction: 'ease',
    });
    //var animation = this.animation
    animation.opacity(opacity).step()
    //将param转换为key
    var json = '{"' + param + '":""}'
    json = JSON.parse(json);
    json[param] = animation.export()
    //设置动画
    that.setData(json)
  },

  //滑动渐入渐出
  slideupshow:function(that,param,px,opacity){
    var animation = wx.createAnimation({
      duration: 800,
      timingFunction: 'ease',
    });
    animation.translateY(px).opacity(opacity).step()
    //将param转换为key
    var json = '{"' + param + '":""}'
    json = JSON.parse(json);
    json[param] = animation.export()
    //设置动画
    that.setData(json)
  },

  //向右滑动渐入渐出
  sliderightshow: function (that, param, px, opacity) {
    var animation = wx.createAnimation({
      duration: 800,
      timingFunction: 'ease',
    });
    animation.translateX(px).opacity(opacity).step()
    //将param转换为key
    var json = '{"' + param + '":""}'
    json = JSON.parse(json);
    json[param] = animation.export()
    //设置动画
    that.setData(json)
  },




  onLaunch: function () {

  },

  //第一种底部  
  editTabBar: function () {
    //使用getCurrentPages可以获取当前加载中所有的页面对象的一个数组，数组最后一个就是当前页面。

    var curPageArr = getCurrentPages();    //获取加载的页面
    var curPage = curPageArr[curPageArr.length - 1];    //获取当前页面的对象
    var pagePath = curPage.route;    //当前页面url
    if (pagePath.indexOf('/') != 0) {
      pagePath = '/' + pagePath;
    }

    var tabBar = this.globalData.tabBar;
    for (var i = 0; i < tabBar.list.length; i++) {
      tabBar.list[i].active = false;
      if (tabBar.list[i].pagePath == pagePath) {
        tabBar.list[i].active = true;    //根据页面地址设置当前页面状态    
      }
    }
    curPage.setData({
      tabBar: tabBar
    });
  },
  //第二种底部，原理同上
  editTabBar1: function () {
    var curPageArr = getCurrentPages();
    var curPage = curPageArr[curPageArr.length - 1];
    var pagePath = curPage.route;
    if (pagePath.indexOf('/') != 0) {
      pagePath = '/' + pagePath;
    }
    var tabBar = this.globalData.tabBar1;
    for (var i = 0; i < tabBar.list.length; i++) {
      tabBar.list[i].active = false;
      if (tabBar.list[i].pagePath == pagePath) {
        tabBar.list[i].active = true;
      }
    }
    curPage.setData({
      tabBar: tabBar
    });
  },
  //第三种底部，原理同上
  editTabBar2: function () {
    var curPageArr = getCurrentPages();
    var curPage = curPageArr[curPageArr.length - 1];
    var pagePath = curPage.route;
    if (pagePath.indexOf('/') != 0) {
      pagePath = '/' + pagePath;
    }
    var tabBar = this.globalData.tabBar2;
    for (var i = 0; i < tabBar.list.length; i++) {
      tabBar.list[i].active = false;
      if (tabBar.list[i].pagePath == pagePath) {
        tabBar.list[i].active = true;
      }
    }
    curPage.setData({
      tabBar: tabBar
    });
  },
  //第四种底部，原理同上
    editTabBar3: function () {
      var curPageArr = getCurrentPages();
      var curPage = curPageArr[curPageArr.length - 1];
      var pagePath = curPage.route;
      if (pagePath.indexOf('/') != 0) {
        pagePath = '/' + pagePath;
      }
      var tabBar = this.globalData.tabBar3;
      for (var i = 0; i < tabBar.list.length; i++) {
        tabBar.list[i].active = false;
        if (tabBar.list[i].pagePath == pagePath) {
          tabBar.list[i].active = true;
        }
      }
      curPage.setData({
        tabBar: tabBar
      });
    },
  globalData: {
    //第一种底部导航栏显示
    tabBar: {
      "color": "#9E9E9E",
      "selectedColor": "#f00",
      "backgroundColor": "#fff",
      "borderStyle": "#ccc",
      "list": [
        {
          "pagePath": "/pages/userindex/userindex",
          "text": "职位",
          "iconPath": "/icons/职位.png",
          "selectedIconPath": "/icons/职位-c.png",
          "selectedColor": "#37c2bb",
          "clas": "menu-item",
          active: false
        },
        {
          "pagePath": "/pages/userztc/index",
          "text": "直通车",
          "iconPath": "/icons/直通车.png",
          "selectedIconPath": "/icons/直通车-c.png",
          "selectedColor": "#37c2bb",
          "clas": "menu-item",
          active: false
        },
        {
          "pagePath": "/pages/userxx/index",
          "text": "消息",
          "iconPath": "/icons/消息.png",
          "selectedIconPath": "/icons/消息-c.png",
          "clas": "menu-item",
          "selectedColor": "#37c2bb",
          active: true

        }
        ,
        {
          "pagePath": "/pages/userwd/index",
          "text": "我的",
          "iconPath": "/icons/我的.png",
          "selectedIconPath": "/icons/我的-c.png",
          "clas": "menu-item",
          "selectedColor": "#37c2bb",
          active: true

        }
      ],
      "position": "bottom"
    },
    //第二种底部导航栏显示
    tabBar1: {
      "color": "#9E9E9E",
      "selectedColor": "#f00",
      "backgroundColor": "#fff",
      "borderStyle": "#ccc",
      "list": [
        {
          "pagePath": "/pages/hrindex/hrindex",
          "text": "招聘",
          "iconPath": "/icons/职位.png",
          "selectedIconPath": "/icons/职位-c.png",
          "selectedColor": "#37c2bb",
          "clas": "menu-item",
          active: false
        },
        {
          "pagePath": "/pages/hrztc/index",
          "text": "直通车",
          "iconPath": "/icons/直通车.png",
          "selectedIconPath": "/icons/直通车-c.png",
          "selectedColor": "#37c2bb",
          "clas": "menu-item",
          active: false
        },
        {
          "pagePath": "/pages/userxx/index",
          "text": "消息",
          "iconPath": "/icons/消息.png",
          "selectedIconPath": "/icons/消息-c.png",
          "clas": "menu-item",
          "selectedColor": "#37c2bb",
          active: true

        }
        ,
        {
          "pagePath": "/pages/hrwd/index",
          "text": "我的",
          "iconPath": "/icons/我的.png",
          "selectedIconPath": "/icons/我的-c.png",
          "clas": "menu-item",
          "selectedColor": "#37c2bb",
          active: true

        }
      ],
      "position": "bottom"
    },
    //第三种底部导航栏显示
    tabBar2: {
      "color": "#9E9E9E",
      "selectedColor": "#f00",
      "backgroundColor": "#fff",
      "borderStyle": "#ccc",
      "list": [
        {
          "pagePath": "/pages/bmzgindex/bmzgindex",
          "text": "评价",
          "iconPath": "/icons/评价.png",
          "selectedIconPath": "/icons/评价-c.png",
          "selectedColor": "#4EDF80",
          "clas": "menu-item",
          active: false
        },
        {
          "pagePath": "/pages/userztc/index",
          "text": "直通车",
          "iconPath": "/icons/直通车.png",
          "selectedIconPath": "/icons/直通车-c.png",
          "selectedColor": "#4EDF80",
          "clas": "menu-item",
          active: false
        },
        {
          "pagePath": "/pages/userxx/userxx",
          "text": "消息",
          "iconPath": "/icons/消息.png",
          "selectedIconPath": "/icons/消息-c.png",
          "clas": "menu-item",
          "selectedColor": "#4EDF80",
          active: true

        },
        {
          "pagePath": "/pages/userwd/userwd",
          "text": "我的",
          "iconPath": "/icons/我的.png",
          "selectedIconPath": "/icons/我的-c.png",
          "clas": "menu-item",
          "selectedColor": "#4EDF80",
          active: true

        }
      ],
      "position": "bottom"
    },
    //第三种底部导航栏显示
    tabBar3: {
      "color": "#9E9E9E",
      "selectedColor": "#f00",
      "backgroundColor": "#fff",
      "borderStyle": "#ccc",
      "list": [
        {
          "pagePath": "/pages/userindex/userindex",
          "text": "信息",
          "iconPath": "/icons/职位.png",
          "selectedIconPath": "/icons/直通车.png",
          "selectedColor": "#4EDF80",
          "clas": "menu-item",
          active: false
        },
        {
          "pagePath": "/pages/login/login",
          "text": "处理",
          "iconPath": "/icons/直通车.png",
          "selectedIconPath": "/icons/直通车.png",
          "selectedColor": "#4EDF80",
          "clas": "menu-item",
          active: false
        },
        {
          "pagePath": "/pages/hrindex/hrindex",
          "text": "我的",
          "iconPath": "/icons/消息.png",
          "selectedIconPath": "/icons/消息.png",
          "clas": "menu-item",
          "selectedColor": "#4EDF80",
          active: true

        }
      ],
      "position": "bottom"
    }
  }

})  