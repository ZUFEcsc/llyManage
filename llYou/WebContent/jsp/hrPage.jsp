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

<link rel="stylesheet" href="../js/selection/xlselection.css" />
</head>
<body class="layui-layout-body">
	<%
		String msg = (String) request.getAttribute("msg");
	%>
	<div class="layui-layout layui-layout-admin">
		<%@ include file="enterprise-header.jsp"%>
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
						href="javascript:;"> 招聘管理 </a>
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
						href="javascript:;">用户管理 </a>
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
						<div style="float: left;">
							<a href="#" class="layui-btn layui-btn-normal" style="background-color:#25a18e;"> <i
								class="iconfont icon-fabu" style="color: #fff; font-size: 22px;"></i>
								发布招聘
							</a>
						</div>
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
								<%
									Dao dao = new Dao();
									List<CompanySeekBean> list = dao.getListHRCompanySeekInfo();
									for (CompanySeekBean ab : list) {
										if (ab.getState().equals("2"))
											ab.setState("已结束");
										else if (ab.getState().equals("1"))
											ab.setState("进行中");
								%>
								<tr>
									<th scope="row"><i class="iconfont icon-6"
										style="font-size: 16px; color: #e29c45;"></i> <%=ab.getSeek_number()%></th>
									<td><%=ab.getSeek_position()%></td>
									<td><%=ab.getDeliver_time()%></td>
									<td><span class="layui-badge layui-bg-orange"><%=ab.getState()%></span></td>
									<td>
										<%
											if (ab.getState().equals("进行中")) {
										%> <a href="EndFindServlet?number=<%=ab.getSeek_number()%>"
										class="layui-btn layui-btn-sm layui-btn-primary" type="button">结束招聘</a>

										<%
											}
										%>
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

					<!-- 简历池 -->
					<div class="layui-tab-item" id="item-JLC" style="display: none;">

						<div class="layui-col-md2">
							<div class="selectbox">
								<a type="button" class="layui-btn layui-btn-normal selemenu"
									style="color: #ffffff;background-color:#25a18e;"> <i class="iconfont icon-jiqiren2"
									style="color: #ffffff; font-size: 22px;"></i> 智能筛选
								</a>

								<div class="citylist2">

									<div class="xzk" style="line-height: 45px;">
										<div style="display: inline-block;">
											<img style="display: inline-block;" src="../icon/ai.png"
												width=8%> <span
												style="color: #3f81c1; font-size: 16px;">请选择筛选条件</span> <a
												href="#" class="layui-btn layui-btn-sm layui-btn-normal"
												style="margin-left: 70px;">提交筛选</a>
										</div>
									</div>

									<div class="xzk">
										<div class="leibie">
											<input type="checkbox"
												style="display: inline-block; margin-bottom: 3px;">
											<label class="form-check-label"
												style="color: #777777; display: inline-block">性别</label>

										</div>
										<ul class="shangquan">
											<li><select class="form-control form-control-sm"
												style="display: inline-block;">
													<option selected disabled style="display: none;" value="">请选择性别</option>
													<option>男</option>
													<option>女</option>
											</select></li>
										</ul>
									</div>

									<div class="xzk">
										<div class="leibie">
											<input type="checkbox"
												style="display: inline-block; margin-bottom: 3px;">
											<label class="form-check-label"
												style="color: #777777; display: inline-block">年龄</label>

										</div>
										<ul class="shangquan"
											style="display: inline-block; width: 200px">
											<li>
												<div style="display: inline-block;">
													<input class="form-control form-control-sm"
														style="display: inline-block; width: 20%;" type="text"
														placeholder="23"><span> - </span> <input
														class="form-control form-control-sm"
														style="display: inline-block; width: 20%;" type="text"
														placeholder="25"><span> 岁</span>
												</div>
											</li>
										</ul>
									</div>

									<div class="xzk">
										<div class="leibie">
											<input type="checkbox"
												style="display: inline-block; margin-bottom: 3px;">
											<label class="form-check-label"
												style="color: #777777; display: inline-block">最低学历</label>

										</div>
										<ul class="shangquan">
											<li><select class="form-control form-control-sm"
												style="display: inline-block;">
													<option selected disabled style="display: none;" value="">请选择最低学历</option>
													<option>高中</option>
													<option>本科</option>
											</select></li>
										</ul>
									</div>

									<div class="xzk">
										<div class="leibie">
											<input type="checkbox"
												style="display: inline-block; margin-bottom: 3px;">
											<label class="form-check-label"
												style="color: #777777; display: inline-block">工作能力</label>

										</div>
										<ul class="shangquan">
											<li>
												<div id="nlstar" class="star" style="display: inline-block;"></div>
											</li>
										</ul>
									</div>

									<div class="xzk">
										<div class="leibie">
											<input type="checkbox"
												style="display: inline-block; margin-bottom: 3px;">
											<span style="color: #777777;">工作效率</span>
										</div>
										<ul class="shangquan">
											<li>
												<div id="xlstar" class="star" style="display: inline-block;"></div>
											</li>
										</ul>
									</div>

									<div class="xzk">
										<div class="leibie">
											<input type="checkbox"
												style="display: inline-block; margin-bottom: 3px;">
											<span style="color: #777777;">沟通能力</span>
										</div>
										<ul class="shangquan">
											<li>
												<div id="gtstar" class="star" style="display: inline-block;"></div>
											</li>
										</ul>
									</div>

									<div class="xzk">
										<div class="leibie">
											<input type="checkbox"
												style="display: inline-block; margin-bottom: 3px;">
											<span style="color: #777777;">工作经验</span>
										</div>
										<ul class="shangquan">
											<li>
												<div id="jystar" class="star" style="display: inline-block;"></div>
											</li>
										</ul>
									</div>

									<div class="xzk">
										<div class="leibie">
											<input type="checkbox"
												style="display: inline-block; margin-bottom: 3px;">
											<span style="color: #777777;">专业技能</span>
										</div>
										<ul class="shangquan">
											<li>
												<div id="zystar" class="star" style="display: inline-block;"></div>
											</li>
										</ul>
									</div>

									<div class="xzk">
										<div class="leibie">
											<input type="checkbox"
												style="display: inline-block; margin-bottom: 3px;">
											<span style="color: #777777;">匹配程度</span>
										</div>
										<ul class="shangquan">
											<li>
												<div id="ppstar" class="star" style="display: inline-block;"></div>
											</li>
										</ul>
									</div>


									<div class="xzk">
										<div class="leibie">
											<input type="checkbox"
												style="display: inline-block; margin-bottom: 3px;">
											<label class="form-check-label"
												style="color: #777777; display: inline-block">过往标签</label>

										</div>
										<ul class="shangquan" style="width: 200px">
											<li><span class="layui-badge layui-bg-orange">亲和待人</span>
												<span class="layui-badge layui-bg-orange">工作狂魔</span> <span
												class="layui-badge layui-bg-gray">技术大神</span> <span
												class="layui-badge layui-bg-gray">效率之王</span> <span
												class="layui-badge layui-bg-orange">接单大佬</span> <span
												class="layui-badge layui-bg-gray">沟通达人</span></li>
										</ul>
									</div>
								</div>
							</div>

						</div>

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
						<hr>
						<div
							style="margin: 10px; padding: 15px; background-color: #ffffff;">
							<img alt="" src="../icon/jlc.png"
								style="width: 4%; float: left; margin-top: -15px; margin-left: -20px;">

							<div class="layui-row layui-col-space15">
								<!-- -->
								<%
									List<Hr_UserResumeBean> list3 = dao.getListResumePoolInfo();
									for (Hr_UserResumeBean ab : list3) {
										if (ab.getState().equals("1000")) {
								%>
								<div class="layui-col-md3">
									<div class="layui-card">
										<div class="layui-card-header">
											<i class="iconfont icon-biaoqian1" style="color: #5FB878;"></i>
											<strong style="color: #2b4f6c;">标签： </strong> <span
												class="layui-badge layui-bg-orange">工作狂魔</span> <span
												class="layui-badge layui-bg-orange">亲和待人</span>
										</div>
										<div class="layui-card-body">
											<i class="iconfont icon-lunkuohua2_yonghu"
												style="color: #5FB878;"></i> <strong style="color: #2b4f6c;">姓名：</strong>
											<span style="color: #777777;"><%=ab.getName()%></span><br>
											<i class="iconfont icon-xingbie" style="color: #5FB878;"></i>
											<strong style="color: #2b4f6c;">性别：</strong> <span
												style="color: #777777;"><%=ab.getSex()%></span><br> <i
												class="iconfont icon-zhaopingangwei" style="color: #5FB878;"></i>
											<strong style="color: #2b4f6c;">年龄：</strong> <span
												style="color: #777777;"><%=ab.getAge()%></span><br> <i
												class="iconfont icon-xueli" style="color: #5FB878;"></i> <strong
												style="color: #2b4f6c;">学历：</strong> <span
												style="color: #777777;"><%=ab.getLearn_experience()%></span><br>
											<i class="iconfont icon-shoujizhengli"
												style="color: #5FB878;"></i> <strong style="color: #2b4f6c;">招聘职位：</strong>
											<span style="color: #777777;"><%=ab.getSeek_position()%></span>
											<br> <i class="iconfont icon-gangwei"
												style="color: #5FB878; font-size: 16px;"></i> <strong
												style="color: #2b4f6c;">人岗匹配：</strong>
											<div class="layui-progress"
												style="width: 50%; display: inline-block;">
												<div class="layui-progress-bar" lay-percent="80%"
													style="background-color: #ff9b85;"></div>
											</div>
											<span
												style="display: inline-block; font-size: 7px; color: #838383;">80分</span>


											<br> <i class="iconfont icon-jiqiren2"
												style="color: #5FB878;"></i> <strong style="color: #2b4f6c;">综合评分：</strong>
											<div class="layui-progress"
												style="width: 50%; display: inline-block;">
												<div class="layui-progress-bar" lay-percent="80%"></div>
											</div>
											<span
												style="display: inline-block; font-size: 7px; color: #838383;">80分</span>

											<div style="display: inline-block; margin-top: 10px;">
												<button type="button" class="layui-btn layui-btn-sm"
													style="background-color: #25a18e;">
													<a
														href="UptoFirstStepServlet?identity=<%=ab.getIdentity()%>">通过</a>
												</button>
												<button type="button" class="layui-btn layui-btn-sm"
													style="background-color: #ff9b85;">驳回</button>

											</div>
											<div style="float: right; margin-top: 15px;">
												<a class="layui-btn-xs" href="#">
													<span style="color: #838383;">了解更多</span> <i
													class="iconfont icon-ziyuan25"
													style="font-size: 22px; color: #16c2c2;"></i>
												</a>
											</div>

										</div>
									</div>
								</div>
								<%
									}
									}
								%>
								<%
									if (msg != null) {
								%>
								<%=msg%>
								<%
									}
								%>
							</div>

						</div>

					</div>


					<!-- 第一阶段 -->
					<div class="layui-tab-item" id="item-DYJD" style="display: none;">

						<div style="float: left;">
							<a href="#" class="layui-btn layui-btn-normal selemenu"
								style="color: #ffffff;background-color:#25a18e;"> <i class="iconfont icon-jiqiren2"
								style="color: #ffffff; font-size: 22px;"></i> 智能筛选
							</a>
						</div>

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
						<hr>
						<div
							style="margin: 10px; padding: 15px; background-color: #ffffff;">
							<img alt="" src="../icon/jlc.png"
								style="width: 4%; float: left; margin-top: -15px; margin-left: -20px;">

							<div class="layui-row layui-col-space15">
								<%
									for (Hr_UserResumeBean ab : list3) {
										if (ab.getState().equals("1100")) {
								%>
								<div class="layui-col-md3">
									<div class="layui-card">
										<div class="layui-card-header">
											<i class="iconfont icon-biaoqian1" style="color: #5FB878;"></i>
											<strong style="color: #2b4f6c;">标签：</strong> <span
												class="layui-badge layui-bg-orange">工作狂魔</span> <span
												class="layui-badge layui-bg-orange">亲和待人</span>
										</div>
										<div class="layui-card-body">
											<i class="iconfont icon-lunkuohua2_yonghu"
												style="color: #5FB878;"></i> <strong style="color: #2b4f6c;">姓名：</strong>
											<span style="color: #777777;"><%=ab.getName()%></span><br>
											<i class="iconfont icon-xingbie" style="color: #5FB878;"></i>
											<strong style="color: #2b4f6c;">性别：</strong> <span
												style="color: #777777;"><%=ab.getSex()%></span><br> <i
												class="iconfont icon-zhaopingangwei" style="color: #5FB878;"></i>
											<strong style="color: #2b4f6c;">年龄：</strong> <span
												style="color: #777777;"><%=ab.getAge()%></span><br> <i
												class="iconfont icon-xueli" style="color: #5FB878;"></i> <strong
												style="color: #2b4f6c;">学历：</strong> <span
												style="color: #777777;"><%=ab.getLearn_experience()%></span><br>
											<i class="iconfont icon-shoujizhengli"
												style="color: #5FB878;"></i> <strong style="color: #2b4f6c;">招聘职位：</strong>
											<span style="color: #777777;"><%=ab.getSeek_position()%></span><br>
											<i class="iconfont icon-gangwei"
												style="color: #5FB878; font-size: 16px;"></i> <strong
												style="color: #2b4f6c;">人岗匹配：</strong>
											<div class="layui-progress"
												style="width: 50%; display: inline-block;">
												<div class="layui-progress-bar" lay-percent="80%"
													style="background-color: #ff9b85;"></div>
											</div>
											<span
												style="display: inline-block; font-size: 7px; color: #838383;">80分</span>


											<br> <i class="iconfont icon-jiqiren2"
												style="color: #5FB878;"></i> <strong style="color: #2b4f6c;">综合评分：</strong>
											<div class="layui-progress"
												style="width: 50%; display: inline-block;">
												<div class="layui-progress-bar" lay-percent="80%"></div>
											</div>
											<span
												style="display: inline-block; font-size: 7px; color: #838383;">80分</span>

											<div style="display: inline-block; margin-top: 10px;">
												<button type="button" class="layui-btn layui-btn-sm"
													style="background-color: #25a18e;">
													<a
														href="UptoSecondStepServlet?identity=<%=ab.getIdentity()%>">通过</a>
												</button>
												<button type="button" class="layui-btn layui-btn-sm"
													style="background-color: #ff9b85;">
													<a href="DowntoZeroStepServlet?identity=<%=ab.getIdentity()%>">驳回</a>	
												</button>

											</div>
											<div style="float: right; margin-top: 15px;">
												<a class="layui-btn-xs" href="#">
													<span style="color: #838383;">了解更多</span> <i
													class="iconfont icon-ziyuan25"
													style="font-size: 22px; color: #16c2c2;"></i>
												</a>
											</div>
										</div>
									</div>
								</div>
								<%
									}
									}
								%>
								<%
									if (msg != null) {
								%>
								<%=msg%>
								<%
									}
								%>
							</div>
						</div>


					</div>


					<!-- 第二阶段 -->
					<div class="layui-tab-item" id="item-DEJD" style="display: none;">

						<div style="float: left;">
							<a href="#" class="layui-btn layui-btn-normal selemenu"
								style="color: #ffffff;background-color:#25a18e;"> <i class="iconfont icon-jiqiren2"
								style="color: #ffffff; font-size: 22px;"></i> 智能筛选
							</a>
						</div>

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
						<hr>
						<div
							style="margin: 10px; padding: 15px; background-color: #ffffff;">
							<img alt="" src="../icon/jlc.png"
								style="width: 4%; float: left; margin-top: -15px; margin-left: -20px;">

							<div class="layui-row layui-col-space15">
								<%
									for (Hr_UserResumeBean ab : list3) {
										if (ab.getState().equals("1110")) {
								%>
								<div class="layui-col-md3">
									<div class="layui-card">
										<div class="layui-card-header">
											<i class="iconfont icon-biaoqian1" style="color: #5FB878;"></i>
											<strong style="color: #2b4f6c;">标签：</strong> <span
												class="layui-badge layui-bg-orange">工作狂魔</span> <span
												class="layui-badge layui-bg-orange">亲和待人</span>
										</div>
										<div class="layui-card-body">
											<i class="iconfont icon-lunkuohua2_yonghu"
												style="color: #5FB878;"></i> <strong style="color: #2b4f6c;">姓名：</strong>
											<span style="color: #777777;"><%=ab.getName()%></span><br>
											<i class="iconfont icon-xingbie" style="color: #5FB878;"></i>
											<strong style="color: #2b4f6c;">性别：</strong> <span
												style="color: #777777;"><%=ab.getSex()%></span><br> <i
												class="iconfont icon-zhaopingangwei" style="color: #5FB878;"></i>
											<strong style="color: #2b4f6c;">年龄：</strong> <span
												style="color: #777777;"><%=ab.getAge()%></span><br> <i
												class="iconfont icon-xueli" style="color: #5FB878;"></i> <strong
												style="color: #2b4f6c;">学历：</strong> <span
												style="color: #777777;"><%=ab.getLearn_experience()%></span><br>
											<i class="iconfont icon-shoujizhengli"
												style="color: #5FB878;"></i> <strong style="color: #2b4f6c;">招聘职位：</strong>
											<span style="color: #777777;"><%=ab.getSeek_position()%></span><br>
											<i class="iconfont icon-gangwei"
												style="color: #5FB878; font-size: 16px;"></i> <strong
												style="color: #2b4f6c;">人岗匹配：</strong>
											<div class="layui-progress"
												style="width: 50%; display: inline-block;">
												<div class="layui-progress-bar" lay-percent="80%"
													style="background-color: #ff9b85;"></div>
											</div>
											<span
												style="display: inline-block; font-size: 7px; color: #838383;">80分</span>


											<br> <i class="iconfont icon-jiqiren2"
												style="color: #5FB878;"></i> <strong style="color: #2b4f6c;">综合评分：</strong>
											<div class="layui-progress"
												style="width: 50%; display: inline-block;">
												<div class="layui-progress-bar" lay-percent="80%"></div>
											</div>
											<span
												style="display: inline-block; font-size: 7px; color: #838383;">80分</span>

											<div style="display: inline-block; margin-top: 10px;">
												<button type="button" class="layui-btn layui-btn-sm"
													style="background-color: #25a18e;">
													<a
														href="UptoThirdStepServlet?identity=<%=ab.getIdentity()%>">通过</a>
												</button>
												
												<button type="button" class="layui-btn layui-btn-sm"
													style="background-color: #ff9b85;">
													<a
														href="DowntoFirstStepServlet?identity=<%=ab.getIdentity()%>">驳回</a>
												</button>

											</div>
											<div style="float: right; margin-top: 15px;">
												<a class="layui-btn-xs" href="#">
													<span style="color: #838383;">了解更多</span> <i
													class="iconfont icon-ziyuan25"
													style="font-size: 22px; color: #16c2c2;"></i>
												</a>
											</div>
										</div>
									</div>
								</div>
								<%
									}
									}
								%>
								<%
									if (msg != null) {
								%>
								<%=msg%>
								<%
									}
								%>
							</div>
						</div>


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
								<%
									List<CompanyUserBean> list2 = dao.getListCompanyUserInfo();
									for (CompanyUserBean ab : list2) {
										if (ab.getPosition_kind().equals("1"))
											ab.setPosition_kind("普通员工");
										if (ab.getPosition_kind().equals("2"))
											ab.setPosition_kind("部门主管");
										if (ab.getPosition_kind().equals("3"))
											ab.setPosition_kind("项目经理");
										if (ab.getPosition_kind().equals("4"))
											ab.setPosition_kind("办公室主任");
										if (ab.getPosition_kind().equals("5"))
											ab.setPosition_kind("hr");
								%>
								<tr>
									<th scope="row"><i class="iconfont icon-6"
										style="font-size: 16px; color: #e29c45;"></i> <%=ab.getUsername()%></th>
									<td><%=ab.getName()%></td>
									<td><%=ab.getPosition_kind()%></td>
									<td><%=ab.getIn_time()%></td>
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
										<th scope="row">Y20189</th>
										<td>陈聪明</td>
										<td>员工陈不错子多次矿工，申请辞去… <a href=""
											style="color: #666666; font-size: 10px;"> 更多</a></td>
										<td>2020/01/09</td>
										<td><span class="layui-badge layui-bg-orange">通过申请</span></td>
										<td></td>
									</tr>
									<tr>
										<th scope="row">Y20189</th>
										<td>陈聪明</td>
										<td>员工陈不错子多次矿工，申请辞去… <a href=""
											style="color: #666666; font-size: 10px;"> 更多</a></td>
										<td>2020/01/09</td>
										<td><span class="layui-badge layui-bg-green">驳回申请</span></td>
										<td></td>
									</tr>
									<tr>
										<th scope="row">Y20189</th>
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

	<!-- 下拉框 -->
	<script>
		$(".selemenu").click(
				function() {
					$(this).next().slideToggle();
					$(this).parents().siblings().find(".citylist,.citylist2")
							.slideUp();
				})

		$(function() {
			$(document).not($(".selectbox")).click(function() {
				$(".citylist,.citylist2").slideUp();
			})
			$(".selectbox").click(function(event) {
				event.stopPropagation();
			})
		})
	</script>




	<!-- 评分 -->
	<script type="text/javascript">
		$('#nlstar').raty({
			half : true,
			path : '../icon/',
			score : 4,
		});
		$('#xlstar').raty({
			half : true,
			path : '../icon/',
			score : 4,
		});
		$('#gtstar').raty({
			half : true,
			path : '../icon/',
			score : 4,
		});
		$('#jystar').raty({
			half : true,
			path : '../icon/',
			score : 4,
		});
		$('#zystar').raty({
			half : true,
			path : '../icon/',
			score : 4,
		});
		$('#ppstar').raty({
			half : true,
			path : '../icon/',
			score : 4,
		});
	</script>

	<!-- 滑块 -->
	<script>
		layui.use('slider', function() {
			var $ = layui.$, slider = layui.slider;

			slider.render({
				elem : '#slideTest10',
				value : [ 30, 60 ] //初始值
				,
				range : true
			//范围选择
			});

			//自定义颜色
			slider.render({
				elem : '#slideTest15',
				theme : '#1E9FFF' //主题色
			});
			slider.render({
				elem : '#zhpf',
				value : 80,
				step : 10 //步长
				,
				theme : '#5FB878' //主题色
				,
				setTips : function(value) { //自定义提示文本
					return value + '分';
				}
			});

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

	<script>
		function openResult() { /* 绑定事件 */

			layui.use('layer', function() {
				var layer = layui.layer;
				layer.open({
					title : '确认框'

					,
					content : '配置各种参数，试试效果',
					btn : [ '取消', '确认' ]
				});
			});

		}
	</script>


</body>
</html>
