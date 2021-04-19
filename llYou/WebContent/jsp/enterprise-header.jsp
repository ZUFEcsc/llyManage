<%@ page language="java" contentType="text/html; charset=utf-8" import="java.util.*,dao.*,bean.*"
	pageEncoding="utf-8"%>
	
<%
Dao daod=new Dao();
String username=null;
List<WorkerLoginBean> listl=daod.getListLogin();
for(WorkerLoginBean ab:listl)
	username=ab.getUsername();
%>
<div class="layui-header">
	<div class="layui-logo">
		<img src="../img/you2.png"
			style="height: 40px; opacity: 0.9; margin-left: 10px;">
	</div>
	<!-- 头部区域（可配合layui已有的水平导航） -->

	<ul class="layui-nav layui-layout-left">
		<li class="layui-nav-item"><a href="index.jsp">首页</a></li>
		<li class="layui-nav-item"><a href="">企业画像</a></li>
		<li class="layui-nav-item"><a href="javascript:;">其它系统</a>
			<dl class="layui-nav-child">
				<dd>
					<a href="">用户子系统</a>
				</dd>
				<dd>
					<a href="">系统管理员子系统</a>
				</dd>
				<dd>
					<a href="">企业成员子系统</a>
				</dd>
			</dl>
		</li>
	</ul>
	<ul class="layui-nav layui-layout-right">
		<li class="layui-nav-item"><a href="javascript:;">
		<%if(username.equals("王蕾")) {%> <img
				src="../img/girl2.png" class="layui-nav-img"><%} %> 
				<%if(username.equals("王畅畅")||username.equals("王汪")) {%> <img
				src="../img/boy.png" class="layui-nav-img"><%} %> 
				<%if(username.equals("王颖")) {%> <img
				src="../img/girl.png" class="layui-nav-img"><%} %> 
				<%if(username.equals("张雨佳")) {%> <img
				src="../img/girl.png" class="layui-nav-img"><%} %> 
				<%=username %>
		</a>
			<dl class="layui-nav-child">
				<dd>
					<a href="userCenter.jsp">个人中心</a>
				</dd>
				<dd>
					<a href="">我的消息</a>
				</dd>
			</dl></li>
		<li class="layui-nav-item"><a href="ExitServlet?x=2">退出登录</a></li>
	</ul>
</div>