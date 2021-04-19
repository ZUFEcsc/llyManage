<%@ page language="java" import="java.util.*,dao.*,bean.*"
	contentType="text/html; charset=utf-8" pageEncoding="utf-8"%><!DOCTYPE html>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html>
<head>
<%@ include file="bootstrap.jsp"%>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<title>管理员页面</title>
<style>
.anchorBL {
	display: none;
}

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
<script src="https://cdn.bootcss.com/echarts/4.1.0.rc2/echarts.min.js"></script>
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/npm/echarts/dist/echarts.min.js"></script>
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/npm/echarts-gl/dist/echarts-gl.min.js"></script>
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/npm/echarts-stat/dist/ecStat.min.js"></script>
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/npm/echarts/dist/extension/dataTool.min.js"></script>
<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://img.hcharts.cn/highcharts-plugins/highcharts-zh_CN.js"></script>
<script src="https://code.highcharts.com.cn/highcharts/highcharts.js"></script>
<script
	src="https://code.highcharts.com.cn/highcharts/highcharts-more.js"></script>
<script src="https://code.highcharts.com.cn/highcharts/highcharts-3d.js"></script>
<script
	src="https://code.highcharts.com.cn/highcharts/modules/exporting.js"></script>
<script
	src="https://code.highcharts.com.cn/highcharts/modules/wordcloud.js"></script>
<script src="https://code.highcharts.com.cn/highcharts/modules/oldie.js"></script>
<script type="text/javascript"
	src="https://api.map.baidu.com/api?v=2.0&ak=Tycwp3FnwQuq9ATHo0qdGoSmjZIOM7Hb"></script>
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/npm/echarts/dist/extension/bmap.min.js"></script>
<script src="../js/map/china.js"></script>
<script type="text/javascript" src="http://code.ciphertrick.com/demo/jquerysession/js/jquerysession.js"></script>

<script type="text/javascript">
	window.onload=function(){
		//要初始化的东西
		var $ = layui.jquery, element = layui.element;
		var tabv = '<%=request.getAttribute("tabv")%>';
		if(tabv=='1'){
			element.tabAdd('demo', {
				title : '企业认证',
				id : 'QYRZ'
			});
			$("#item-QYXX").removeClass("layui-show");
			$("#item-QYRZ").addClass("layui-show");
			element.tabChange('demo', 'QYRZ');
		}
		
	}
	
	</script>
