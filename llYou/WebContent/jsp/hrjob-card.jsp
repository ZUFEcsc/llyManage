<%@ page language="java" import="java.util.*,dao.*,bean.*" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
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
						<td><strong style="color: #f85659; font-size: 22px;">￥
								<%=ab.getSalary() %> / 月</strong> <br> <span
							class="layui-badge layui-bg-orange">包吃</span> <span
							class="layui-badge layui-bg-orange">包住</span> <span
							class="layui-badge layui-bg-orange"><%=ab.getAdvantage() %></span> <br></td>
						<td><i class="iconfont icon-renzheng"
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