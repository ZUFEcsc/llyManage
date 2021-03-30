<%@ page language="java" import="java.util.*,dao.*,bean.*" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%><!DOCTYPE html>
	
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
<%@ include file="bootstrap.jsp"%>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<title>管理员页面</title>
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
				<%@ include file="admin-card.jsp"%>

				<ul class="layui-nav layui-nav-tree" lay-filter="test">
					<li class="layui-nav-item layui-nav-itemed"><a class=""
						href="javascript:;"> <i
							class="layui-icon layui-icon-release layui-icon-list"
							style="font-size: 22px; margin-right: 10px;"></i>企业管理
					</a>
						<dl class="layui-nav-child">
							<dd>
								<a href="#" class="site-demo-active" data-url="QYXX"
									data-id="QYXX" data-type="tabQYXX">企业信息</a>
							</dd>
							<dd>
								<a href="#" class="site-demo-active" data-url="QYRZ"
									data-id="QYRZ" data-type="tabQYRZ">企业认证</a>
							</dd>
							<dd>
								<a href="#" class="site-demo-active" data-url="XXXG"
									data-id="XXXG" data-type="tabXXXG">信息修改</a>
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
								<a href="#" class="site-demo-active" data-url="YHRZ"
									data-id="YHRZ" data-type="tabYHRZ">用户认证</a>
							</dd>
						</dl></li>
				</ul>
			</div>
		</div>

		<div class="layui-body">
			<!-- 内容主体区域 -->
			<div class="layui-tab layui-tab-brief" lay-filter="demo">
				<ul class="layui-tab-title">
					<li class="layui-this" lay-id="QYXX">企业信息 <!--lay-allowclose="true"(div) <i class="layui-icon layui-unselect layui-tab-close">ဆ</i> -->
					</li>
				</ul>
				<div class="layui-tab-content">
					<!-- 企业信息 -->
					<div class="layui-tab-item layui-show" id="item-QYXX">

						<div>
							<form style="float: right;">
								<div class="form-row">
									<div class="form-group col-md">
										<select id="inputTime" class="form-control">
											<option selected>请选择入驻年份</option>
											<option>2021</option>
											<option>2020</option>
										</select>
									</div>
									<div class="form-group col-md">
										<select id="inputState" class="form-control">
											<option selected>请选择所属行业</option>
											<option>...</option>
										</select>
									</div>
									<div class="form-group col-md">
										<input type="text" class="form-control" id="inputZ"
											placeholder="企业名称或企业代码">
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
										style="color: #999999"></i> 企业编号</th>
									<th scope="col"><i class="iconfont icon-jianzhu"
										style="font-size: 18px; color: #1e9fff"></i>企业名称</th>
									<th scope="col"><i class="iconfont icon-B--hangyetongji"
										style="color: #e9bb1d;"></i>所属行业</th>
									<th scope="col"><i class="iconfont icon-shijian"
										style="font-size: 18px; color: #cdcdcd;"></i>入驻时间</th>
									<th scope="col"><i class="iconfont icon--_caozuo"
										style="font-size: 18px; color: #5aa9e6;"></i> 操作</th>
								</tr>
							</thead>
							<tbody>
							<%
								Dao dao=new Dao();
								List<CompanyBean> list=dao.getListCompanyBasicInfo();
								for(CompanyBean ab:list)
								{
							%>
								<tr>
									<th scope="row"><i class="iconfont icon-6"
										style="font-size: 16px; color: #e29c45;"></i><%=ab.getNumber() %></th>
									<td><%=ab.getName() %></td>
									<td><%=ab.getKind() %></td>
									<td><%=ab.getTime() %></td>
									<td>
										<button type="button"
											class="layui-btn layui-btn-sm layui-btn-normal"
											style="margin: 0px;">
											<i class="iconfont icon-gengduo"></i><span
												style="font-size: 14px;"> 更多</span>
										</button>
									</td>
								</tr>
								<%} %>

							</tbody>
						</table>

					</div>

					<!-- 企业认证 -->
					<div class="layui-tab-item" id="item-QYRZ" style="display: none;">

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
								<%
								for(CompanyBean ab:list)
								{
								%>
									<tr>
										<td><%=ab.getName() %></td>
										<td><%=ab.getTime() %></td>
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
									<%} %>
								</tbody>
							</table>
						</div>

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
								<%
								for(CompanyBean ab:list)
								{
								%>
									<tr>
										<td><%=ab.getName() %></td>
										<td><%=ab.getTime() %></td>
										<td>企业成立时间修改为…<a href=""
											style="color: #666666; font-size: 10px;"> 更多</a></td>
										<td><span class="layui-badge layui-bg-orange">通过申请</span></td>
										<td></td>
									</tr>
								<%} %>
								</tbody>
							</table>
						</div>

					</div>


					<!-- 用户信息 -->
					<div class="layui-tab-item" id="item-YHXX" style="display: none;">

						<div>
							<form style="float: right;">
								<div class="form-row">
									<div class="form-group col-md">
										<select id="inputTime" class="form-control">
											<option selected>请选择入驻年份</option>
											<option>2021</option>
											<option>2020</option>
										</select>
									</div>
									<div class="form-group col-md">
										<select id="inputState" class="form-control">
											<option selected>请选择用户性别</option>
											<option>...</option>
										</select>
									</div>
									<div class="form-group col-md">
										<input type="text" class="form-control" id="inputZ"
											placeholder="用户名称或用户代码">
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
										style="color: #999999"></i> 用户编号</th>
									<th scope="col"><i class="iconfont icon-yonghu"
										style="font-size: 18px; color: #1e9fff"></i>用户名称</th>
									<th scope="col"><i class="iconfont icon-xingbie"
										style="font-size: 18px; color: #f9906f;"></i>用户性别</th>
									<th scope="col"><i class="iconfont icon-shijian"
										style="font-size: 18px; color: #cdcdcd;"></i>入驻时间</th>
									<th scope="col"><i class="iconfont icon--_caozuo"
										style="font-size: 18px; color: #5aa9e6;"></i> 操作</th>
								</tr>
							</thead>
							<tbody>
							<%
								Dao dao2 = new Dao();
							List<UserBean> list2 = dao2.getListUerBasicInfo();
							for(UserBean ab:list2)
							{
							%>
								<tr>
									<th scope="row"><i class="iconfont icon-6"
										style="font-size: 16px; color: #e29c45;"></i> <%=ab.getUsername() %></th>
									<td><%=ab.getName() %></td>
									<td><%=ab.getSex() %></td>
									<td><%=ab.getRegist_time() %></td>
									<td>
										<button type="button"
											class="layui-btn layui-btn-sm layui-btn-normal"
											style="margin: 0px;">
											<i class="iconfont icon-gengduo"></i><span
												style="font-size: 14px;"> 更多</span>
										</button>
									</td>
								</tr>
								<%} %>
							</tbody>
						</table>

					</div>


					<!-- 用户认证 -->
					<div class="layui-tab-item" id="item-YHRZ" style="display: none;">

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
										<th scope="col"><i class="iconfont icon-yonghu"
											style="font-size: 18px; color: #1e9fff"></i>用户名称</th>
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
								<%
								for(UserBean ab:list2)
								{
								%>
									<tr>
										<td><%=ab.getName() %></td>
										<td><%=ab.getRegist_time() %></td>
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
									<%} %>
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
				tabQYXX : function() {
					element.tabChange('demo', 'QYXX');
				},
				tabQYRZ : function() {
					if ($("#item-QYRZ")[0].style.display == "none") {
						element.tabAdd('demo', {
							title : '企业认证',
							id : 'QYRZ'
						});
						$("#item-QYRZ")[0].style.display = "";
					}
					element.tabChange('demo', 'QYRZ');
				},
				tabXXXG : function() {
					if ($("#item-XXXG")[0].style.display == "none") {
						element.tabAdd('demo', {
							title : '信息修改',
							id : 'XXXG'
						});
						$("#item-XXXG")[0].style.display = "";
					}
					element.tabChange('demo', 'XXXG');
				},
				tabYHXX : function() {
					if ($("#item-YHXX")[0].style.display == "none") {
						element.tabAdd('demo', {
							title : '用户信息',
							id : 'YHXX'
						});
						$("#item-YHXX")[0].style.display = "";
					}
					element.tabChange('demo', 'YHXX');
				},
				tabYHRZ : function() {
					if ($("#item-YHRZ")[0].style.display == "none") {
						element.tabAdd('demo', {
							title : '用户认证',
							id : 'YHRZ'
						});
						$("#item-YHRZ")[0].style.display = "";
					}
					element.tabChange('demo', 'YHRZ');
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
