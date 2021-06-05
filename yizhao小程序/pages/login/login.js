var app = getApp()

Page({

  /**
   * 页面的初始数据
   */
  data: {
    selectArray2: [{
      "id": "01",
      "text": "平台用户"
    }, {
      "id": "02",
      "text":"HR"
    }, {
      "id": "03",
      "text":"部门主管"
    }, {
      "id": "04",
      "text":"项目经理"
    }, {
      "id": "05",
      "text":"办公室主任"
    }],
    user_kind: ''
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {

  },
  getDate: function (e) {
    console.log(e.detail.text)
    this.setData({
      user_kind: e.detail.text
    })
    console.log(this.data.user_kind)
  },
  onSubmit: function (e) {

    app.globalData.user = e.detail.value;

    console.log(app.globalData.userInfo)
    console.log(this.data.user_kind)
    if (app.globalData.user.account == 'abc' && app.globalData.user.pwd == 'abc') {

      wx.showToast({

        title: '登录成功',

        duration: 2000,

      })
      console.log("asd"),
      wx.redirectTo({
        url: '../userindex/userindex',
      })

    }

    else if ( app.globalData.user.account == 'bcd' && app.globalData.user.pwd == 'bcd') {

      wx.showToast({

        title: '登录成功',

        duration: 2000,

      })
      console.log("asds"),
      wx.redirectTo({

        url: '../hrindex/hrindex',

      })

    }
    else if ( app.globalData.user.account == 'csq' && app.globalData.user.pwd == 'csq') {

      wx.showToast({

        title: '登录成功',

        duration: 2000,

      })
      console.log("asds"),
      wx.redirectTo({

        url: '../bmzgindex/bmzgindex',

      })

    }

    else {

      wx.showToast({

        title: '用户名或密码错',

        duration: 2000,

      })

    }

  }
})