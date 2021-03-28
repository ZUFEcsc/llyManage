<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%><!DOCTYPE html>
<html>
<head>
<%@ include file="bootstrap.jsp"%>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<title>HR页面</title>
<style>
.layui-nav-child dd a {
	margin-left: 30px;
}

tbody tr td {
	line-height: 30px;
}

tbody tr th {
	line-height: 30px;
	color: #FF5722;
}
</style>
<link rel="stylesheet" href="../res/layui/css/layui.css">
</head>
<body class="layui-layout-body">
	<div class="layui-layout layui-layout-admin">
		<%@ include file="lly-header.jsp"%>
		<div class="layui-side layui-bg-black">
			<div class="layui-side-scroll">
				<!-- 左侧导航区域（可配合layui已有的垂直导航） -->

				<!-- 用户区别卡片 -->
				<div style="margin: 10px 35px;">
					<div class="userCard-img"
						style="display: inline-block; padding-right: 5px;">
						<img src="../img/avatar.png"
							style="border-radius: 50% !important; width: 42px; margin-bottom: 10px;">
					</div>
					<div class="userCard-text" style="display: inline-block;">
						<h5 style="padding-bottom: 3px">陈沈清</h5>
						<span class="layui-badge layui-bg-orange">HR</span>
					</div>
				</div>

				<ul class="layui-nav layui-nav-tree" lay-filter="test">
					<li class="layui-nav-item layui-nav-itemed"><a class=""
						href="javascript:;"> <i
							class="layui-icon layui-icon-release layui-icon-list"
							style="font-size: 22px; margin-right: 10px;"></i>招聘管理
					</a>
						<dl class="layui-nav-child">
							<dd>
								<a href="#" class="site-demo-active" data-url="ZPXX"
									data-id="ZPXX" data-type="tabZPXX">招聘信息</a>
							</dd>
							<dd>
								<a href="#" class="site-demo-active" data-url="JLC"
									data-id="JLC" data-type="tabJLC">简历池</a>
							</dd>
							<dd>
								<a href="#" class="site-demo-active" data-url="DYJD"
									data-id="DYJD" data-type="tabDYJD">第一阶段</a>
							</dd>
							<dd>
								<a href="#" class="site-demo-active" data-url="DEJD"
									data-id="DEJD" data-type="tabDEJD">第二阶段</a>
							</dd>

						</dl></li>
					<li class="layui-nav-item layui-nav-itemed"><a
						href="javascript:;"> <i class="layui-icon layui-icon-release"
							style="font-size: 22px; margin-right: 10px;"></i>用户管理
					</a>
						<dl class="layui-nav-child">
							<dd>
								<a href="#" class="site-demo-active" data-url="YHXX"
									data-id="YHXX" data-type="tabYHXX">用户信息</a>
							</dd>
							<dd>
								<a href="#" class="site-demo-active" data-url="XXXG"
									data-id="XXXG" data-type="tabXXXG">信息修改</a>
							</dd>
						</dl></li>
				</ul>
			</div>
		</div>

		<div class="layui-body">
			<!-- 内容主体区域 -->
			<div class="layui-tab layui-tab-brief" lay-filter="demo">
				<ul class="layui-tab-title">
					<li class="layui-this" lay-id="ZPXX">招聘信息 <!--lay-allowclose="true"(div) <i class="layui-icon layui-unselect layui-tab-close">ဆ</i> -->
					</li>
				</ul>
				<div class="layui-tab-content">
					<!-- 招聘信息 -->
					<div class="layui-tab-item layui-show" id="item-ZPXX">

						<div>
							<form style="float: right;">
								<div class="form-row">
									<div class="form-group col-md">
										<select id="inputTime" class="form-control">
											<option selected>请选择发布时间</option>
											<option>2021</option>
											<option>2020</option>
										</select>
									</div>
									<div class="form-group col-md">
										<select id="inputState" class="form-control">
											<option selected>请选择招聘岗位</option>
											<option>...</option>
										</select>
									</div>
									<div class="form-group col-md">
										<input type="text" class="form-control" id="inputZ"
											placeholder="输入招聘代码">
									</div>
									<a href="#" type="submit"><i
										class="layui-icon layui-icon-search"
										style="font-size: 30px; color: #1E9FFF;"></i></a>
								</div>
							</form>
						</div>
						<table class="table">
							<thead>
								<tr>
									<th scope="col"><i class="iconfont icon-bianhao"
										style="color: #999999"></i> 招聘代码</th>
									<th scope="col"><i class="iconfont icon-jianzhu"
										style="font-size: 18px; color: #1e9fff"></i>招聘岗位</th>									
									<th scope="col"><i class="iconfont icon-shijian"
										style="font-size: 18px; color: #cdcdcd;"></i>发布时间</th>
									<th scope="col"><i class="iconfont icon-B"
											style="font-size: 18px; color: #dc3023;"></i>状态</th>
									<th scope="col"><i class="iconfont icon--_caozuo"
										style="font-size: 18px; color: #5aa9e6;"></i> 操作</th>
									<th></th>	
								</tr>
							</thead>
							<tbody>
								<tr>
									<th scope="row"><i class="iconfont icon-6"
										style="font-size: 16px; color: #e29c45;"></i> Y20189</th>
									<td>前端UI设计师</td>
									<td>2020/01/09</td>
									<td><span class="layui-badge layui-bg-orange">已结束</span></td>
									<td></td>
									<td>
										<button type="button"
											class="layui-btn layui-btn-sm layui-btn-normal"
											style="margin: 0px;">
											<i class="iconfont icon-gengduo"></i><span
												style="font-size: 14px;"> 更多</span>
										</button>
									</td>
								</tr>
								<tr>
									<th scope="row"><i class="iconfont icon-6"
										style="font-size: 16px; color: #e29c45;"></i> Y20189</th>
									<td>前端UI设计师</td>
									<td>2020/01/09</td>
									<td><span class="layui-badge layui-bg-orange">已结束</span></td>
									<td></td>
									<td>
										<button type="button"
											class="layui-btn layui-btn-sm layui-btn-normal"
											style="margin: 0px;">
											<i class="iconfont icon-gengduo"></i><span
												style="font-size: 14px;"> 更多</span>
										</button>
									</td>
								</tr>
								<tr>
									<th scope="row"><i class="iconfont icon-6"
										style="font-size: 16px; color: #e29c45;"></i> Y20189</th>
									<td>前端UI设计师</td>
									<td>2020/01/09</td>
									<td><span class="layui-badge layui-bg-green"> 2 / 5 </span></td>
									<td>
										<button type="button"
											class="layui-btn layui-btn-sm layui-btn-primary"
											style="margin: 0px;"><span
												style="font-size: 14px;"> 结束招聘</span>
										</button>
									</td>
									<td>
										<button type="button"
											class="layui-btn layui-btn-sm layui-btn-normal"
											style="margin: 0px;">
											<i class="iconfont icon-gengduo"></i><span
												style="font-size: 14px;"> 更多</span>
										</button>
									</td>
								</tr>
							</tbody>
						</table>
						
					</div>

					<!-- 简历池 -->
					<div class="layui-tab-item" id="item-JLC" style="display: none;">

						<div>
							<form style="float: right;">
								<div class="form-row">
									<div class="form-group col-md">
										<select class="form-control">
											<option selected disabled style="display: none;" value="">请选择认证状态</option>
											<option>已通过认证</option>
											<option>2</option>
											<option>3</option>
											<option>4</option>
											<option>5</option>
										</select>
									</div>
									<a href="#" type="submit"><i
										class="layui-icon layui-icon-search"
										style="font-size: 30px; color: #1E9FFF;"></i></a>
								</div>
							</form>
						</div>
						<div>
							<table class="table">
								<thead>
									<tr>
										<th scope="col"><i class="iconfont icon-jianzhu"
											style="font-size: 18px; color: #1e9fff"></i>企业名称</th>
										<th scope="col"><i class="iconfont icon-shijian"
											style="font-size: 18px; color: #cdcdcd;"></i>申请时间</th>
										<th scope="col"><i
											class="iconfont icon-shangbiaorenzheng"
											style="font-size: 18px; color: #fc5531;"></i>认证状态</th>
										<th scope="col"><i class="iconfont icon--_caozuo"
											style="font-size: 18px; color: #5aa9e6;"></i>操作</th>
										<th scope="col"><i class="iconfont icon-suggestion"
											style="color: #666666;"></i>详细信息</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>杭州齐家网络有限公司</td>
										<td>2020/01/09</td>
										<td><span class="layui-badge layui-bg-orange">已通过认证</span></td>
										<td>
											<button type="button"
												class="layui-btn layui-btn-sm layui-btn-normal"
												style="margin: 0px;">
												<span style="font-size: 14px;">创建账号</span>
											</button>
										</td>
										<td>
											<button type="button"
												class="layui-btn layui-btn-sm layui-btn-normal"
												style="margin: 0px;">
												<i class="iconfont icon-gengduo"></i><span
													style="font-size: 14px;"> 更多</span>
											</button>
										</td>
									</tr>
									<tr>
										<td>杭州齐家网络有限公司</td>
										<td>2020/01/09</td>
										<td><span class="layui-badge layui-bg-green">未通过认证</span></td>
										<td>
											<button type="button"
												class="layui-btn layui-btn-sm layui-btn-normal"
												style="margin: 0px;">
												<span style="font-size: 14px;">发送反馈</span>
											</button>
										</td>
										<td>
											<button type="button"
												class="layui-btn layui-btn-sm layui-btn-normal"
												style="margin: 0px;">
												<i class="iconfont icon-gengduo"></i><span
													style="font-size: 14px;"> 更多</span>
											</button>
										</td>
									</tr>
									<tr>
										<td>杭州齐家网络有限公司</td>
										<td>2020/01/09</td>
										<td><span class="layui-badge layui-bg-green">未通过认证</span></td>
										<td>
											<button type="button"
												class="layui-btn layui-btn-sm layui-btn-normal"
												style="margin: 0px;">
												<span style="font-size: 14px;">发送反馈</span>
											</button>
										</td>
										<td>
											<button type="button"
												class="layui-btn layui-btn-sm layui-btn-normal"
												style="margin: 0px;">
												<i class="iconfont icon-gengduo"></i><span
													style="font-size: 14px;"> 更多</span>
											</button>
										</td>
									</tr>
								</tbody>
							</table>
						</div>

					</div>


					<!-- 第一阶段 -->
					<div class="layui-tab-item" id="item-DYJD" style="display: none;">

						<div>
							<form style="float: right;">
								<div class="form-row">
									<div class="form-group col-md">
										<select class="form-control">
											<option selected disabled style="display: none;" value="">请选择申请状态</option>
											<option>已通过认证</option>
											<option>2</option>
											<option>3</option>
											<option>4</option>
											<option>5</option>
										</select>
									</div>
									<a href="#" type="submit"><i
										class="layui-icon layui-icon-search"
										style="font-size: 30px; color: #1E9FFF;"></i></a>
								</div>
							</form>
						</div>
						<div>
							<table class="table">
								<thead>
									<tr>
										<th scope="col"><i class="iconfont icon-jianzhu"
											style="font-size: 18px; color: #1e9fff"></i>企业名称</th>
										<th scope="col"><i class="iconfont icon-shijian"
											style="font-size: 18px; color: #cdcdcd;"></i>申请时间</th>
										<th scope="col"><i class="iconfont icon-xiugai"
											style="font-size: 18px; color: #549688;"></i>修改内容</th>
										<th scope="col"><i class="iconfont icon-B"
											style="font-size: 18px; color: #dc3023;"></i>申请状态</th>
										<th scope="col"><i class="iconfont icon--_caozuo"
											style="font-size: 18px; color: #5aa9e6;"></i>操作</th>

									</tr>
								</thead>
								<tbody>
									<tr>
										<td>杭州齐家网络有限公司</td>
										<td>2020/01/09</td>
										<td>企业成立时间修改为…<a href=""
											style="color: #666666; font-size: 10px;"> 更多</a></td>
										<td><span class="layui-badge layui-bg-orange">通过申请</span></td>
										<td></td>
									</tr>
									<tr>
										<td>杭州齐家网络有限公司</td>
										<td>2020/01/09</td>
										<td>企业成立时间修改为…<a href=""
											style="color: #666666; font-size: 10px;"> 更多</a></td>
										<td><span class="layui-badge layui-bg-green">驳回申请</span></td>
										<td></td>
									</tr>
									<tr>
										<td>杭州齐家网络有限公司</td>
										<td>2020/01/09</td>
										<td>企业成立时间修改为…<a href=""
											style="color: #666666; font-size: 10px;"> 更多</a></td>
										<td><span class="layui-badge layui-bg-blue">等待处理</span></td>
										<td>
											<button type="button"
												class="layui-btn layui-btn-sm layui-btn-normal"
												style="margin: 0px;">去审核</button>
										</td>
									</tr>
								</tbody>
							</table>
						</div>

					</div>


					<!-- 第二阶段 -->
					<div class="layui-tab-item" id="item-DEJD" style="display: none;">
					</div>

					<!-- 员工信息 -->
					<div class="layui-tab-item" id="item-YHXX" style="display: none;">

						<div>
							<form style="float: right;">
								<div class="form-row">
									<div class="form-group col-md">
										<select id="inputTime" class="form-control">
											<option selected>请选择入企年份</option>
											<option>2021</option>
											<option>2020</option>
										</select>
									</div>
									<div class="form-group col-md">
										<select id="inputState" class="form-control">
											<option selected>请选择员工类型</option>
											<option>...</option>
										</select>
									</div>
									<div class="form-group col-md">
										<input type="text" class="form-control" id="inputZ"
											placeholder="员工名称或员工代码">
									</div>
									<a href="#" type="submit"><i
										class="layui-icon layui-icon-search"
										style="font-size: 30px; color: #1E9FFF;"></i></a>
								</div>
							</form>
						</div>
						<table class="table">
							<thead>
								<tr>
									<th scope="col"><i class="iconfont icon-bianhao"
										style="color: #999999"></i> 员工编号</th>
									<th scope="col"><i class="iconfont icon-yonghu"
										style="font-size: 18px; color: #1e9fff"></i>员工名称</th>
									<th scope="col"><i class="iconfont icon-leixing"
										style="font-size: 18px; color: #f9906f;"></i>员工类型</th>
									<th scope="col"><i class="iconfont icon-shijian"
										style="font-size: 18px; color: #cdcdcd;"></i>入企时间</th>
									<th scope="col"><i class="iconfont icon--_caozuo"
										style="font-size: 18px; color: #5aa9e6;"></i> 操作</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th scope="row"><i class="iconfont icon-6"
										style="font-size: 16px; color: #e29c45;"></i> Y20189</th>
									<td>陈沈清</td>
									<td>普通员工</td>
									<td>2020/01/09</td>
									<td>
										<button type="button"
											class="layui-btn layui-btn-sm layui-btn-normal"
											style="margin: 0px;">
											<i class="iconfont icon-gengduo"></i><span
												style="font-size: 14px;"> 更多</span>
										</button>
									</td>
								</tr>
								<tr>
									<th scope="row"><a href=""> <i
											class="iconfont icon-xiaoxi"
											style="font-size: 18px; color: #e29c45;"></i></a> Y20189</th>
									<td>陈沈清</td>
									<td>项目经理</td>
									<td>2020/01/09</td>
									<td>
										<button type="button"
											class="layui-btn layui-btn-sm layui-btn-normal"
											style="margin: 0px;">
											<i class="iconfont icon-gengduo"></i><span
												style="font-size: 14px;"> 更多</span>
										</button>
									</td>
								<tr>
									<th scope="row"><a href=""> <i
											class="iconfont icon-xiaoxi"
											style="font-size: 18px; color: #e29c45;"></i></a> Y20189</th>
									<td>陈沈清</td>
									<td>办公室主任</td>
									<td>2020/01/09</td>
									<td>
										<button type="button"
											class="layui-btn layui-btn-sm layui-btn-normal"
											style="margin: 0px;">
											<i class="iconfont icon-gengduo"></i><span
												style="font-size: 14px;"> 更多</span>
										</button>
									</td>
								</tr>
								<tr>
									<th scope="row"><a href=""> <i
											class="iconfont icon-xiaoxi"
											style="font-size: 18px; color: #e29c45;"></i></a> Y20189</th>
									<td>陈沈清</td>
									<td>部门主管</td>
									<td>2020/01/09</td>
									<td>
										<button type="button"
											class="layui-btn layui-btn-sm layui-btn-normal"
											style="margin: 0px;">
											<i class="iconfont icon-gengduo"></i><span
												style="font-size: 14px;"> 更多</span>
										</button>
									</td>
								</tr>
							</tbody>
						</table>

					</div>


					<!-- 信息修改 -->
					<div class="layui-tab-item" id="item-XXXG" style="display: none;">

						<div>
							<form style="float: right;">
								<div class="form-row">
									<div class="form-group col-md">
										<select class="form-control">
											<option selected disabled style="display: none;" value="">请选择申请状态</option>
											<option>已通过认证</option>
											<option>2</option>
											<option>3</option>
											<option>4</option>
											<option>5</option>
										</select>
									</div>
									<a href="#" type="submit"><i
										class="layui-icon layui-icon-search"
										style="font-size: 30px; color: #1E9FFF;"></i></a>
								</div>
							</form>
						</div>
						<div>
							<table class="table">
								<thead>
									<tr>
										<th scope="col"><i class="iconfont icon-bianhao"
											style="color: #999999"></i> 员工编号</th>
										<th scope="col"><i class="iconfont icon-yonghu"
											style="font-size: 18px; color: #1e9fff"></i>申请人</th>

										<th scope="col"><i class="iconfont icon-xiugai"
											style="font-size: 18px; color: #549688;"></i>修改内容</th>
										<th scope="col"><i class="iconfont icon-shijian"
											style="font-size: 18px; color: #cdcdcd;"></i>申请时间</th>
										<th scope="col"><i class="iconfont icon-B"
											style="font-size: 18px; color: #dc3023;"></i>申请状态</th>
										<th scope="col"><i class="iconfont icon--_caozuo"
											style="font-size: 18px; color: #5aa9e6;"></i>操作</th>

									</tr>
								</thead>
								<tbody>
									<tr>
										<td>Y20189</td>
										<td>陈聪明</td>
										<td>员工陈不错子多次矿工，申请辞去… <a href=""
											style="color: #666666; font-size: 10px;"> 更多</a></td>
										<td>2020/01/09</td>
										<td><span class="layui-badge layui-bg-orange">通过申请</span></td>
										<td></td>
									</tr>
									<tr>
										<td>Y20189</td>
										<td>陈聪明</td>
										<td>员工陈不错子多次矿工，申请辞去… <a href=""
											style="color: #666666; font-size: 10px;"> 更多</a></td>
										<td>2020/01/09</td>
										<td><span class="layui-badge layui-bg-green">驳回申请</span></td>
										<td></td>
									</tr>
									<tr>
										<td>Y20189</td>
										<td>陈聪明</td>
										<td>员工陈不错子多次矿工，申请辞去… <a href=""
											style="color: #666666; font-size: 10px;"> 更多</a></td>
										<td>2020/01/09</td>
										<td><span class="layui-badge layui-bg-blue">等待处理</span></td>
										<td>
											<button type="button"
												class="layui-btn layui-btn-sm layui-btn-normal"
												style="margin: 0px;">去处理</button>
										</td>
									</tr>
								</tbody>
							</table>
						</div>

					</div>

				</div>
			</div>

		</div>

		<%@ include file="lly-footer.jsp"%>
	</div>
	<script src="../res/layui/layui.js"></script>
	<script>
		//JavaScript代码区域
		layui.use('element', function() {
			var element = layui.element;
		});
	</script>

	<script>
		layui.use('element', function() {
			var $ = layui.jquery, element = layui.element; //Tab的切换功能，切换事件监听等，需要依赖element模块

			//触发事件
			var active = {
				tabZPXX : function() {
					element.tabChange('demo', 'ZPXX');
				},
				tabJLC : function() {
					if ($("#item-JLC")[0].style.display == "none") {
						element.tabAdd('demo', {
							title : '简历池',
							id : 'JLC'
						});
						$("#item-JLC")[0].style.display = "";
						$("#item-JLC")[0].classList.add("layui-show");
					}
					element.tabChange('demo', 'JLC');
				},
				tabDYJD : function() {
					if ($("#item-DYJD")[0].style.display == "none") {
						element.tabAdd('demo', {
							title : '第一阶段',
							id : 'DYJD'
						});
						$("#item-DYJD")[0].style.display = "";
						$("#item-DYJD")[0].classList.add("layui-show");
					}
					element.tabChange('demo', 'DYJD');
				},
				tabDEJD : function() {
					if ($("#item-DEJD")[0].style.display == "none") {
						element.tabAdd('demo', {
							title : '第二阶段',
							id : 'DEJD'
						});
						$("#item-DEJD")[0].style.display = "";
						$("#item-DEJD")[0].classList.add("layui-show");
					}
					element.tabChange('demo', 'DEJD');
				},
				tabYHXX : function() {
					if ($("#item-YHXX")[0].style.display == "none") {
						element.tabAdd('demo', {
							title : '用户信息',
							id : 'YHXX'
						});
						$("#item-YHXX")[0].style.display = "";
						$("#item-YHXX")[0].classList.add("layui-show");
					}
					element.tabChange('demo', 'YHXX');
				},
				tabXXXG : function() {
					if ($("#item-XXXG")[0].style.display == "none") {
						element.tabAdd('demo', {
							title : '信息修改',
							id : 'XXXG'
						});
						$("#item-XXXG")[0].style.display = "";
						$("#item-XXXG")[0].classList.add("layui-show");
					}
					element.tabChange('demo', 'XXXG');
				},

			};

			$('.site-demo-active').on('click', function() {
				var othis = $(this), type = othis.data('type');
				active[type] ? active[type].call(this, othis) : '';
			});

			//Hash地址的定位
			var layid = location.hash.replace(/^#demo=/, '');
			element.tabChange('demo', layid);

			element.on('tab(demo)', function(elem) {
				location.hash = 'demo=' + $(this).attr('lay-id');
			});

		});
	</script>

</body>
</html>