</head>
<body class="layui-layout-body">
	<div class="layui-layout layui-layout-admin">
		<%@ include file="admin-header.jsp"%>
		<div class="layui-side layui-bg-black">
			<div class="layui-side-scroll">
				<!-- 左侧导航区域（可配合layui已有的垂直导航） -->
				<%@ include file="admin-card.jsp"%>

				<ul class="layui-nav layui-nav-tree" lay-filter="test">
					<li class="layui-nav-item layui-nav-itemed"><a class=""
						href="javascript:;"> 企业管理 </a>
						<dl class="layui-nav-child">
							<dd>
								<a href="#1" class="site-demo-active" data-url="QYXX"
									data-id="QYXX" data-type="tabQYXX">企业信息</a>
							</dd>
							<dd>
								<a href="#2" class="site-demo-active" data-url="QYRZ"
									data-id="QYRZ" data-type="tabQYRZ">企业认证</a>
							</dd>
							<dd>
								<a href="#3" class="site-demo-active" data-url="XXXG"
									data-id="XXXG" data-type="tabXXXG">信息修改</a>
							</dd>
							<dd>
								<a href="#4" class="site-demo-active" data-url="QYSJFX"
									data-id="QYSJFX" data-type="tabQYSJFX">数据分析</a>
							</dd>
						</dl></li>
					<li class="layui-nav-item layui-nav-itemed"><a
						href="javascript:;"> 用户管理 </a>
						<dl class="layui-nav-child">
							<dd>
								<a href="#" class="site-demo-active" data-url="YHXX"
									data-id="YHXX" data-type="tabYHXX">用户信息</a>
							</dd>
							<dd>
								<a href="#" class="site-demo-active" data-url="YHRZ"
									data-id="YHRZ" data-type="tabYHRZ">用户认证</a>
							</dd>
							<dd>
								<a href="#" class="site-demo-active" data-url="YHSJFX"
									data-id="YHSJFX" data-type="tabYHSJFX">数据分析</a>
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
					<div class="layui-tab-item" id="item-QYXX">

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
									Dao dao = new Dao();
									List<CompanyBean> list = dao.getListCompanyBasicInfo();
									for (CompanyBean ab : list) {
								%>
								<tr>
									<th scope="row"><i class="iconfont icon-6"
										style="font-size: 16px; color: #e29c45;"></i><%=ab.getNumber()%></th>
									<td><%=ab.getName()%></td>
									<td><%=ab.getKind()%></td>
									<td><%=ab.getTime()%></td>
									<td>
										<button type="button"
											class="layui-btn layui-btn-sm layui-btn-normal"
											style="margin: 0px;">
											<i class="iconfont icon-gengduo"></i><span
												style="font-size: 14px;"> 更多</span>
										</button>
									</td>
								</tr>
								<%
									}
								%>

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
										for (CompanyBean ab : list) {
											if (ab.getName().equals("福建阿里")) {

											}
									%>
									<tr>
										<td><%=ab.getName()%></td>
										<td><%=ab.getTime()%></td>

										<td>
											<%
												if (ab.getQuali_state().equals("未通过认证")) {
											%> <span class="layui-badge layui-bg-red">未通过认证</span> <%
 	}
 %> <%
 	if (ab.getQuali_state().equals("已通过认证")) {
 %> <span class="layui-badge layui-bg-orange">已通过认证</span> <%
 	}
 %>
  <%
 	if (ab.getQuali_state().equals("已创建账号")) {
 %> <span class="layui-badge layui-bg-green">已创建账号</span> <%
 	}
 %>
										</td>
										<td>
											<%
												if (ab.getQuali_state().equals("已通过认证")) {
											%>
											<button type="button"
												class="layui-btn layui-btn-sm layui-btn-normal"
												style="margin: 0px;" data-toggle="modal"
												data-target="#exampleModal">
												<span style="font-size: 14px;">创建账号</span>
											</button>
											 <%}%>
											 <%
												if (ab.getQuali_state().equals("未通过认证")) {
											%>
											<button type="button"
												class="layui-btn layui-btn-sm layui-btn-normal"
												style="margin: 0px;" data-toggle="modal"
												data-target="#exampleModal">
												<span style="font-size: 14px;">通过认证</span>
											</button>
											 <%}%>
											  <%
												if (ab.getQuali_state().equals("已创建账号")) {
											%>
											
											 <%}%>
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
									<%
										}
									%>
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
									<tr>
										<td>安徽阿里</td>
										<td>2020-08-14</td>
										<td>企业成立时间修改为2008-01-01<a href=""
											style="color: #666666; font-size: 10px;"> 更多</a></td>
										<td><span class="layui-badge layui-bg-red">未通过认证</span></td>
										<td><button type="button"
												class="layui-btn layui-btn-sm layui-btn-normal"
												style="margin: 0px;padding:0px 15px;">
												<span style="font-size: 14px;">删 除</span>
											</button></td>
									</tr>
									<tr>
										<td>北京阿里</td>
										<td>2015-06-19</td>
										<td>企业规模修改为200人<a href=""
											style="color: #666666; font-size: 10px;"> 更多</a></td>
										<td><span class="layui-badge layui-bg-red">未通过认证</span></td>
										<td>
											<button type="button"
												class="layui-btn layui-btn-sm layui-btn-normal"
												style="margin: 0px;padding:0px 15px;">
												<span style="font-size: 14px;">删 除</span>
											</button>
										</td>
									</tr>
									<tr>
										<td>福建阿里</td>
										<td>2019-06-27</td>
										<td>企业编号修改为FJ00001F<a href=""
											style="color: #666666; font-size: 10px;"> 更多</a></td>
										<td><span class="layui-badge layui-bg-orange">通过申请</span>
										</td>
										<td>
											<button type="button"
												class="layui-btn layui-btn-sm layui-btn-normal"
												style="margin: 0px;">
												<span style="font-size: 14px;">去处理</span>
											</button>
										</td>
									</tr>
								</tbody>
							</table>
						</div>

					</div>

					<!-- 企业数据分析 -->
					<div class="layui-tab-item layui-col-space10" id="item-QYSJFX"
						style="display: none;">
						<div class="layui-col-md4" style="width:30%;">
							<div class="layui-card">
								<div class="layui-card-header" style="text-align: center;">
									<strong style="font-size: 18px;">本周平台企业上线情况</strong>
								</div>
								<div class="layui-card-body" style="display: inline-block;">
									<div id="line-bar"
										style="margin-left: -10px; width: 380px; height: 280px;"></div>
								</div>
							</div>

							<div class="layui-card">
								<div class="layui-card-body" style="display: inline-block;">
									<div id="wordcloud"
										style="margin-left: -10px; width: 380px; height: 410px;"></div>
								</div>
							</div>
							
						</div>

						<div class="layui-col-md4">
							<div class="layui-card">

								<div class="layui-card-body">
									<div id="line"
										style="margin-left: -10px; width: 420px; height: 430px;"></div>
								</div>
							</div>


							<div class="layui-card">
								<div class="layui-card-body">
									<div id="bar"
										style="margin-left: -10px; width: 420px; height: 305px;"></div>
								</div>
							</div>
						</div>

						<div class="layui-col-md4" style="width:36%;">
							<div class="layui-card">

								<div class="layui-card-body">
									<div id="circle"
										style="margin-left: -10px; width: 455px; height: 430px;border: solid 1px black;"></div>
								</div>
							</div>


							<div class="layui-card">
								<div class="layui-card-header" style="text-align: center;">
									<strong style="font-size: 18px;">平台企业地域分布</strong>
								</div>
								<div class="layui-card-body">
									<div id="map1"
										style="margin-left: -10px; width: 455px; height: 260px; border: solid 1px black;"></div>
								</div>
							</div>
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
									List<Mg_UserBean> list2 = dao2.getListUerBasicInfo();
									for (Mg_UserBean ab : list2) {
								%>
								<tr>
									<th scope="row"><i class="iconfont icon-6"
										style="font-size: 16px; color: #e29c45;"></i> <%=ab.getUsername()%></th>
									<td><%=ab.getName()%></td>
									<td><%=ab.getSex()%></td>
									<td><%=ab.getRegist_time()%></td>
									<td>
										<button type="button"
											class="layui-btn layui-btn-sm layui-btn-normal"
											style="margin: 0px;">
											<i class="iconfont icon-gengduo"></i><span
												style="font-size: 14px;"> 更多</span>
										</button>
									</td>
								</tr>
								<%
									}
								%>
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
										for (Mg_UserBean ab : list2) {
									%>
									<tr>
										<td><%=ab.getName()%></td>
										<td><%=ab.getRegist_time()%></td>
										<td>
											<%
												if (ab.getState().equals("未通过认证")) {
											%> <span class="layui-badge layui-bg-red">未通过认证</span> <%
 	} else if(ab.getState().equals("已通过认证")) {
 %> <span class="layui-badge layui-bg-orange">已通过认证</span> <%
 	}
 %><%else{ %><span class="layui-badge layui-bg-green">已创建账号</span><%} %>
										</td>
										<td>
											<%
												if (ab.getState().equals("已通过认证")) {
											%>
											<button type="button"
												class="layui-btn layui-btn-sm layui-btn-normal"
												style="margin: 0px;" data-toggle="modal"
												data-target="#exampleModal">
												<span style="font-size: 14px;">创建账号</span>
											</button>
											 <%}%>
											 <%
												if (ab.getState().equals("未通过认证")) {
											%>
											<button type="button"
												class="layui-btn layui-btn-sm layui-btn-normal"
												style="margin: 0px;" data-toggle="modal"
												data-target="#exampleModal">
												<span style="font-size: 14px;">通过认证</span>
											</button>
											 <%}%>
											  <%
												if (ab.getState().equals("已创建账号")) {
											%>
											
											 <%}%>
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
									<%
										}
									%>
								</tbody>
							</table>
						</div>

					</div>

					<!-- 用户数据分析 -->
					<div class="layui-tab-item layui-show layui-col-space10" id="item-YHSJFX"
						style="display: none;">

						<div class="layui-col-md4">
							<div class="layui-card">
								<div class="layui-card-header" style="text-align: center;">
									<strong style="font-size: 18px;">本周平台企业上线情况</strong>
								</div>
								<div class="layui-card-body" style="display: inline-block;">
									<div id="linebar"
										style="margin-left: -10px; width: 420px; height: 280px;"></div>
								</div>
							</div>

							<div class="layui-card">
								<div class="layui-card-body" style="display: inline-block;">
									<div id="halfcircle1"
										style="margin-left: -10px; width: 420px; height: 320px;"></div>
								</div>
							</div>
						</div>

						<div class="layui-col-md4">
							<div class="layui-card">

								<div class="layui-card-body">
									<div id="lines"
										style="margin-left: -10px; width: 420px; height: 328px;"></div>
								</div>
							</div>


							<div class="layui-card">
								<div class="layui-card-body">
									<div id="halfcircle2"
										style="margin-left: -10px; width: 420px; height: 320px;"></div>
								</div>
							</div>
						</div>

						<div class="layui-col-md4">
							<div class="layui-card">

								<div class="layui-card-body">
									<div id="wordcould"
										style="margin-left: -10px; width: 420px; height: 684px;"></div>
								</div>
							</div>
						</div>

						<div class="layui-col-md7">
							<div class="layui-card">
								<div class="layui-card-header" style="text-align: center;">
									<strong style="font-size: 18px;">平台用户信息总览</strong>
								</div>
								<div class="layui-card-body" style="display: inline-block;">
									<div id="barpie"
										style="margin-left: -10px; width: 740px; height: 585px;"></div>
								</div>
							</div>
						</div>

						<div class="layui-col-md5">
							<div class="layui-card">
								<div class="layui-card-header" style="text-align: center;">
									<strong style="font-size: 18px;">平台用户地域分布</strong>
								</div>
								<div class="layui-card-body" style="display: inline-block;">
									<div id="map2"
										style="margin-left: -10px; width: 520px; height: 585px;"></div>
								</div>
							</div>
						</div>

						
					</div>
				</div>
			</div>
		</div>

		<%@ include file="lly-footer.jsp"%>
	</div>
	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				</br>
				<h4 style="margin-left: 10px; font-size: 19px;">是否创建该账号？</h4>
				</br>
				<div style="margin-left: 350px;">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">取消</button>
					<button type="button" class="btn btn-primary" data-dismiss="modal"
						onclick="clicktest()">确定</button>
				</div>
				</br>
			</div>
		</div>
	</div>
	
	<script src="../res/layui/layui.js"></script>
	<script>
	function clicktest(){
		window.location.href="PassQualiServlet?number="+"AH001F";
	}
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
				tabQYSJFX : function() {
					if ($("#item-QYSJFX")[0].style.display == "none") {
						element.tabAdd('demo', {
							title : '企业数据分析',
							id : 'QYSJFX'
						});
						$("#item-QYSJFX")[0].style.display = "";
					}
					element.tabChange('demo', 'QYSJFX');
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
				tabYHSJFX : function() {
					if ($("#item-YHSJFX")[0].style.display == "none") {
						element.tabAdd('demo', {
							title : '用户数据分析',
							id : 'YHSJFX'
						});
						$("#item-YHSJFX")[0].style.display = "";
					}
					element.tabChange('demo', 'YHSJFX');
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

	<!-- 企业上线情况-柱形图 -->
	<script type="text/javascript">
	var dom = document.getElementById("line-bar");
	var myChart = echarts.init(dom);
	var app = {};
	
	option = {
	    title:{
	        show:false,
	        text:"本周平台企业上线情况",
	        x:'center',
	        y:'top',
	        padding:10,
	        textStyle: {//主标题文本样式{"fontSize": 18,"fontWeight": "bolder","color": "#333"}
	                fontFamily: 'Arial',
	                fontSize: 18,
	                fontStyle: 'normal',
	                fontWeight: 'bold',
	            },
	    },
	    tooltip: {
	        trigger: 'axis',
	        axisPointer: {
	            type: 'cross',
	            crossStyle: {
	                color: '#999'
	            }
	        }
	    },
	    toolbox: {
	        feature: {
	            dataView: {show: true, readOnly: false},
	            magicType: {show: true, type: ['line', 'bar']},
	            restore: {show: true},
	            saveAsImage: {show: true}
	        }
	    },
	    legend: {
	        data: ['上线', '未上线', '差值'],
	        orient: 'vertical', // 'vertical'
	        x:550, // 'center' | 'left' | {number},
	        y:80, // 'center' | 'bottom' | {number}
	        textStyle : {
	　　　　　　　　fontWeight : 'normal',
	　　　　　　　　fontSize : 14,
	　　　　　　},
	        borderColor: 'rgba(89, 100, 114,0.8)',
	        borderWidth: 2,
	    },
	    xAxis: [
	        {
	            type: 'category',
	            data: ['周一', '周二', '周三', '周四', '周五', '周六', '周日'],
	            axisPointer: {
	                type: 'shadow'
	            },axisLabel: {
	                formatter: '{value} ',
	                textStyle: {
	          fontSize : 12     //更改坐标轴文字大小
	        }
	            }
	        }
	    ],
	    yAxis: [
	        {
	            type: 'value',
	            name: '人次',
	            min: 0,
	            max: 3000,
	            interval: 250,
	            axisLabel: {
	                formatter: '{value} ',
	                textStyle: {
	          fontSize : 10     //更改坐标轴文字大小
	        }
	            }
	        }
	    ],
	    series: [
	        {
	            name: '上线',
	            type: 'bar',
	            color:'#fac958',
	            data: [1320,2470,1370,1680,1790,1835,1760]
	        },
	        {
	            name: '未上线',
	            type: 'bar',
	            color:'#91cd76',
	            data: [720,570,670,880,790,865,940]
	        },
	        {
	            name: '差值',
	            type: 'line',
	            color:'#ef6667',
	
	            data: [500,1900,700,800,1000,970,820]
	        }
	    ]
	};
	myChart.setOption(option);

    </script>

	<!-- 发布职位 词云 -->
	<script>
		var text2="市场营销 市场营销 品牌公关 品牌公关 品牌公关 平面设计 平面设计 平面设计 平面设计 平面设计 平面设计 实习生 实习生 实习生 实习生 实习生 实习生 实习生 实习生 实习生 实习生 实习生 实习生 实习生 实习生 实习生 实习生 实习生 实习生 实习生 实习生 实习生 实习生 实习生 实习生 实习生 实习生 实习生 实习生 实习生 实习生 实习生 实习生 实习生 后期制作 后期制作 后期制作 后期制作 后期制作 后期制作 后期制作 后期制作 后期制作 后期制作 后期制作 后期制作 后期制作 后期制作 后期制作 后期制作 后期制作 后期制作 服务员 服务员 服务员 服务员 服务员 服务员 服务员 服务员 服务员 服务员 服务员 服务员 服务员 服务员 服务员 服务员 市场营销 市场营销 平面设计 平面设计 UI设计  UI设计 UI设计  UI设计 UI设计  UI设计 UI设计  UI设计 UI设计  UI设计 UI设计  UI设计 UI设计  UI设计 UI设计  UI设计 Java技术员 Java技术员 Java技术员 Java技术员 Java技术员 Java技术员 Java技术员 web前端 Java技术员 web前端 Java技术员 web前端 Java技术员 web前端 Java技术员 web前端 Java技术员 web前端 web前端 web前端 web前端 web前端 算法工程师 算法工程师 算法工程师 算法工程师 算法工程师 算法工程师 算法工程师 算法工程师 算法工程师 算法工程师 产品经理 产品经理  产品经理 产品经理 产品经理 产品经理 产品经理 产品经理 产品经理 市场营销  市场营销 市场营销 平面设计 平面设计 平面设计 新媒体运营 新媒体运营 新媒体运营 新媒体运营 新媒体运营 新媒体运营 新媒体运营 新媒体运营 新媒体运营 新媒体运营 新媒体运营 新媒体运营 行政主管 行政主管 行政主管 行政主管 行政主管 行政主管 行政主管 行政主管 行政主管 行政主管 行政主管 行政主管 行政主管 行政主管 网络推广 网络推广 网络推广  网络推广  网络推广  网络推广  网络推广  网络推广 人力资源专员 人力资源专员 人力资源专员 人力资源专员 人力资源专员 人力资源专员 人力资源专员 人力资源专员 品牌公关 品牌公关 品牌公关 品牌公关 品牌公关 品牌公关 产品经理 产品经理 产品经理 产品经理 产品经理 产品经理 产品经理 产品经理 产品经理 产品经理 产品经理 产品经理 产品经理 产品经理 产品经理 产品经理 分公司负责人 分公司负责人 分公司负责人 分公司负责人 分公司负责人 物流运营 物流运营 物流运营 物流运营 物流运营 物流运营 物流运营 物流运营 物流运营 物流运营 物流运营 后勤 后勤 后勤  后勤 后勤 后勤  后勤 后勤 后勤 后勤 后勤 后勤 投资经理 投资经理 投资经理 投资经理 投资经理 投资经理 投资经理 投资经理 项目专员 项目专员 项目专员 项目专员 项目专员 项目专员 项目专员 项目专员 项目专员 项目专员 项目专员";
		var data = text2.split(/[,\. ]+/g)
		.reduce(function (arr, word) {
			var obj = arr.find(function (obj) {
				return obj.name === word;
			});
			if (obj) {
				obj.weight += 1;
			} else {
				obj = {
					name: word,
					weight: 1
				};
				arr.push(obj);
			}
			return arr;
		}, []);
		Highcharts.chart('wordcloud', {
			series: [{
				type: 'wordcloud',
				data: data
			}],
			title: {
				text: '今日发布职位TOP20',
				style: {
					fontFamily: 'Arial',
		                fontSize: 18,
		                fontStyle: 'normal',
		                fontWeight: 'bold',
					},
		
			}
		});

    </script>

	<!-- 新增企业及企业用户 折线图 -->
	<script>
    Highcharts.chart('line', {
		chart: {
			type: 'area',
			options3d: {
				enabled: true,
				alpha: 15,
				beta:20,
				depth: 500
			}
		},
		title: {
			text: "本月新增企业及企业用户",
			style: {
				fontFamily: 'Arial',
	                fontSize: 18,
	                fontStyle: 'normal',
	                fontWeight: 'bold',
				},
		},
		yAxis: {
			title: {
				text: '人数',
				x: -40,
				style: {
				fontFamily: 'Arial',
	                fontSize: 14,
	                fontStyle: 'normal',
	                fontWeight: 'bold',
				},
			},
			labels: {
				format: '{value:,.0f}',
				style: {
	                    fontSize: '12px',
	                    fontWeight: 'bold'
	                }
			},
			gridLineDashStyle: 'Dash'
		},
		xAxis: [{
			visible: true,
			style: {
	                    fontSize: '12px',
	                    fontWeight: 'bold'
	                }
		}, {
			visible: false
		}, {
			visible: false
		}, {
			visible: false
		}, {
			visible: false
		}],
		plotOptions: {
			area: {
				depth: 100,
				marker: {
					enabled: false
				},
				states: {
					inactive: {
						enabled: false
					}
				}
			}
		},
		tooltip: {
			valueSuffix: ' MAMSL'
		},
		legend : {
	    itemStyle : {
	        'fontSize' : '12px'
	    }
	},
		series: [{
			name: "新增企业",
			lineColor: 'rgb(200, 190, 140)',
			color: 'rgb(200, 190, 140)',
			fillColor: 'rgb(230, 220, 180)',
	
			data: [
				['1', 40],
				['2', 59],
				['3', 52],
				['4', 32],
				['5', 41],
				['6', 68],
				['7', 120],
				['8', 84],
				['9', 68],
				['10', 59],
				['11', 46],
				['12', 35],
				['13', 47],
				['14', 42],
				['15', 40],
				['16', 72],
				['17', 52],
				['18', 60],
				['19',48],
				['20', 55],
				['21', 48],
				['22', 85],
				['23', 70],
				['24', 78],
				['25', 50],
				['26', 42],
				['27', 47],
				['28', 50],
				['29', 53],
				['30', 46],
				['31', 51],
			]
		},{
			xAxis: 1,
			name: "办公室主任",
			lineColor: 'rgb(120,160,180)',
			color: 'rgb(140,180,200)',
			fillColor: 'rgb(140,180,200)',
			data: [
				['1', 90],
				['2', 89],
				['3', 52],
				['4', 42],
				['5', 61],
				['6', 88],
				['7', 130],
				['8', 84],
				['9', 68],
				['10', 69],
				['11', 46],
				['12', 65],
				['13', 77],
				['14', 42],
				['15', 40],
				['16', 72],
				['17', 52],
				['18', 70],
				['19',48],
				['20', 55],
				['21', 48],
				['22', 95],
				['23', 70],
				['24', 78],
				['25', 70],
				['26', 62],
				['27', 47],
				['28', 50],
				['29', 53],
				['30', 46],
				['31', 71],
			]
		}, {
			xAxis: 2,
			lineColor: 'rgb(43, 144, 143)',
			color: 'rgb(43, 144, 143)',
			fillColor: 'rgb(119, 206, 199)',
			
			name: "部门经理",
			data: [
				['1', 90],
				['2', 109],
				['3', 152],
				['4', 142],
				['5', 161],
				['6', 148],
				['7', 130],
				['8', 124],
				['9', 118],
				['10', 129],
				['11', 126],
				['12', 165],
				['13', 127],
				['14', 102],
				['15', 110],
				['16', 102],
				['17', 112],
				['18', 130],
				['19', 118],
				['20', 155],
				['21', 148],
				['22', 195],
				['23', 90],
				['24', 138],
				['25', 170],
				['26', 62],
				['27', 147],
				['28', 70],
				['29', 123],
				['30', 146],
				['31', 121],
			]
		}, {
			xAxis: 3,
			
			lineColor: 'rgb(236, 152, 0)',
			color: 'rgb(236, 152, 0)',
			fillColor: 'rgb(247, 163, 92)',
			name: "HR-人力主管",
			data: [
				['1', 290],
				['2', 209],
				['3', 252],
				['4', 242],
				['5', 221],
				['6', 138],
				['7', 230],
				['8', 224],
				['9', 218],
				['10', 229],
				['11', 226],
				['12', 215],
				['13', 227],
				['14', 202],
				['15', 210],
				['16', 102],
				['17', 212],
				['18', 230],
				['19', 218],
				['20', 215],
				['21', 248],
				['22', 235],
				['23', 230],
				['24', 238],
				['25', 270],
				['26', 262],
				['27', 247],
				['28', 220],
				['29', 203],
				['30', 246],
				['31', 231],
			]
		}, {
			xAxis: 4,
	
			lineColor: 'rgb(180,90,50)',
			color: 'rgb(200,110,50)',
			fillColor: 'rgb(200,110,50)',
			name: "项目经理",
			data: [
				['1', 300],
				['2', 309],
				['3', 322],
				['4', 312],
				['5', 261],
				['6', 238],
				['7', 330],
				['8', 314],
				['9', 318],
				['10', 329],
				['11', 226],
				['12', 265],
				['13', 317],
				['14', 302],
				['15', 310],
				['16', 192],
				['17', 312],
				['18', 310],
				['19', 318],
				['20', 255],
				['21', 248],
				['22', 315],
				['23', 310],
				['24', 138],
				['25', 270],
				['26', 262],
				['27', 247],
				['28', 320],
				['29', 303],
				['30', 246],
				['31', 291],
			]
		}]
	});
        </script>

	<!-- 企业行业与规模分布 条形图 -->
	<script>
        var categories_hy=['医疗健康','住宿餐饮','运输','其他','信息技术','金融','服务','房地产','建筑']
		var categories_gm=['5000以上','1000-3000','300-500','50-100','50-150','0-50','150-300','500-1000','3000-5000']
		var chart = Highcharts.chart('bar', {
			chart: {
				type: 'bar'
			},
			title: {
				text: '企业行业与规模分布',
				style: {
					fontFamily: 'Arial',
		                fontSize: 18,
		                fontStyle: 'normal',
		                fontWeight: 'bold',
					},
			},
			subtitle: {
			},
			
			legend : {
		    itemStyle : {
		        'fontSize' : '12px'
		    }
		},
			xAxis: [{
				categories:categories_hy,
				reversed: false,
				labels: {
					step: 1,
					style: {
		                    fontSize: '12px',
		                    fontWeight: 'bold'
		                }
				}
			}, { 
				// 显示在右侧的镜像 xAxis （通过 linkedTo 与第一个 xAxis 关联）
				opposite: true, 
				reversed: false,
				categories: categories_gm,
				linkedTo: 0,
				labels: {
					step: 1,
					style: {
		                    fontSize: '12px',
		                    fontWeight: 'bold'
		                }
				}
			}],
			yAxis: {
				title: {
					text: null
				},
				labels: {
					style: {
		                    fontSize: '12px',
		                    fontWeight: 'bold'
		                }
				},
				min: -500,
				max:500
			},
			plotOptions: {
				series: {
					stacking: 'normal'
				}
			},
			tooltip: {
				formatter: function () {
					return '<b>' + this.series.name +'</b><br/>' +
						'数量: ' + Highcharts.numberFormat(Math.abs(this.point.y), 0);
				}
			},
			series: [{
				name: '行业分布',
				data: [-14,-35,-103,-289,-460,-376,-107,-87,-43],
				pointPadding: -0.3,
				color:'#f15c80'
			}, {
				name: '规模分布',
				data: [7,20,75,330,479,273,145,42,18],
				pointPadding: -0.3,
				color:'#e4d354'
			}]
		});
    </script>

	<!-- 企业招聘信息气泡图 circle -->
	<script>
        Highcharts.chart('circle', {
	    chart: {
	        type: 'packedbubble',
	        height: '100%'
	    },
	    title: {
	        text: '本周企业招聘信息发布量',
			style: {
				fontFamily: 'Arial',
	                fontSize: 18,
	                fontStyle: 'normal',
	                fontWeight: 'bold',
				},
	    },
		legend : {
	    itemStyle : {
	        'fontSize' : '12px'
	    }
	},
	    tooltip: {
	        useHTML: true,
	        pointFormat: '<b>{point.name}:</b> {point.y}'
	    },
	    plotOptions: {
	        packedbubble: {
	            minSize: '30%',
	            maxSize: '120%',
	            zMin: 0,
	            zMax: 1000,
	            layoutAlgorithm: {
	                gravitationalConstant: 0.05,
	                splitSeries: true,
	                seriesInteraction: false,
	                dragBetweenSeries: true,
	                parentNodeLimit: true
	            },
	            dataLabels: {
	                enabled: true,
	                format: '{point.name}',
	                filter: {
	                    property: 'y',
	                    operator: '>',
	                    value: 250
	                },
	                style: {
	                    color: '#3a3a4f',
	                    textOutline: 'none',
	                    fontWeight: 'bold',
						fontSize:12
	                }
	            }
	        }
	    },
	    series: [{
	        name: '华北',
	        data: [{
	            name: '万物云',
	            value: 767.1
	        }, {
	            name: '尚德机构',
	            value: 20.7
	        },
	        {
	            name: "小叶子音乐教育",
	            value: 97.2
	        },
	        {
	            name: "百智威扬",
	            value: 111.7
	        },
	        {
	            name: "开课吧",
	            value: 158.1
	        },
	        {
	            name: "宇琪同程科技",
	            value: 241.6
	        },
	        {
	            name: "北京丽兹行",
	            value: 249.1
	        },
	        {
	            name: "作业帮",
	            value: 298.1
	        },
	        {
	            name: "今日头条",
	            value: 323.7
	        },
	        {
	            name: "凯通科技",
	            value: 78.3
	        },
	        {
	            name: "众合光浴",
	            value: 415.4
	        },
	        {
	            name: "凯通科技",
	            value: 78.3
	        },
	        {
	            name: "众合光浴",
	            value: 115.4
	        },
	        {
	            name: "凯通科技",
	            value: 78.3
	        },
	        {
	            name: "众合光浴",
	            value: 65.4
	        }]
	    }, {
	        name: '西南',
	        data: [{
	            name: "乐尚装饰",
	            value: 8.2
	        },
	        {
	            name: "尚顶家具",
	            value: 9.2
	        },
	        {
	            name: "唐卡唐艺",
	            value: 13.1
	        },
	        {
	            name: "鸿馆整装",
	            value: 14.1
	        },
	        {
	            name: "恩次方",
	            value: 14.1
	        },
	        {
	            name: "家福多",
	            value: 17.3
	        },
	        {
	            name: "掌门教育",
	            value: 24.3
	        },
	        {
	            name: "唐卡装饰",
	            value: 25
	        },
	        {
	            name: "金云财",
	            value: 400.6
	        },
	        {
	            name: "笔名教育",
	            value: 7.3
	        },
	        {
	            name: "笔名教育",
	            value: 7.3
	        },{
	            name: "笔名教育",
	            value: 7.3
	        },{
	            name: "笔名教育",
	            value: 7.3
	        },{
	            name: "笔名教育",
	            value: 7.3
	        },
	        {
	            name: "独生美",
	            value: 60.7
	        }]
	    }, {
	        name: '西北',
	        data: [{
	            name: "笔名教育",
	            value: 7.3
	        },{
	            name: "笔名教育",
	            value: 7.3
	        },
	        {
	            name: "独生美",
	            value: 60.7
	        },
	        {
	            name: "鸿馆整装",
	            value: 224.1
	        },
	        {
	            name: "恩次方",
	            value: 14.1
	        }]
	    }, {
	        name: '华中',
	        data: [{
	            name: "艾尔眼科",
	            value: 7.6
	        },
	        {
	            name: "速创派",
	            value: 308
	        },
	        {
	            name: "十荟团",
	            value: 102.3
	        },
	        {
	            name: "卓鹏",
	            value: 30.2
	        },
	        {
	            name: "西瓜传媒",
	            value: 320
	        },
	        {
	            name: "小猿搜题",
	            value: 23.4
	        },
	        {
	            name: "卓鹏",
	            value: 30.2
	        },
	        {
	            name: "卓鹏",
	            value: 5334.5
	        }, {
	            name: "聚恒集团",
	            value: 566
	        }, {
	            name: "极度信息",
	            value: 456.3
	        }]
	    }, {
	        name: '华南',
	        data: [{
	            name: "艾尔眼科",
	            value: 7.6
	        },
	        {
	            name: "卓鹏",
	            value: 30.2
	        },
	        {
	            name: "小猿搜题",
	            value: 323.4
	        },
	        {
	            name: "恩次方",
	            value: 14.1
	        },
	        {
	            name: "恩次方",
	            value: 43
	        },
	        {
	            name: "恩次方",
	            value: 78.6
	        },
	        {
	            name: "恩次方",
	            value: 52
	        },
	        {
	            name: "恩次方",
	            value: 74.1
	        },
	        {
	            name: "恩次方",
	            value: 501.1
	        }, {
	            name: "恩次方",
	            value: 199
	        }]
	    }, {
	        name: '华东',
	        data: [{
	            name: "多麦",
	            value: 506.5
	        },
	        {
	            name: "亦优贸易",
	            value: 606.5
	        },
	        {
	            name: "跟谁学",
	            value: 407.4
	        },
	        {
	            name: "美术宝",
	            value: 267.4
	        },
	        {
	            name: "翼牛科技",
	            value: 767.9
	        },
	        {
	            name: "企鹊桥",
	            value: 9.1
	        },
	        {
				name: "企鹊桥",
	            value: 14.7
	        },
	        {
	            name: "企鹊桥",
	            value: 16.6
	        },
	        {
	            name: "企鹊桥",
	            value: 20.5
	        },
	        {
	            name: "企鹊桥",
	            value: 22.6
	        },
	        {
	            name: "企鹊桥",
	            value: 22.3
	        },
	        {
	            name: "企鹊桥",
	            value: 21.1
	        },
	        {
	            name: "企鹊桥",
	            value: 31.7
	        },
	        {
	            name: "企鹊桥",
	            value: 47.8
	        },
	        {
				name: "企鹊桥",
	            value: 49.9
	        },
	        {
	            name: "Syria",
	            value: 52.7
	        },
	        {
	            name: "DPR Korea",
	            value: 59.9
	        },
	        {
	            name: "Israel",
	            value: 64.8
	        },
	        {
	            name: "Turkmenistan",
	            value: 70.6
	        },
	        {
	            name: "Oman",
	            value: 74.3
	        },
	        {
	            name: "Qatar",
	            value: 88.8
	        },
	        {
	            name: "Philippines",
	            value: 96.9
	        },
	        {
	            name: "Kuwait",
	            value: 98.6
	        },
	        {
	            name: "Uzbekistan",
	            value: 122.6
	        },
	        {
	            name: "Iraq",
	            value: 139.9
	        },
	        {
	            name: "Pakistan",
	            value: 158.1
	        },
	        {
	            name: "Vietnam",
	            value: 190.2
	        },
	        {
	            name: "United Arab Emirates",
	            value: 101.1
	        },
	        {
	            name: "Malaysia",
	            value: 27.5
	        },
	        {
	            name: "Kazakhstan",
	            value: 36.2
	        },
	        {
	            name: "Thailand",
	            value: 172
	        },
	        
	        {
	            name: "Indonesia",
	            value: 153
	        },
	        {
	            name: "Saudi Arabia",
	            value: 194.8
	        },
	        {
	            name: "企鹊桥",
	            value: 1278.9
	        },
	        {
	            name: "China",
	            value: 40.8
	        },
	        {
	            name: "India",
	            value: 41.9
	        },
	        {
	            name: "Russia",
	            value: 66.4
	        },
	        {
	            name: "Iran",
	            value: 18.2
	        },
	        {
	            name: "Korea",
	            value: 10.1
	        }]
	    }]
	});

	</script>

	<!-- 企业分布 地图 -->
	<script>
		var chartDom = document.getElementById('map1');
		var myChart = echarts.init(chartDom);
		var option;
		
		var data = [
		    {name: '海门', value: 9},
		    {name: '鄂尔多斯', value: 12},
		    {name: '招远', value: 12},
		    {name: '舟山', value: 12},
		    {name: '齐齐哈尔', value: 14},
		    {name: '盐城', value: 15},
		    {name: '赤峰', value: 16},
		    {name: '青岛', value: 18},
		    {name: '乳山', value: 18},
		    {name: '金昌', value: 19},
		    {name: '泉州', value: 21},
		    {name: '莱西', value: 21},
		    {name: '日照', value: 21},
		    {name: '胶南', value: 22},
		    {name: '南通', value: 23},
		    {name: '拉萨', value: 24},
		    {name: '云浮', value: 24},
		    {name: '梅州', value: 25},
		    {name: '文登', value: 25},
		    {name: '上海', value: 25},
		    {name: '攀枝花', value: 25},
		    {name: '威海', value: 125},
		    {name: '承德', value: 25},
		    {name: '厦门', value: 126},
		    {name: '汕尾', value: 26},
		    {name: '潮州', value: 26},
		    {name: '丹东', value: 27},
		    {name: '太仓', value: 27},
		    {name: '曲靖', value: 27},
		    {name: '烟台', value: 28},
		    {name: '福州', value: 129},
		    {name: '瓦房店', value: 30},
		    {name: '即墨', value: 30},
		    {name: '抚顺', value: 31},
		    {name: '玉溪', value: 31},
		    {name: '张家口', value: 31},
		    {name: '阳泉', value: 31},
		    {name: '莱州', value: 32},
		    {name: '湖州', value: 52},
		    {name: '汕头', value: 32},
		    {name: '昆山', value: 33},
		    {name: '宁波', value: 33},
		    {name: '湛江', value: 33},
		    {name: '揭阳', value: 34},
		    {name: '荣成', value: 34},
		    {name: '连云港', value: 35},
		    {name: '葫芦岛', value: 35},
		    {name: '常熟', value: 36},
		    {name: '东莞', value: 36},
		    {name: '河源', value: 36},
		    {name: '淮安', value: 36},
		    {name: '泰州', value: 36},
		    {name: '南宁', value: 37},
		    {name: '营口', value: 37},
		    {name: '惠州', value: 37},
		    {name: '江阴', value: 37},
		    {name: '蓬莱', value: 37},
		    {name: '韶关', value: 38},
		    {name: '嘉峪关', value: 38},
		    {name: '广州', value: 38},
		    {name: '延安', value: 38},
		    {name: '太原', value: 39},
		    {name: '清远', value: 39},
		    {name: '中山', value: 39},
		    {name: '昆明', value: 39},
		    {name: '寿光', value: 40},
		    {name: '盘锦', value: 40},
		    {name: '长治', value: 41},
		    {name: '深圳', value: 41},
		    {name: '珠海', value: 142},
		    {name: '宿迁', value: 43},
		    {name: '咸阳', value: 43},
		    {name: '铜川', value: 44},
		    {name: '平度', value: 44},
		    {name: '佛山', value: 44},
		    {name: '海口', value: 44},
		    {name: '江门', value: 45},
		    {name: '章丘', value: 45},
		    {name: '肇庆', value: 46},
		    {name: '大连', value: 47},
		    {name: '临汾', value: 47},
		    {name: '吴江', value: 47},
		    {name: '石嘴山', value: 49},
		    {name: '沈阳', value: 50},
		    {name: '苏州', value: 70},
		    {name: '茂名', value: 50},
		    {name: '嘉兴', value: 151},
		    {name: '长春', value: 51},
		    {name: '胶州', value: 52},
		    {name: '银川', value: 52},
		    {name: '张家港', value: 52},
		    {name: '三门峡', value: 53},
		    {name: '锦州', value: 54},
		    {name: '南昌', value: 54},
		    {name: '柳州', value: 54},
		    {name: '三亚', value: 54},
		    {name: '自贡', value: 56},
		    {name: '吉林', value: 56},
		    {name: '阳江', value: 57},
		    {name: '泸州', value: 57},
		    {name: '西宁', value: 57},
		    {name: '宜宾', value: 58},
		    {name: '呼和浩特', value: 58},
		    {name: '成都', value: 58},
		    {name: '大同', value: 58},
		    {name: '镇江', value: 59},
		    {name: '桂林', value: 59},
		    {name: '张家界', value: 59},
		    {name: '宜兴', value: 59},
		    {name: '北海', value: 60},
		    {name: '西安', value: 61},
		    {name: '金坛', value: 62},
		    {name: '东营', value: 62},
		    {name: '牡丹江', value: 63},
		    {name: '遵义', value: 63},
		    {name: '绍兴', value: 63},
		    {name: '扬州', value: 64},
		    {name: '常州', value: 64},
		    {name: '潍坊', value: 65},
		    {name: '重庆', value: 66},
		    {name: '台州', value: 67},
		    {name: '南京', value: 67},
		    {name: '滨州', value: 70},
		    {name: '贵阳', value: 71},
		    {name: '无锡', value: 71},
		    {name: '本溪', value: 71},
		    {name: '克拉玛依', value: 72},
		    {name: '渭南', value: 72},
		    {name: '马鞍山', value: 72},
		    {name: '宝鸡', value: 72},
		    {name: '焦作', value: 75},
		    {name: '句容', value: 75},
		    {name: '北京', value: 179},
		    {name: '徐州', value: 79},
		    {name: '衡水', value: 80},
		    {name: '包头', value: 80},
		    {name: '绵阳', value: 80},
		    {name: '乌鲁木齐', value: 84},
		    {name: '枣庄', value: 84},
		    {name: '杭州', value: 254},
		    {name: '淄博', value: 85},
		    {name: '鞍山', value: 86},
		    {name: '溧阳', value: 86},
		    {name: '库尔勒', value: 86},
		    {name: '安阳', value: 90},
		    {name: '开封', value: 90},
		    {name: '济南', value: 92},
		    {name: '德阳', value: 93},
		    {name: '温州', value: 195},
		    {name: '九江', value: 96},
		    {name: '邯郸', value: 98},
		    {name: '临安', value: 99},
		    {name: '兰州', value: 99},
		    {name: '沧州', value: 100},
		    {name: '临沂', value: 103},
		    {name: '南充', value: 104},
		    {name: '天津', value: 105},
		    {name: '富阳', value: 106},
		    {name: '泰安', value: 112},
		    {name: '诸暨', value: 112},
		    {name: '郑州', value: 113},
		    {name: '哈尔滨', value: 114},
		    {name: '聊城', value: 116},
		    {name: '芜湖', value: 117},
		    {name: '唐山', value: 119},
		    {name: '平顶山', value: 119},
		    {name: '邢台', value: 119},
		    {name: '德州', value: 120},
		    {name: '济宁', value: 120},
		    {name: '荆州', value: 127},
		    {name: '宜昌', value: 130},
		    {name: '义乌', value: 132},
		    {name: '丽水', value: 133},
		    {name: '洛阳', value: 134},
		    {name: '秦皇岛', value: 136},
		    {name: '株洲', value: 143},
		    {name: '石家庄', value: 147},
		    {name: '莱芜', value: 148},
		    {name: '常德', value: 152},
		    {name: '保定', value: 153},
		    {name: '湘潭', value: 154},
		    {name: '金华', value: 157},
		    {name: '岳阳', value: 169},
		    {name: '长沙', value: 175},
		    {name: '衢州', value: 177},
		    {name: '廊坊', value: 193},
		    {name: '菏泽', value: 194},
		    {name: '合肥', value: 229},
		    {name: '武汉', value: 213},
		    {name: '大庆', value: 179}
		];
		
		var geoCoordMap = {
		    '海门':[121.15,31.89],
		    '鄂尔多斯':[109.781327,39.608266],
		    '招远':[120.38,37.35],
		    '舟山':[122.207216,29.985295],
		    '齐齐哈尔':[123.97,47.33],
		    '盐城':[120.13,33.38],
		    '赤峰':[118.87,42.28],
		    '青岛':[120.33,36.07],
		    '乳山':[121.52,36.89],
		    '金昌':[102.188043,38.520089],
		    '泉州':[118.58,24.93],
		    '莱西':[120.53,36.86],
		    '日照':[119.46,35.42],
		    '胶南':[119.97,35.88],
		    '南通':[121.05,32.08],
		    '拉萨':[91.11,29.97],
		    '云浮':[112.02,22.93],
		    '梅州':[116.1,24.55],
		    '文登':[122.05,37.2],
		    '上海':[121.48,31.22],
		    '攀枝花':[101.718637,26.582347],
		    '威海':[122.1,37.5],
		    '承德':[117.93,40.97],
		    '厦门':[118.1,24.46],
		    '汕尾':[115.375279,22.786211],
		    '潮州':[116.63,23.68],
		    '丹东':[124.37,40.13],
		    '太仓':[121.1,31.45],
		    '曲靖':[103.79,25.51],
		    '烟台':[121.39,37.52],
		    '福州':[119.3,26.08],
		    '瓦房店':[121.979603,39.627114],
		    '即墨':[120.45,36.38],
		    '抚顺':[123.97,41.97],
		    '玉溪':[102.52,24.35],
		    '张家口':[114.87,40.82],
		    '阳泉':[113.57,37.85],
		    '莱州':[119.942327,37.177017],
		    '湖州':[120.1,30.86],
		    '汕头':[116.69,23.39],
		    '昆山':[120.95,31.39],
		    '宁波':[121.56,29.86],
		    '湛江':[110.359377,21.270708],
		    '揭阳':[116.35,23.55],
		    '荣成':[122.41,37.16],
		    '连云港':[119.16,34.59],
		    '葫芦岛':[120.836932,40.711052],
		    '常熟':[120.74,31.64],
		    '东莞':[113.75,23.04],
		    '河源':[114.68,23.73],
		    '淮安':[119.15,33.5],
		    '泰州':[119.9,32.49],
		    '南宁':[108.33,22.84],
		    '营口':[122.18,40.65],
		    '惠州':[114.4,23.09],
		    '江阴':[120.26,31.91],
		    '蓬莱':[120.75,37.8],
		    '韶关':[113.62,24.84],
		    '嘉峪关':[98.289152,39.77313],
		    '广州':[113.23,23.16],
		    '延安':[109.47,36.6],
		    '太原':[112.53,37.87],
		    '清远':[113.01,23.7],
		    '中山':[113.38,22.52],
		    '昆明':[102.73,25.04],
		    '寿光':[118.73,36.86],
		    '盘锦':[122.070714,41.119997],
		    '长治':[113.08,36.18],
		    '深圳':[114.07,22.62],
		    '珠海':[113.52,22.3],
		    '宿迁':[118.3,33.96],
		    '咸阳':[108.72,34.36],
		    '铜川':[109.11,35.09],
		    '平度':[119.97,36.77],
		    '佛山':[113.11,23.05],
		    '海口':[110.35,20.02],
		    '江门':[113.06,22.61],
		    '章丘':[117.53,36.72],
		    '肇庆':[112.44,23.05],
		    '大连':[121.62,38.92],
		    '临汾':[111.5,36.08],
		    '吴江':[120.63,31.16],
		    '石嘴山':[106.39,39.04],
		    '沈阳':[123.38,41.8],
		    '苏州':[120.62,31.32],
		    '茂名':[110.88,21.68],
		    '嘉兴':[120.76,30.77],
		    '长春':[125.35,43.88],
		    '胶州':[120.03336,36.264622],
		    '银川':[106.27,38.47],
		    '张家港':[120.555821,31.875428],
		    '三门峡':[111.19,34.76],
		    '锦州':[121.15,41.13],
		    '南昌':[115.89,28.68],
		    '柳州':[109.4,24.33],
		    '三亚':[109.511909,18.252847],
		    '自贡':[104.778442,29.33903],
		    '吉林':[126.57,43.87],
		    '阳江':[111.95,21.85],
		    '泸州':[105.39,28.91],
		    '西宁':[101.74,36.56],
		    '宜宾':[104.56,29.77],
		    '呼和浩特':[111.65,40.82],
		    '成都':[104.06,30.67],
		    '大同':[113.3,40.12],
		    '镇江':[119.44,32.2],
		    '桂林':[110.28,25.29],
		    '张家界':[110.479191,29.117096],
		    '宜兴':[119.82,31.36],
		    '北海':[109.12,21.49],
		    '西安':[108.95,34.27],
		    '金坛':[119.56,31.74],
		    '东营':[118.49,37.46],
		    '牡丹江':[129.58,44.6],
		    '遵义':[106.9,27.7],
		    '绍兴':[120.58,30.01],
		    '扬州':[119.42,32.39],
		    '常州':[119.95,31.79],
		    '潍坊':[119.1,36.62],
		    '重庆':[106.54,29.59],
		    '台州':[121.420757,28.656386],
		    '南京':[118.78,32.04],
		    '滨州':[118.03,37.36],
		    '贵阳':[106.71,26.57],
		    '无锡':[120.29,31.59],
		    '本溪':[123.73,41.3],
		    '克拉玛依':[84.77,45.59],
		    '渭南':[109.5,34.52],
		    '马鞍山':[118.48,31.56],
		    '宝鸡':[107.15,34.38],
		    '焦作':[113.21,35.24],
		    '句容':[119.16,31.95],
		    '北京':[116.46,39.92],
		    '徐州':[117.2,34.26],
		    '衡水':[115.72,37.72],
		    '包头':[110,40.58],
		    '绵阳':[104.73,31.48],
		    '乌鲁木齐':[87.68,43.77],
		    '枣庄':[117.57,34.86],
		    '杭州':[120.19,30.26],
		    '淄博':[118.05,36.78],
		    '鞍山':[122.85,41.12],
		    '溧阳':[119.48,31.43],
		    '库尔勒':[86.06,41.68],
		    '安阳':[114.35,36.1],
		    '开封':[114.35,34.79],
		    '济南':[117,36.65],
		    '德阳':[104.37,31.13],
		    '温州':[120.65,28.01],
		    '九江':[115.97,29.71],
		    '邯郸':[114.47,36.6],
		    '临安':[119.72,30.23],
		    '兰州':[103.73,36.03],
		    '沧州':[116.83,38.33],
		    '临沂':[118.35,35.05],
		    '南充':[106.110698,30.837793],
		    '天津':[117.2,39.13],
		    '富阳':[119.95,30.07],
		    '泰安':[117.13,36.18],
		    '诸暨':[120.23,29.71],
		    '郑州':[113.65,34.76],
		    '哈尔滨':[126.63,45.75],
		    '聊城':[115.97,36.45],
		    '芜湖':[118.38,31.33],
		    '唐山':[118.02,39.63],
		    '平顶山':[113.29,33.75],
		    '邢台':[114.48,37.05],
		    '德州':[116.29,37.45],
		    '济宁':[116.59,35.38],
		    '荆州':[112.239741,30.335165],
		    '宜昌':[111.3,30.7],
		    '义乌':[120.06,29.32],
		    '丽水':[119.92,28.45],
		    '洛阳':[112.44,34.7],
		    '秦皇岛':[119.57,39.95],
		    '株洲':[113.16,27.83],
		    '石家庄':[114.48,38.03],
		    '莱芜':[117.67,36.19],
		    '常德':[111.69,29.05],
		    '保定':[115.48,38.85],
		    '湘潭':[112.91,27.87],
		    '金华':[119.64,29.12],
		    '岳阳':[113.09,29.37],
		    '长沙':[113,28.21],
		    '衢州':[118.88,28.97],
		    '廊坊':[116.7,39.53],
		    '菏泽':[115.480656,35.23375],
		    '合肥':[117.27,31.86],
		    '武汉':[114.31,30.52],
		    '大庆':[125.03,46.58]
		};
		
		var convertData = function (data) {
		    var res = [];
		    for (var i = 0; i < data.length; i++) {
		        var geoCoord = geoCoordMap[data[i].name];
		        if (geoCoord) {
		            res.push({
		                name: data[i].name,
		                value: geoCoord.concat(data[i].value)
		            });
		        }
		    }
		    return res;
		};
		
		function renderItem(params, api) {
		    var coords = [
		    // [157.46,53.92],
		    // [155.31,44.52],
		    // [161.19,44.26],
		    // [161.65,42.01],
		    ];
		    var points = [];
		    for (var i = 0; i < coords.length; i++) {
		        points.push(api.coord(coords[i]));
		    }
		    var color = api.visual('color');
		
		    return {
		        type: 'polygon',
		        shape: {
		            points: echarts.graphic.clipPointsByRect(points, {
		                x: params.coordSys.x,
		                y: params.coordSys.y,
		                width: params.coordSys.width,
		                height: params.coordSys.height
		            })
		        },
		        style: api.style({
		            fill: color,
		            stroke: echarts.color.lift(color)
		        })
		    };
		}
		
		option = {
		    backgroundColor: 'transparent',
		    title: {
		    	show:false,
		        text: '平台企业地域分布',
		        //subtext: 'data from PM25.in',
		        //sublink: 'http://www.pm25.in',
		        top:18,
		        left: 'center',
		        textStyle: {
		            color: '#fff',
		            fontSize:30
		        }
		    },
		    tooltip : {
		        trigger: 'item'
		    },
		    bmap: {
		        center: [107.114129, 35.550339],
		        zoom: 3,
		        roam: true,
		        mapStyle: {
		            styleJson: [
		                    {
		                        "featureType": "water",
		                        "elementType": "all",
		                        "stylers": {
		                            "color": "#044161"
		                        }
		                    },
		                    {
		                        "featureType": "land",
		                        "elementType": "all",
		                        "stylers": {
		                            "color": "#004981"
		                        }
		                    },
		                    {
		                        "featureType": "boundary",
		                        "elementType": "geometry",
		                        "stylers": {
		                            "color": "#064f85"
		                        }
		                    },
		                    {
		                        "featureType": "railway",
		                        "elementType": "all",
		                        "stylers": {
		                            "visibility": "off"
		                        }
		                    },
		                    {
		                        "featureType": "highway",
		                        "elementType": "geometry",
		                        "stylers": {
		                            "color": "#004981"
		                        }
		                    },
		                    {
		                        "featureType": "highway",
		                        "elementType": "geometry.fill",
		                        "stylers": {
		                            "color": "#005b96",
		                            "lightness": 1
		                        }
		                    },
		                    {
		                        "featureType": "highway",
		                        "elementType": "labels",
		                        "stylers": {
		                            "visibility": "off"
		                        }
		                    },
		                    {
		                        "featureType": "arterial",
		                        "elementType": "geometry",
		                        "stylers": {
		                            "color": "#004981"
		                        }
		                    },
		                    {
		                        "featureType": "arterial",
		                        "elementType": "geometry.fill",
		                        "stylers": {
		                            "color": "#00508b"
		                        }
		                    },
		                    {
		                        "featureType": "poi",
		                        "elementType": "all",
		                        "stylers": {
		                            "visibility": "off"
		                        }
		                    },
		                    {
		                        "featureType": "green",
		                        "elementType": "all",
		                        "stylers": {
		                            "color": "#056197",
		                            "visibility": "off"
		                        }
		                    },
		                    {
		                        "featureType": "subway",
		                        "elementType": "all",
		                        "stylers": {
		                            "visibility": "off"
		                        }
		                    },
		                    {
		                        "featureType": "manmade",
		                        "elementType": "all",
		                        "stylers": {
		                            "visibility": "off"
		                        }
		                    },
		                    {
		                        "featureType": "local",
		                        "elementType": "all",
		                        "stylers": {
		                            "visibility": "off"
		                        }
		                    },
		                    {
		                        "featureType": "arterial",
		                        "elementType": "labels",
		                        "stylers": {
		                            "visibility": "off"
		                        }
		                    },
		                    {
		                        "featureType": "boundary",
		                        "elementType": "geometry.fill",
		                        "stylers": {
		                            "color": "#029fd4"
		                        }
		                    },
		                    {
		                        "featureType": "building",
		                        "elementType": "all",
		                        "stylers": {
		                            "color": "#1a5787"
		                        }
		                    },
		                    {
		                        "featureType": "label",
		                        "elementType": "all",
		                        "stylers": {
		                            "visibility": "off"
		                        }
		                    }
		            ]
		        }
		    },
		    series : [
		        {
		            name: 'pm2.5',
		            type: 'scatter',
		            coordinateSystem: 'bmap',
		            data: convertData(data),
		            encode: {
		                value: 2
		            },
		            symbolSize: function (val) {
		                return val[2] / 10;
		            },
		            label: {
		                formatter: '{b}',
		                position: 'right'
		            },
		            itemStyle: {
		                color: '#ddb926'
		            },
		            emphasis: {
		                label: {
		                    show: true
		                }
		            }
		        },
		        {
		            name: 'Top 5',
		            type: 'effectScatter',
		            coordinateSystem: 'bmap',
		            data: convertData(data.sort(function (a, b) {
		                return b.value - a.value;
		            }).slice(0, 6)),
		            encode: {
		                value: 2
		            },
		            symbolSize: function (val) {
		                return val[2] / 10;
		            },
		            showEffectOn: 'emphasis',
		            rippleEffect: {
		                brushType: 'stroke'
		            },
		            hoverAnimation: true,
		            label: {
		                formatter: '{b}',
		                position: 'right',
		                show: true
		            },
		            itemStyle: {
		                color: '#f4e925',
		                shadowBlur: 10,
		                shadowColor: '#333'
		            },
		            zlevel: 1
		        },
		        {
		            type: 'custom',
		            coordinateSystem: 'bmap',
		            renderItem: renderItem,
		            itemStyle: {
		                opacity: 0.5
		            },
		            animation: false,
		            silent: true,
		            data: [0],
		            z: -10
		        }
		    ]
		};
		
		option && myChart.setOption(option);

	</script>

	<!-- 用户平台上线linebar -->
	<script type="text/javascript">
		var dom = document.getElementById("linebar");
		var myChart = echarts.init(dom);
		var app = {};
		
		option = {
		    title:{
		        show:false,
		        text:"本周平台用户上线情况",
		        x:'center',
		        y:'top',
		        padding:10,
		        textStyle: {//主标题文本样式{"fontSize": 18,"fontWeight": "bolder","color": "#333"}
		                fontFamily: 'Arial',
		                fontSize: 18,
		                fontStyle: 'normal',
		                fontWeight: 'bold',
		            },
		    },
		    tooltip: {
		        trigger: 'axis',
		        axisPointer: {
		            type: 'cross',
		            crossStyle: {
		                color: '#999'
		            }
		        }
		    },
		    toolbox: {
		        feature: {
		            dataView: {show: true, readOnly: false},
		            magicType: {show: true, type: ['line', 'bar']},
		            restore: {show: true},
		            saveAsImage: {show: true}
		        }
		    },
		    legend: {
		        data: ['上线', '未上线', '差值'],
		        orient: 'vertical', // 'vertical'
		        x:550, // 'center' | 'left' | {number},
		        y:60, // 'center' | 'bottom' | {number}
		        textStyle : {
		　　　　　　　　fontWeight : 'normal',
		　　　　　　　　fontSize : 12,
		　　　　　　},
		        borderColor: 'rgba(89, 100, 114,0.8)',
		        borderWidth: 2,
		    },
		    xAxis: [
		        {
		            type: 'category',
		            data: ['周一', '周二', '周三', '周四', '周五', '周六', '周日'],
		            axisPointer: {
		                type: 'shadow'
		            },axisLabel: {
		                formatter: '{value} ',
		                textStyle: {
		          fontSize : 12     //更改坐标轴文字大小
		        }
		            }
		        }
		    ],
		    yAxis: [
		        {
		            type: 'value',
		            name: '人次',
		            min: 0,
		            max: 5000,
		            interval: 500,
		            axisLabel: {
		                formatter: '{value} ',
		                textStyle: {
		          fontSize : 12     //更改坐标轴文字大小
		        }
		            }
		        }
		    ],
		    series: [
		        {
		            name: '上线',
		            type: 'bar',
		            color:'#fac958',
		            data: [2320,3470,4370,3680,3790,3835,3760]
		        },
		        {
		            name: '未上线',
		            type: 'bar',
		            color:'#91cd76',
		            data: [1720,1570,1670,1880,1790,1865,1940]
		        },
		        {
		            name: '差值',
		            type: 'line',
		            color:'#ef6667',
		
		            data: [500,1900,2700,1800,2000,1970,1820]
		        }
		    ]
		};
		myChart.setOption(option);
       </script>

	<!-- 本月新增用户 lines -->
	<script>
			Highcharts.chart('lines', {
			chart: {
				type: 'area',
				options3d: {
					enabled: true,
					alpha: 15,
					beta:20,
					depth: 200
				}
			},
			title: {
				text: "本月新增用户",
				style: {
					fontFamily: 'Arial',
		                fontSize: 18,
		                fontStyle: 'normal',
		                fontWeight: 'bold',
					},
			},
			yAxis: {
				title: {
					text: '人数',
					x: -40,
					style: {
					fontFamily: 'Arial',
		                fontSize: 12,
		                fontStyle: 'normal',
		                fontWeight: 'bold',
					},
				},
				labels: {
					format: '{value:,.0f}',
					style: {
		                    fontSize: '12px',
		                    fontWeight: 'bold'
		                }
				},
				gridLineDashStyle: 'Dash'
			},
			xAxis: [{
				visible: true,
				style: {
		                    fontSize: '12px',
		                    fontWeight: 'bold'
		                }
			}, {
				visible: false
			}, {
				visible: false
			}, {
				visible: false
			}, {
				visible: false
			}],
			plotOptions: {
				area: {
					depth: 100,
					marker: {
						enabled: false
					},
					states: {
						inactive: {
							enabled: false
						}
					}
				}
			},
			tooltip: {
				valueSuffix: ' MAMSL'
			},
			legend : {
		    itemStyle : {
		        'fontSize' : '12px'
		    }
		},
			series: [{
				name: "新增用户",
				lineColor: 'rgb(43, 144, 143)',
				color: 'rgb(43, 144, 143)',
				fillColor: 'rgb(119, 206, 199)',
				data: [
					['1', 80],
					['2', 59],
					['3', 52],
					['4', 32],
					['5', 31],
					['6', 68],
					['7', 100],
					['8', 84],
					['9', 168],
					['10', 159],
					['11', 146],
					['12', 135],
					['13', 67],
					['14', 72],
					['15', 40],
					['16', 72],
					['17', 52],
					['18', 70],
					['19',48],
					['20', 55],
					['21',88],
					['22', 85],
					['23', 70],
					['24', 78],
					['25', 70],
					['26', 62],
					['27', 67],
					['28', 60],
					['29', 63],
					['30', 66],
					['31', 61],
				]
			}]
		});
	</script>

	<!-- 词云图 -->
	<script>
		var text2=" 稳定就业 稳定就业 稳定就业 创业 稳定 职业规划 跨境电商 创业 稳定 职业规划 跨境电商 创业 稳定 职业规划 跨境电商 创业 稳定 职业规划 跨境电商 创业 稳定 职业规划 跨境电商 创业 稳定 职业规划 跨境电商 创业 稳定 创业 稳定 创业 稳定创业 稳定  跨境电商 创业 稳定 职业规划 跨境电商 创业 稳定 职业规划 跨境电商 策划 趋势 压力 专业 加班 经验 策划 趋势 压力 专业 加班 经验 策划 趋势 压力 专业 加班 经验 策划 趋势 压力 专业 加班 经验 策划 趋势 压力 专业 加班 经验 策划 经验 策划 经验 策划 趋势 压力 专业 加班 专业 加班 专业 加班 专业 加班 专业 加班 经验 学生 学生 学生 学生 学生 学生 学生 学生 学生 学生 学生 学生 学生  大专  大专  大专 大专 大专 大专 大专  大专 高薪 高薪 高薪 高薪 高薪 高薪 应届生 应届生 应届生 应届生 应届生 应届生 应届生 应届生 应届生 应届生 试用期  试用期 试用期 试用期 试用期 试用期 薪水 薪水 薪水 薪水 薪水 薪水 薪水 薪水 薪水 薪水 薪水 薪水 薪水 薪水 薪水 薪水 薪水 薪水 薪水 薪水 薪水 薪水 薪水  面试  面试  面试  面试  面试  面试  面试  面试  面试  面试  面试  面试  面试  面试  面试  面试  面试  面试  面试  面试  面试  面试  面试  面试 转行 转行 转行 转行 转行 转行 转行 转行  新媒体  新媒体  新媒体  新媒体  新媒体  新媒体  新媒体  新媒体  新媒体  创新 创新 创新 创新 创新 创新 创新 创新 创新 创新"
		var data = text2.split(/[,\. ]+/g)
		.reduce(function (arr, word) {
			var obj = arr.find(function (obj) {
				return obj.name === word;
			});
			if (obj) {
				obj.weight += 1;
			} else {
				obj = {
					name: word,
					weight: 1
				};
				arr.push(obj);
			}
			return arr;
		}, []);
		Highcharts.chart('wordcould', {
			series: [{
				type: 'wordcloud',
				data: data
			}],
			title: {
				text: '今日提问关键词TOP20',
				style: {
					fontFamily: 'Arial',
		                fontSize: 18,
		                fontStyle: 'normal',
		                fontWeight: 'bold',
					},
		
			}
		});

	</script>

	<!-- 昨日职业搜索指数 halfcircle1 -->
	<script>
		Highcharts.chart('halfcircle1', {
			colors: ['#FFD700', '#C0C0C0', '#CD7F32'],
			chart: {
				type: 'column',
				inverted: true,
				polar: true
			},
			title: {
				text: '昨日职业搜索指数(TOP 10)',
		        style: {
					fontFamily: 'Arial',
		                fontSize: 18,
		                fontStyle: 'normal',
		                fontWeight: 'bold',
					},
			},
			tooltip: {
				outside: true
			},
			pane: {
				size: '85%',
				endAngle: 270
			},
			legend:{
				enabled: false,
			},
			xAxis: {
				tickInterval: 1,
				labels: {
					align: 'right',
					useHTML: true,
					allowOverlap: true,
					step: 1,
					y: 4,
					style: {
						fontSize: '12px',
		                fontWeight:'bold'
					}
				},
				lineWidth: 0,
				categories: [
					'实习',
					'后勤',
					'市场营销',
					'Java技术员',
					'产品运营',
					'网络推广',
					'算法工程师',
					'产品经理',
					'UI设计师',
					'平面设计',
				]
			},
			yAxis: {
				lineWidth: 0,
				tickInterval: 500,
				reversedStacks: false,
				endOnTick: true,
				showLastLabel: true,
		        labels: {
		
					style: {
		                    fontSize: '12px',
		                    fontWeight: 'bold'
		                }
				}
			},
			plotOptions: {
				column: {
					stacking: 'normal',
					borderWidth: 0,
					pointPadding: 0,
					groupPadding: 0.25
				}
			},
			series: [{
				name: '',
				data: [8098,7879,6834,6599,5490,4789,4089,3777,2897,1900]
			}]
		});
	</script>

	<!-- 昨日企业搜索指数halfcircle2 -->
	<script>
	  Highcharts.chart('halfcircle2', {
	   colors: ['#a3ebb9', '#C0C0C0', '#CD7F32'],
	   chart: {
	    type: 'column',
	    inverted: true,
	    polar: true
	   },
	   title: {
	    text: '昨日企业搜索指数(TOP 10)',
	          style: {
	     fontFamily: 'Arial',
	                  fontSize: 18,
	                  fontStyle: 'normal',
	                  fontWeight: 'bold',
	     },
	   },
	   tooltip: {
	    outside: true
	   },
	   pane: {
	    size: '85%',
	    endAngle: 270
	   },
	   legend:{
	    enabled: false,
	   },
	   xAxis: {
	    tickInterval: 1,
	    labels: {
	     align: 'right',
	     useHTML: true,
	     allowOverlap: true,
	     step: 1,
	     y: 4,
	     style: {
	      fontSize: '12px',
	                  fontWeight:'bold'
	     }
	    },
	    lineWidth: 0,
	    categories: [
	     '琳俊网络',
	     '广筑信息技术',
	     '亿牛科技',
	     '梅每珠宝',
	     '企鹊桥',
	     '美术宝',
	     '跟谁学',
	     '德悦',
	     '亦优贸易',
	     '嗳玖设计',
	    ]
	   },
	   yAxis: {
	    lineWidth: 0,
	    tickInterval: 100,
	    reversedStacks: false,
	    endOnTick: true,
	    showLastLabel: true,
	          labels: {
	  
	     style: {
	                      fontSize: '12px',
	                      fontWeight: 'bold'
	                  }
	    }
	   },
	   plotOptions: {
	    column: {
	     stacking: 'normal',
	     borderWidth: 0,
	     pointPadding: 0,
	     groupPadding: 0.25
	    }
	   },
	   series: [{
	    name: '',
	    data: [3098,2879,2434,2599,1490,1189,489,377,287,190]
	   }]
	  });
	</script>

	<!-- 平台用户信息总览 barpie -->
	<script type="text/javascript">
		var dom = document.getElementById("barpie");
		var myChart = echarts.init(dom);
		var app = {};
		var builderJson = {
		
		"charts": {
		  "高中及以下": 1330,
		  "博士及以上": 765,
		  "硕士": 2561,
		  "大专": 4778,
		  "本科": 9055,
		  "其他":3089
		},
		"components": {
		  "100k以上": 288,
		  "50-100k": 675,
		  "5k以下": 680,
		  "10k-50k": 3466,
		  "8k-10k": 2736,
		  "5k-8k": 6944,
		  "暂无工作":10893
		
		},
		
		};
		
		var downloadJson = {
		"男性": 4773,
		"女性": 3079,
		"空白": 210,
		
		};
		
		var themeJson = {
		"20岁以下": 1294,
		"20-30岁": 3325,
		"30-40岁": 2608,
		"40-50岁": 1321,
		"50岁以上": 1179
		};
		
		
		var canvas = document.createElement('canvas');
		var ctx = canvas.getContext('2d');
		canvas.width = canvas.height = 100;
		ctx.textAlign = 'center';
		ctx.textBaseline = 'middle';
		ctx.globalAlpha = 0.08;
		ctx.font = '14px Microsoft Yahei';
		ctx.translate(50, 50);
		ctx.rotate(-Math.PI / 4);
		
		
		option = {
		  backgroundColor: {
		      type: 'pattern',
		      image: canvas,
		      repeat: 'repeat'
		  },
		  tooltip: {},
		  title: [{
		      text: '学历分布',
		      left: '25%',
		      textAlign: 'center'
		  },{
		      text: '收入分布',
		      left: '25%',
		      top:'50%',
		      textAlign: 'center'
		  },  {
		      text: '性别分布',
		      left: '75%',
		      textAlign: 'center'
		  }, {
		      text: '年龄分布',
		      left: '75%',
		      top: '50%',
		      textAlign: 'center'
		  }],
		  grid: [{
		      top: 30,
		      width: '45%',
		      bottom: '55%',
		      left: 20,
		      containLabel: true
		  }, {
		      top: '55%',
		      width: '45%',
		      bottom: 0,
		      left: 20,
		      containLabel: true
		  }],
		  xAxis: [{
		      type: 'value',
		      axisLabel: {
		       show: true,
		        textStyle: {
		          fontSize : 14      //更改坐标轴文字大小
		        }
		     },		
		      splitLine: {
		          show: false
		      }
		  }, {
		      type: 'value',
		      axisLabel: {
		       show: true,
		        textStyle: {
		          fontSize : 14      //更改坐标轴文字大小
		        }
		     },
		      gridIndex: 1,
		      splitLine: {
		          show: false
		      }
		  }],
		  yAxis: [{
		      type: 'category',
		      data: Object.keys(builderJson.charts),
		      axisLabel: {
		          interval: 0,
		          rotate: 30,
		          textStyle: {
		          fontSize : 14      //更改坐标轴文字大小
		        }
		      },
		      
		      splitLine: {
		          show: false
		      }
		  }, {
		      gridIndex: 1,
		      type: 'category',
		      data: Object.keys(builderJson.components),
		      axisLabel: {
		          interval: 0,
		          rotate: 30,
		          textStyle: {
		          fontSize : 14      //更改坐标轴文字大小
		        }
		      },
		      splitLine: {
		          show: false
		      }
		  }],
		  series: [{
		      type: 'bar',
		      stack: 'chart',
		      z: 3,
		      itemStyle: {
		    	  color: function(params){
		    		  //黄绿var colorList = ['#b57f50','#f4e04d','#e8fccf','#96e072','#3da35d','#3e8914'];
		    		  //var colorList = ['#2d6a4f','#40916c','#52b788','#74c69d','#95d5b2','#b7e4c7'];
		    		  var colorList = ['#34a0a4','#52b69a','#99d98c','#76c893','#b5e48c','#d9ed92'];
		    		  return colorList[params.dataIndex];
		    	  }	    		  
			      
		      },
		      		      
		      label: {
		          position: 'right',
		          show: true,
		          normal: {
		                            formatter: '{b} {d}%',
		                            textStyle: {
		                                fontWeight: 'normal',
		                                fontSize: 14,		
		                            },
		                            color: '#2F4F4F'		
		                        }
		      },
		      data: Object.keys(builderJson.charts).map(function (key) {
		          return builderJson.charts[key];
		      })
		  }, {
		      type: 'bar',
		      stack: 'component',
		      xAxisIndex: 1,
		      yAxisIndex: 1,
		      z: 3,
		      
		      itemStyle: {
		    	  color: function(params){
		    		  //黄绿var colorList = ['#b57f50','#f4e04d','#e8fccf','#96e072','#3da35d','#3e8914','#134611'];
		    		  //全绿var colorList = ['#2d6a4f','#40916c','#52b788','#74c69d','#95d5b2','#b7e4c7','#d8f3dc'];
		    		  var colorList = ['#1e6091','#34a0a4','#52b69a','#99d98c','#76c893','#b5e48c','#d9ed92'];
		    		  return colorList[params.dataIndex];
		    	  }
		      },
		      label: {
		          position: 'right',
		          show: true,
		          textStyle : {
		　　　　　　　　fontWeight : 'normal',
		　　　　　　　　fontSize : 14,
		　　　　　　　　
		　　　　　　},
		      },
		      data: Object.keys(builderJson.components).map(function (key) {
		          return builderJson.components[key];
		      })
		  },{
		      type: 'pie',
		      radius: [0, '30%'],
		      label: {
                  normal: {
                      formatter: '{b} {d}%',
                      textStyle: {
                          fontWeight: 'normal',
                          fontSize: 14,
                      },
                      color: '#2F4F4F',		
                  }

              },		      
		      center: ['75%', '25%'],
		      //color:['#f4e04d','#e8fccf','#96e072'],
		      //color:['#40916c','#52b788','#74c69d'],
		      color:['#34a0a4','#99d98c','#b5e48c'],
		      
		      data: Object.keys(downloadJson).map(function (key) {
		          return {
		              name: key.replace('.js', ''),
		              value: downloadJson[key]
		          };
		      })
		  }, {
		      type: 'pie',
		      radius: [0, '30%'],
		      label: {
		                        normal: {
		                            formatter: '{b} {d}%',
		                            textStyle: {
		                                fontWeight: 'normal',
		                                fontSize: 14,
		                            },
		                            color: '#2F4F4F',		
		                        }
		
		                    },
		      center: ['75%', '75%'],
		      //color:['#f4e04d','#e8fccf','#96e072','#3da35d','#3e8914'],
		      //color:['#2d6a4f','#40916c','#52b788','#74c69d','#95d5b2'],
		      color:['#34a0a4','#52b69a','#99d98c','#76c893','#d9ed92'],
		      data: Object.keys(themeJson).map(function (key) {
		          return {
		              name: key.replace('.js', ''),
		              value: themeJson[key]
		          };
		      })
		  }]
		};
		
		myChart.setOption(option);

	</script>


	<!-- 地图分布 map -->
	<script>
	var chartDom = document.getElementById('map2');
	var myChart = echarts.init(chartDom);
	var option;
	
	var data = [
	     {name: '海门', value: 9},
	     {name: '鄂尔多斯', value: 12},
	     {name: '招远', value: 12},
	     {name: '舟山', value: 12},
	     {name: '齐齐哈尔', value: 14},
	     {name: '盐城', value: 15},
	     {name: '赤峰', value: 16},
	     {name: '青岛', value: 18},
	     {name: '乳山', value: 18},
	     {name: '金昌', value: 19},
	     {name: '泉州', value: 21},
	     {name: '莱西', value: 21},
	     {name: '日照', value: 21},
	     {name: '胶南', value: 22},
	     {name: '南通', value: 23},
	     {name: '拉萨', value: 24},
	     {name: '云浮', value: 24},
	     {name: '梅州', value: 25},
	     {name: '文登', value: 25},
	     {name: '上海', value: 325},
	     {name: '攀枝花', value: 25},
	     {name: '威海', value: 25},
	     {name: '承德', value: 25},
	     {name: '厦门', value: 226},
	     {name: '汕尾', value: 26},
	     {name: '潮州', value: 26},
	     {name: '丹东', value: 27},
	     {name: '太仓', value: 27},
	     {name: '曲靖', value: 27},
	     {name: '烟台', value: 28},
	     {name: '福州', value: 29},
	     {name: '瓦房店', value: 30},
	     {name: '即墨', value: 30},
	     {name: '抚顺', value: 31},
	     {name: '玉溪', value: 31},
	     {name: '张家口', value: 31},
	     {name: '阳泉', value: 31},
	     {name: '莱州', value: 32},
	     {name: '湖州', value: 132},
	     {name: '汕头', value: 32},
	     {name: '昆山', value: 33},
	     {name: '宁波', value: 33},
	     {name: '湛江', value: 33},
	     {name: '揭阳', value: 34},
	     {name: '荣成', value: 34},
	     {name: '连云港', value: 35},
	     {name: '葫芦岛', value: 35},
	     {name: '常熟', value: 36},
	     {name: '东莞', value: 36},
	     {name: '河源', value: 36},
	     {name: '淮安', value: 36},
	     {name: '泰州', value: 36},
	     {name: '南宁', value: 37},
	     {name: '营口', value: 37},
	     {name: '惠州', value: 37},
	     {name: '江阴', value: 37},
	     {name: '蓬莱', value: 37},
	     {name: '韶关', value: 38},
	     {name: '嘉峪关', value: 38},
	     {name: '广州', value: 238},
	     {name: '延安', value: 38},
	     {name: '太原', value: 39},
	     {name: '清远', value: 39},
	     {name: '中山', value: 39},
	     {name: '昆明', value: 39},
	     {name: '寿光', value: 40},
	     {name: '盘锦', value: 40},
	     {name: '长治', value: 41},
	     {name: '深圳', value: 241},
	     {name: '珠海', value: 42},
	     {name: '宿迁', value: 43},
	     {name: '咸阳', value: 43},
	     {name: '铜川', value: 44},
	     {name: '平度', value: 44},
	     {name: '佛山', value: 44},
	     {name: '海口', value: 44},
	     {name: '江门', value: 45},
	     {name: '章丘', value: 45},
	     {name: '肇庆', value: 46},
	     {name: '大连', value: 47},
	     {name: '临汾', value: 47},
	     {name: '吴江', value: 47},
	     {name: '石嘴山', value: 49},
	     {name: '沈阳', value: 50},
	     {name: '苏州', value: 250},
	     {name: '茂名', value: 50},
	     {name: '嘉兴', value: 51},
	     {name: '长春', value: 51},
	     {name: '胶州', value: 52},
	     {name: '银川', value: 52},
	     {name: '张家港', value: 52},
	     {name: '三门峡', value: 53},
	     {name: '锦州', value: 54},
	     {name: '南昌', value: 154},
	     {name: '柳州', value: 54},
	     {name: '三亚', value: 54},
	     {name: '自贡', value: 56},
	     {name: '吉林', value: 56},
	     {name: '阳江', value: 57},
	     {name: '泸州', value: 57},
	     {name: '西宁', value: 57},
	     {name: '宜宾', value: 58},
	     {name: '呼和浩特', value: 58},
	     {name: '成都', value: 158},
	     {name: '大同', value: 58},
	     {name: '镇江', value: 59},
	     {name: '桂林', value: 59},
	     {name: '张家界', value: 59},
	     {name: '宜兴', value: 59},
	     {name: '北海', value: 60},
	     {name: '西安', value: 61},
	     {name: '金坛', value: 62},
	     {name: '东营', value: 62},
	     {name: '牡丹江', value: 63},
	     {name: '遵义', value: 63},
	     {name: '绍兴', value: 63},
	     {name: '扬州', value: 64},
	     {name: '常州', value: 64},
	     {name: '潍坊', value: 65},
	     {name: '重庆', value: 266},
	     {name: '台州', value: 67},
	     {name: '南京', value: 267},
	     {name: '滨州', value: 70},
	     {name: '贵阳', value: 71},
	     {name: '无锡', value: 71},
	     {name: '本溪', value: 71},
	     {name: '克拉玛依', value: 72},
	     {name: '渭南', value: 72},
	     {name: '马鞍山', value: 72},
	     {name: '宝鸡', value: 72},
	     {name: '焦作', value: 75},
	     {name: '句容', value: 75},
	     {name: '北京', value: 379},
	     {name: '徐州', value: 79},
	     {name: '衡水', value: 180},
	     {name: '包头', value: 80},
	     {name: '绵阳', value: 80},
	     {name: '乌鲁木齐', value: 84},
	     {name: '枣庄', value: 84},
	     {name: '杭州', value: 384},
	     {name: '淄博', value: 85},
	     {name: '鞍山', value: 86},
	     {name: '溧阳', value: 86},
	     {name: '库尔勒', value: 86},
	     {name: '安阳', value: 90},
	     {name: '开封', value: 90},
	     {name: '济南', value: 92},
	     {name: '德阳', value: 93},
	     {name: '温州', value: 95},
	     {name: '九江', value: 96},
	     {name: '邯郸', value: 98},
	     {name: '临安', value: 99},
	     {name: '兰州', value: 99},
	     {name: '沧州', value: 100},
	     {name: '临沂', value: 103},
	     {name: '南充', value: 104},
	     {name: '天津', value: 105},
	     {name: '富阳', value: 106},
	     {name: '泰安', value: 112},
	     {name: '诸暨', value: 112},
	     {name: '郑州', value: 113},
	     {name: '哈尔滨', value: 114},
	     {name: '聊城', value: 116},
	     {name: '芜湖', value: 117},
	     {name: '唐山', value: 119},
	     {name: '平顶山', value: 119},
	     {name: '邢台', value: 119},
	     {name: '德州', value: 120},
	     {name: '济宁', value: 120},
	     {name: '荆州', value: 127},
	     {name: '宜昌', value: 130},
	     {name: '义乌', value: 232},
	     {name: '丽水', value: 133},
	     {name: '洛阳', value: 134},
	     {name: '秦皇岛', value: 136},
	     {name: '株洲', value: 143},
	     {name: '石家庄', value: 147},
	     {name: '莱芜', value: 148},
	     {name: '常德', value: 152},
	     {name: '保定', value: 153},
	     {name: '湘潭', value: 154},
	     {name: '金华', value: 157},
	     {name: '岳阳', value: 169},
	     {name: '长沙', value: 175},
	     {name: '衢州', value: 177},
	     {name: '廊坊', value: 193},
	     {name: '菏泽', value: 194},
	     {name: '合肥', value: 229},
	     {name: '武汉', value: 103},
	     {name: '大庆', value: 79}
	];
	var geoCoordMap = {
	    '海门':[121.15,31.89],
	    '鄂尔多斯':[109.781327,39.608266],
	    '招远':[120.38,37.35],
	    '舟山':[122.207216,29.985295],
	    '齐齐哈尔':[123.97,47.33],
	    '盐城':[120.13,33.38],
	    '赤峰':[118.87,42.28],
	    '青岛':[120.33,36.07],
	    '乳山':[121.52,36.89],
	    '金昌':[102.188043,38.520089],
	    '泉州':[118.58,24.93],
	    '莱西':[120.53,36.86],
	    '日照':[119.46,35.42],
	    '胶南':[119.97,35.88],
	    '南通':[121.05,32.08],
	    '拉萨':[91.11,29.97],
	    '云浮':[112.02,22.93],
	    '梅州':[116.1,24.55],
	    '文登':[122.05,37.2],
	    '上海':[121.48,31.22],
	    '攀枝花':[101.718637,26.582347],
	    '威海':[122.1,37.5],
	    '承德':[117.93,40.97],
	    '厦门':[118.1,24.46],
	    '汕尾':[115.375279,22.786211],
	    '潮州':[116.63,23.68],
	    '丹东':[124.37,40.13],
	    '太仓':[121.1,31.45],
	    '曲靖':[103.79,25.51],
	    '烟台':[121.39,37.52],
	    '福州':[119.3,26.08],
	    '瓦房店':[121.979603,39.627114],
	    '即墨':[120.45,36.38],
	    '抚顺':[123.97,41.97],
	    '玉溪':[102.52,24.35],
	    '张家口':[114.87,40.82],
	    '阳泉':[113.57,37.85],
	    '莱州':[119.942327,37.177017],
	    '湖州':[120.1,30.86],
	    '汕头':[116.69,23.39],
	    '昆山':[120.95,31.39],
	    '宁波':[121.56,29.86],
	    '湛江':[110.359377,21.270708],
	    '揭阳':[116.35,23.55],
	    '荣成':[122.41,37.16],
	    '连云港':[119.16,34.59],
	    '葫芦岛':[120.836932,40.711052],
	    '常熟':[120.74,31.64],
	    '东莞':[113.75,23.04],
	    '河源':[114.68,23.73],
	    '淮安':[119.15,33.5],
	    '泰州':[119.9,32.49],
	    '南宁':[108.33,22.84],
	    '营口':[122.18,40.65],
	    '惠州':[114.4,23.09],
	    '江阴':[120.26,31.91],
	    '蓬莱':[120.75,37.8],
	    '韶关':[113.62,24.84],
	    '嘉峪关':[98.289152,39.77313],
	    '广州':[113.23,23.16],
	    '延安':[109.47,36.6],
	    '太原':[112.53,37.87],
	    '清远':[113.01,23.7],
	    '中山':[113.38,22.52],
	    '昆明':[102.73,25.04],
	    '寿光':[118.73,36.86],
	    '盘锦':[122.070714,41.119997],
	    '长治':[113.08,36.18],
	    '深圳':[114.07,22.62],
	    '珠海':[113.52,22.3],
	    '宿迁':[118.3,33.96],
	    '咸阳':[108.72,34.36],
	    '铜川':[109.11,35.09],
	    '平度':[119.97,36.77],
	    '佛山':[113.11,23.05],
	    '海口':[110.35,20.02],
	    '江门':[113.06,22.61],
	    '章丘':[117.53,36.72],
	    '肇庆':[112.44,23.05],
	    '大连':[121.62,38.92],
	    '临汾':[111.5,36.08],
	    '吴江':[120.63,31.16],
	    '石嘴山':[106.39,39.04],
	    '沈阳':[123.38,41.8],
	    '苏州':[120.62,31.32],
	    '茂名':[110.88,21.68],
	    '嘉兴':[120.76,30.77],
	    '长春':[125.35,43.88],
	    '胶州':[120.03336,36.264622],
	    '银川':[106.27,38.47],
	    '张家港':[120.555821,31.875428],
	    '三门峡':[111.19,34.76],
	    '锦州':[121.15,41.13],
	    '南昌':[115.89,28.68],
	    '柳州':[109.4,24.33],
	    '三亚':[109.511909,18.252847],
	    '自贡':[104.778442,29.33903],
	    '吉林':[126.57,43.87],
	    '阳江':[111.95,21.85],
	    '泸州':[105.39,28.91],
	    '西宁':[101.74,36.56],
	    '宜宾':[104.56,29.77],
	    '呼和浩特':[111.65,40.82],
	    '成都':[104.06,30.67],
	    '大同':[113.3,40.12],
	    '镇江':[119.44,32.2],
	    '桂林':[110.28,25.29],
	    '张家界':[110.479191,29.117096],
	    '宜兴':[119.82,31.36],
	    '北海':[109.12,21.49],
	    '西安':[108.95,34.27],
	    '金坛':[119.56,31.74],
	    '东营':[118.49,37.46],
	    '牡丹江':[129.58,44.6],
	    '遵义':[106.9,27.7],
	    '绍兴':[120.58,30.01],
	    '扬州':[119.42,32.39],
	    '常州':[119.95,31.79],
	    '潍坊':[119.1,36.62],
	    '重庆':[106.54,29.59],
	    '台州':[121.420757,28.656386],
	    '南京':[118.78,32.04],
	    '滨州':[118.03,37.36],
	    '贵阳':[106.71,26.57],
	    '无锡':[120.29,31.59],
	    '本溪':[123.73,41.3],
	    '克拉玛依':[84.77,45.59],
	    '渭南':[109.5,34.52],
	    '马鞍山':[118.48,31.56],
	    '宝鸡':[107.15,34.38],
	    '焦作':[113.21,35.24],
	    '句容':[119.16,31.95],
	    '北京':[116.46,39.92],
	    '徐州':[117.2,34.26],
	    '衡水':[115.72,37.72],
	    '包头':[110,40.58],
	    '绵阳':[104.73,31.48],
	    '乌鲁木齐':[87.68,43.77],
	    '枣庄':[117.57,34.86],
	    '杭州':[120.19,30.26],
	    '淄博':[118.05,36.78],
	    '鞍山':[122.85,41.12],
	    '溧阳':[119.48,31.43],
	    '库尔勒':[86.06,41.68],
	    '安阳':[114.35,36.1],
	    '开封':[114.35,34.79],
	    '济南':[117,36.65],
	    '德阳':[104.37,31.13],
	    '温州':[120.65,28.01],
	    '九江':[115.97,29.71],
	    '邯郸':[114.47,36.6],
	    '临安':[119.72,30.23],
	    '兰州':[103.73,36.03],
	    '沧州':[116.83,38.33],
	    '临沂':[118.35,35.05],
	    '南充':[106.110698,30.837793],
	    '天津':[117.2,39.13],
	    '富阳':[119.95,30.07],
	    '泰安':[117.13,36.18],
	    '诸暨':[120.23,29.71],
	    '郑州':[113.65,34.76],
	    '哈尔滨':[126.63,45.75],
	    '聊城':[115.97,36.45],
	    '芜湖':[118.38,31.33],
	    '唐山':[118.02,39.63],
	    '平顶山':[113.29,33.75],
	    '邢台':[114.48,37.05],
	    '德州':[116.29,37.45],
	    '济宁':[116.59,35.38],
	    '荆州':[112.239741,30.335165],
	    '宜昌':[111.3,30.7],
	    '义乌':[120.06,29.32],
	    '丽水':[119.92,28.45],
	    '洛阳':[112.44,34.7],
	    '秦皇岛':[119.57,39.95],
	    '株洲':[113.16,27.83],
	    '石家庄':[114.48,38.03],
	    '莱芜':[117.67,36.19],
	    '常德':[111.69,29.05],
	    '保定':[115.48,38.85],
	    '湘潭':[112.91,27.87],
	    '金华':[119.64,29.12],
	    '岳阳':[113.09,29.37],
	    '长沙':[113,28.21],
	    '衢州':[118.88,28.97],
	    '廊坊':[116.7,39.53],
	    '菏泽':[115.480656,35.23375],
	    '合肥':[117.27,31.86],
	    '武汉':[114.31,30.52],
	    '大庆':[125.03,46.58]
	};
	
	var convertData = function (data) {
	    var res = [];
	    for (var i = 0; i < data.length; i++) {
	        var geoCoord = geoCoordMap[data[i].name];
	        if (geoCoord) {
	            res.push({
	                name: data[i].name,
	                value: geoCoord.concat(data[i].value)
	            });
	        }
	    }
	    return res;
	};
	
	option = {
	    title: {
	    	show:false,
	        text: '平台用户地域分布',
	        //subtext: 'data from PM25.in',
	        //sublink: 'http://www.pm25.in',
	        top:18,
	        left: 'center',
	        textStyle: {
	            color: '#000',
	            fontSize:30
	        }
	    },
	    tooltip : {
	        trigger: 'item'
	    },
	    bmap: {
	        center: [107.114129, 40.550339],
	        zoom: 3,
	        roam: true,
	        mapStyle: {
	            styleJson: [{
	                'featureType': 'water',
	                'elementType': 'all',
	                'stylers': {
	                    'color': '#d1d1d1'
	                }
	            }, {
	                'featureType': 'land',
	                'elementType': 'all',
	                'stylers': {
	                    'color': '#f3f3f3'
	                }
	            }, {
	                'featureType': 'railway',
	                'elementType': 'all',
	                'stylers': {
	                    'visibility': 'off'
	                }
	            }, {
	                'featureType': 'highway',
	                'elementType': 'all',
	                'stylers': {
	                    'color': '#fdfdfd'
	                }
	            }, {
	                'featureType': 'highway',
	                'elementType': 'labels',
	                'stylers': {
	                    'visibility': 'off'
	                }
	            }, {
	                'featureType': 'arterial',
	                'elementType': 'geometry',
	                'stylers': {
	                    'color': '#fefefe'
	                }
	            }, {
	                'featureType': 'arterial',
	                'elementType': 'geometry.fill',
	                'stylers': {
	                    'color': '#fefefe'
	                }
	            }, {
	                'featureType': 'poi',
	                'elementType': 'all',
	                'stylers': {
	                    'visibility': 'off'
	                }
	            }, {
	                'featureType': 'green',
	                'elementType': 'all',
	                'stylers': {
	                    'visibility': 'off'
	                }
	            }, {
	                'featureType': 'subway',
	                'elementType': 'all',
	                'stylers': {
	                    'visibility': 'off'
	                }
	            }, {
	                'featureType': 'manmade',
	                'elementType': 'all',
	                'stylers': {
	                    'color': '#d1d1d1'
	                }
	            }, {
	                'featureType': 'local',
	                'elementType': 'all',
	                'stylers': {
	                    'color': '#d1d1d1'
	                }
	            }, {
	                'featureType': 'arterial',
	                'elementType': 'labels',
	                'stylers': {
	                    'visibility': 'off'
	                }
	            }, {
	                'featureType': 'boundary',
	                'elementType': 'all',
	                'stylers': {
	                    'color': '#fefefe'
	                }
	            }, {
	                'featureType': 'building',
	                'elementType': 'all',
	                'stylers': {
	                    'color': '#d1d1d1'
	                }
	            }, {
	                'featureType': 'label',
	                'elementType': 'labels.text.fill',
	                'stylers': {
	                    'color': '#999999'
	                }
	            }]
	        }
	    },
	    series : [
	        {
	            name: 'pm2.5',
	            type: 'scatter',
	            coordinateSystem: 'bmap',
	            data: convertData(data),
	            symbolSize: function (val) {
	                return val[2] / 10;
	            },
	            encode: {
	                value: 2
	            },
	            label: {
	                formatter: '{b}',
	                position: 'right',
	                show: false
	            },
	            emphasis: {
	                label: {
	                    show: true
	                }
	            }
	        },
	        {
	            name: 'Top 5',
	            type: 'effectScatter',
	            coordinateSystem: 'bmap',
	            data: convertData(data.sort(function (a, b) {
	                return b.value - a.value;
	            }).slice(0, 6)),
	            symbolSize: function (val) {
	                return val[2] / 10;
	            },
	            encode: {
	                value: 2
	            },
	            showEffectOn: 'render',
	            rippleEffect: {
	                brushType: 'stroke'
	            },
	            hoverAnimation: true,
	            label: {
	                formatter: '{b}',
	                position: 'right',
	                show: true
	            },
	            itemStyle: {
	                shadowBlur: 10,
	                shadowColor: '#333'
	            },
	            zlevel: 1
	        }
	    ]
	};
	option && myChart.setOption(option);
	
	</script>

</body>
</html>
