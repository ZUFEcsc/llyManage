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
<style>
.layui-timeline-item {
	height: 55px;
}

.layui-timeline-item i {
	font-size: 25px;
}
</style>
<title>用户页面</title>
<link rel="stylesheet" href="../res/layui/css/layui.css">
</head>
<body class="layui-layout-body">
	<div class="layui-layout layui-layout-admin">
		<%@ include file="lly-header.jsp"%>
		<div class="layui-side layui-bg-black">
			<div class="layui-side-scroll">
				<!-- 左侧导航区域（可配合layui已有的垂直导航） -->
				<%@ include file="user-card.jsp"%>

				<ul class="layui-nav layui-nav-tree" lay-filter="test">
					<li class="layui-nav-item layui-nav-itemed"><a class=""
						href="javascript:;">招聘查询</a>
						<dl class="layui-nav-child">
							<dd>
								<a href="#" class="site-demo-active" data-url="XXCX"
									data-id="XXCX" data-type="tabXXCX">招聘信息查询</a>
							</dd>
						</dl></li>
					<li class="layui-nav-item layui-nav-itemed"><a
						href="javascript:;">我的招聘</a>
						<dl class="layui-nav-child">
							<dd>
								<a href="#" class="site-demo-active" data-url="ZPJD"
									data-id="ZPJD" data-type="tabZPJD">我的招聘进度</a>
							</dd>
						</dl></li>
				</ul>
			</div>
		</div>

		<div class="layui-body">
			<!-- 内容主体区域 -->
			<div class="layui-tab layui-tab-brief" lay-filter="demo">
				<ul class="layui-tab-title">
					<li class="layui-this" lay-id="XXCX">招聘信息查询 <!--lay-allowclose="true"(div) <i class="layui-icon layui-unselect layui-tab-close">ဆ</i> -->
					</li>
				</ul>
				<div class="layui-tab-content">
					<!-- 招聘信息查询  -->
					<div class="layui-tab-item layui-show" id="item-XXCX">
						<div>
							<form>
								<div class="form-row">
									<div class="form-group col-md">
										<select class="form-control">
											<option selected disabled style="display: none;" value="">请选择职位类别</option>
											<option>1</option>
											<option>2</option>
											<option>3</option>
											<option>4</option>
											<option>5</option>
										</select>
									</div>
									<div class="form-group col-md">
										<select class="form-control">
											<option selected disabled style="display: none;" value="">请选择行业类别</option>
											<option>1</option>
											<option>2</option>
											<option>3</option>
											<option>4</option>
											<option>5</option>
										</select>
									</div>
									<div class="form-group col-md">
										<select class="form-control">
											<option selected disabled style="display: none;" value="">理想薪资</option>
											<option>1</option>
											<option>2</option>
											<option>3</option>
											<option>4</option>
											<option>5</option>
										</select>
									</div>
									<div class="form-group col-md">
										<select class="form-control">
											<option selected disabled style="display: none;" value="">学历要求</option>
											<option>1</option>
											<option>2</option>
											<option>3</option>
											<option>4</option>
											<option>5</option>
										</select>
									</div>
									<div class="form-group col-md">
										<select class="form-control">
											<option selected disabled style="display: none;" value="">工作经历要求</option>
											<option>1</option>
											<option>2</option>
											<option>3</option>
											<option>4</option>
											<option>5</option>
										</select>
									</div>
									<div class="form-group col-md-3">
										<input type="text" class="form-control"
											placeholder="请输入职位名、公司名等关键字">
									</div>
									<a href="#" class="layui-btn layui-btn-normal" type="submit">
										<i class="layui-icon layui-icon-search"
										style="font-size: 28px; color: #f0f0f0;"></i> <span
										style="line-height: 30px; font-size: 18px;">找工作</span>
									</a>
								</div>
							</form>
							<hr>
						</div>
					<%
						Dao dao = new Dao();
						List<CompanySeekBean> list = dao.getListCompanySeekInfo();
						for(CompanySeekBean ab:list)
						{
					%>
					<div class="layui-row"
						style="margin: 10px; padding: 5px; background-color: #F2F2F2;">
						<div class="layui-card">
							<div class="layui-card-header">
								<i class="iconfont icon-dingwei"
									style="font-size: 20px; color: #009688"></i> <strong><%=ab.getCompany_location() %></strong> |
								<%=ab.getSeek_position() %>高薪 <a href="#"> <span class=""
									style="padding: 6px 3px 24px 10px; line-height: 20px;"> <i
										class="iconfont icon-weixin"
										style="font-size: 15px; color: #00b48a;"></i> <span
										style="font-size: 12px; line-height: 20px; color: #a6a6a6;">简历投递</span>
								</span>
								</a>
							</div>
							<div class="layui-card-body">
								<table class="table table-borderless" style="margin: 0px;">
									<tbody>
									
										<tr>
											<td width="40%"><strong style="color: #f85659; font-size: 22px;">￥
													<%=ab.getSalary() %> / 月</strong> <br> <span
												class="layui-badge layui-bg-orange">免费午餐</span> <span
												class="layui-badge layui-bg-orange">公费旅游</span> <span
												class="layui-badge layui-bg-orange"><%=ab.getAdvantage() %></span> <br></td>
											<td width="30%"><i class="iconfont icon-renzheng"
												style="font-size: 22px; color: #1E9FFF;"></i> <%=ab.getCompany_name() %> <i
												class="iconfont icon-HNTE-fill"
												style="font-size: 22px; color: #ff552e;"></i> <i
												class="iconfont icon-renzhengqiye"
												style="font-size: 22px; color: #1E9FFF;"></i> <br> <span
												style="line-height: 20px; color: #c2c2c2;"><%=ab.getSeek_position() %> | <%=ab.getWork_experience() %> | 不限 </span></td>
											<td></td>
											<td>
												<button type="button"
													class="layui-btn layui-btn-sm layui-btn-danger"
													style="margin: 0px;">
													<i class="layui-icon layui-icon-templeate-1"></i>申请
												</button> <span style="margin-left: 10px; color: #c2c2c2;"><%=ab.getDeliver_time() %></span>
											</td>
										</tr>
										
									</tbody>
								</table>
							</div>
						</div>
					</div>
					<%} %>

					</div>

					<!-- 我的招聘进度 -->
					<div class="layui-tab-item " id="item-ZPJD" style="display: none;">
						<div>
							<form style="float: right; margin-right: 15px;">
								<div class="form-row">
									<div class="form-group col-md">
										<input type="date" name="birth" class="form-control"
											value="2000-01-01">
									</div>
									<div class="form-group">
										<i class="layui-icon layui-icon-right"
											style="font-size: 30px;"></i>
									</div>
									<div class="form-group col-md">
										<input type="date" name="birth" class="form-control"
											value="2000-01-01">
									</div>
									<a href="#" type="submit"><i
										class="layui-icon layui-icon-search"
										style="font-size: 30px; color: #1E9FFF;"></i></a>
								</div>
							</form>
							<sapn style="float: right;line-height:45px;">请选择时间段：</sapn>
							<hr>
						</div>
						<div class="layui-row"
							style="margin: 10px; padding: 5px; background-color: #F2F2F2;">
							<!-- 插入数据 -->
							<%
							List<UserSeekBean> list2=dao.getListOwnSeekStepInfo();
							int i=1;
							for(UserSeekBean ab:list2)
							{
								if(i%2!=0)
								{
									
							
							%>
							<div class="layui-col-md5">
								<div class="layui-row grid-demo">
									<div class="layui-col-md8">
										<div class="grid-demo grid-demo-bg3">
											<div class="layui-card">
												<div class="layui-card-header" style="margin-bottom:4px;"> 
													<i class="iconfont icon-dingwei" style="font-size: 20px; color:#009688"></i>
													<strong><%=ab.getCompany_location() %></strong> | 
													<i class="iconfont icon-shoujizhengli" style="font-size: 20px; color:#55c5f1;"></i>
													招<%=ab.getSeek_position() %>一名 
													</div>
												<div class="layui-card-body" style="height: 45px;">
													<strong style="color:#f85659;font-size:22px;">￥<%=ab.getSalary() %> / 月</strong>
												</div>
												<div class="layui-card-body">
													<span class="layui-badge layui-bg-orange">免费午餐</span>
													<span class="layui-badge layui-bg-orange">公费旅游</span>
													<span class="layui-badge layui-bg-orange"><%=ab.getAdvantage() %></span>
												</div>
												<div class="layui-card-body">
												<i class="iconfont icon-renzheng" style="font-size: 22px; color: #1E9FFF;"></i>
												<%=ab.getCompany_name() %>
												<i class="iconfont icon-HNTE-fill" style="font-size: 22px; color: #ff552e;"></i>
												<i class="iconfont icon-renzhengqiye" style="font-size: 22px; color: #1E9FFF;"></i>
												</div>
												<div class="layui-card-body" style="line-height:20px;"><%=ab.getSeek_position() %> | 不限 | 不限 </div>
												<div class="layui-card-body">
												<i class="iconfont icon-weixin"
														style="font-size: 15px;color:#00b48a; margin-left: 45%;margin-right: 5px;"></i><span style="font-size: 12px;color:#a6a6a6;">微信扫一扫快速查看招聘进度</span>
												</div>
												
											</div>
										</div>
									</div>	
	
									<div class="layui-col-md4">
										<div class="grid-demo grid-demo-bg3">
											<div class="layui-card" style="background-color: #F2F2F2;">
												<div class="layui-card-body" style="margin-top: 28px;">
													<ul class="layui-timeline">
														<li class="layui-timeline-item"><i
															class="layui-icon layui-timeline-axis">&#x1005;</i>
															<div class="layui-timeline-content layui-text">
																<h3 class="layui-timeline-title">初次面试</h3>
															</div></li>
														<li class="layui-timeline-item"><i
															class="layui-icon layui-timeline-axis">&#x1005;</i>
															<div class="layui-timeline-content layui-text">
																<h3 class="layui-timeline-title">二轮面试</h3>
															</div></li>
														<li class="layui-timeline-item"><i
															class="layui-icon layui-timeline-axis">&#x1005;</i>
															<div class="layui-timeline-content layui-text">
																<h3 class="layui-timeline-title">最终面试</h3>
								
															</div></li>
														<li class="layui-timeline-item"><i
															class="layui-icon layui-timeline-axis"></i>
															<div class="layui-timeline-content layui-text">
																<div class="layui-timeline-title">结果发布</div>
															</div></li>
													</ul>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							   <%} %>
								<%
								if(i%2==0)
								{
								%>
							<div class="layui-col-md5 layui-col-md-offset2">

								<div class="layui-row grid-demo">

								<div class="layui-col-md8">
									<div class="grid-demo grid-demo-bg3">
										<div class="layui-card">
											<div class="layui-card-header" style="margin-bottom:4px;"> 
												<i class="iconfont icon-dingwei" style="font-size: 20px; color:#009688"></i>
												<strong><%=ab.getCompany_location() %></strong> | 
												<i class="iconfont icon-shoujizhengli" style="font-size: 20px; color:#55c5f1;"></i>
												招<%=ab.getSeek_position() %>一名 
												</div>
											<div class="layui-card-body" style="height: 45px;">
												<strong style="color:#f85659;font-size:22px;">￥<%=ab.getSalary() %> / 月</strong>
											</div>
											<div class="layui-card-body">
												<span class="layui-badge layui-bg-orange">免费午餐</span>
												<span class="layui-badge layui-bg-orange">公费旅游</span>
												<span class="layui-badge layui-bg-orange"><%=ab.getAdvantage() %></span>
											</div>
											<div class="layui-card-body">
											<i class="iconfont icon-renzheng" style="font-size: 22px; color: #1E9FFF;"></i>
											<%=ab.getCompany_name() %>
											<i class="iconfont icon-HNTE-fill" style="font-size: 22px; color: #ff552e;"></i>
											<i class="iconfont icon-renzhengqiye" style="font-size: 22px; color: #1E9FFF;"></i>
											</div>
											<div class="layui-card-body" style="line-height:20px;"><%=ab.getSeek_position() %> | 不限 | 不限 </div>
											<div class="layui-card-body">
											<i class="iconfont icon-weixin"
													style="font-size: 15px;color:#00b48a; margin-left: 45%;margin-right: 5px;"></i><span style="font-size: 12px;color:#a6a6a6;">微信扫一扫快速查看招聘进度</span>
											</div>
											
										</div>
									</div>
								</div>	

									<div class="layui-col-md4">
										<div class="grid-demo grid-demo-bg3">
											<div class="layui-card" style="background-color: #F2F2F2;">
												<div class="layui-card-body" style="margin-top: 28px;">
													<ul class="layui-timeline">
														<li class="layui-timeline-item"><i
															class="layui-icon layui-timeline-axis">&#x1005;</i>
															<div class="layui-timeline-content layui-text">
																<h3 class="layui-timeline-title">初次面试</h3>
															</div></li>
														<li class="layui-timeline-item"><i
															class="layui-icon layui-timeline-axis">&#x1005;</i>
															<div class="layui-timeline-content layui-text">
																<h3 class="layui-timeline-title">二轮面试</h3>
															</div></li>
														<li class="layui-timeline-item"><i
															class="layui-icon layui-timeline-axis">&#x1005;</i>
															<div class="layui-timeline-content layui-text">
																<h3 class="layui-timeline-title">最终面试</h3>
								
															</div></li>
														<li class="layui-timeline-item"><i
															class="layui-icon layui-timeline-axis"></i>
															<div class="layui-timeline-content layui-text">
																<div class="layui-timeline-title">结果发布</div>
															</div></li>
													</ul>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<%}i+=1; %>
							<%} %>
							<!-- 以上插入数据 -->
						</div>
						
						<!-- 注释
						<div class="layui-row"
							style="margin: 10px; padding: 5px; background-color: #F2F2F2;">
							<div class="layui-col-md5">
								<%@ include file="job-card.jsp"%>
							</div>

							<div class="layui-col-md5 layui-col-md-offset2">

								<%@ include file="job-card.jsp"%>
							</div>

						</div>
						 -->
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
				//触发事件content : '内容' + (Math.random() * 1000 | 0),
				//$("#item-ZPJD").style.display="none";
				//$("#item-XXCX").style.display="";
				var active = {
					tabXXCX : function() {
						element.tabChange('demo', 'XXCX');
					},
					tabZPJD : function() {
						if ($("#item-ZPJD")[0].style.display == "") {
						} else {
							element.tabAdd('demo', {
								title : '我的招聘进度',
								id : 'ZPJD'
							});
							$("#item-ZPJD")[0].style.display = ""
						}
						element.tabChange('demo', 'ZPJD');
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
