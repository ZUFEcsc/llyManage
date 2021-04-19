<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ include file="bootstrap.jsp"%>

<style>
html,
body {
  height: 100%;
}

body {
  display: -ms-flexbox;
  display: flex;
  -ms-flex-align: center;
  align-items: center;
  padding-top: 40px;
  padding-bottom: 40px;
  background-color: #f5f5f5;
}

.form-signin {
  width: 100%;
  max-width: 420px;
  padding: 15px;
  margin: auto;
}

.form-label-group {
  position: relative;
  margin-bottom: 1rem;
}

.form-label-group > input,
.form-label-group > label {
  height: 3.125rem;
  padding: .75rem;
}

.form-label-group > label {
  position: absolute;
  top: 0;
  left: 0;
  display: block;
  width: 100%;
  margin-bottom: 0; /* Override default `<label>` margin */
  line-height: 1.5;
  color: #495057;
  pointer-events: none;
  cursor: text; /* Match the input under the label */
  border: 1px solid transparent;
  border-radius: .25rem;
  transition: all .1s ease-in-out;
}

.form-label-group input::-webkit-input-placeholder {
  color: transparent;
}

.form-label-group input:-ms-input-placeholder {
  color: transparent;
}

.form-label-group input::-ms-input-placeholder {
  color: transparent;
}

.form-label-group input::-moz-placeholder {
  color: transparent;
}

.form-label-group input::placeholder {
  color: transparent;
}

.form-label-group input:not(:placeholder-shown) {
  padding-top: 1.25rem;
  padding-bottom: .25rem;
}

.form-label-group input:not(:placeholder-shown) ~ label {
  padding-top: .25rem;
  padding-bottom: .25rem;
  font-size: 12px;
  color: #777;
}

/* Fallback for Edge
-------------------------------------------------- */
@supports (-ms-ime-align: auto) {
  .form-label-group > label {
    display: none;
  }
  .form-label-group input::-ms-input-placeholder {
    color: #777;
  }
}

/* Fallback for IE
-------------------------------------------------- */
@media all and (-ms-high-contrast: none), (-ms-high-contrast: active) {
  .form-label-group > label {
    display: none;
  }
  .form-label-group input:-ms-input-placeholder {
    color: #777;
  }
}
.bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
</style>

<title>企业成员登录</title>
</head>
<body>
<%
		String msg = (String) request.getAttribute("msg");
	%>
	<%if(msg!=null) {%>
<%=msg %>
<%} %>
	<form class="form-signin" action="CompanyLoginServlet" method="post">
		<div class="text-center mb-4">
			<img class="mb-4" src="/llYou/img/you.png"
				alt="" width="72" height="72">
			<h1 class="h3 mb-3 font-weight-normal">企业成员登录</h1>
		</div>
  		<div class="">
			<i class="iconfont icon-lunkuohua2_yonghu" style="font-size:24px;"></i>
			<input style="display:inline-block;width:90%;margin-top:-16px;" type="text" class="form-control" name="username" placeholder="用户登录" required
				autofocus>
		</div>

		<div class="">
			<i class="iconfont icon-mima" style="font-size:24px;"></i>
			<input style="display:inline-block;width:90%;margin-top:-9px;" type="password" class="form-control" name="password" placeholder="密码" required>			
		</div>
		
		<div class="form-label-group">
			<i class="iconfont icon-guanliyuan" style="font-size:24px;"></i>
			<select style="display:inline-block;width:90%;margin-top:0px;" class="form-control">
			  <option selected="selected" disabled="disabled" style='display: none' value='用户类型'>用户类型</option> 
			  <option>HR</option>
			  <option>部门主管</option>
			  <option>项目经理</option>
			  <option>办公室主任</option>
			</select>
		</div>
		
		<div style="margin-top:-17px;">
			<i class="iconfont icon-ecurityCode" style="font-size:24px;"></i>
			<input type="text" class="form-control" style="display:inline-block;width:70%" name="code" placeholder="验证码" required>
			<img alt="验证码" src="ResImgServlet" style="display:inline-block;">
		</div>
		
	
		<p style="color: red; font-size: small; text-align: right;">${info}</p>

		<p style="float: right;">
			没有账号？<span><a href="qy	Reg.jsp">注册</a></span>
		</p>
		<div class="checkbox mb-3">
			<label style="float: left;"> <input type="checkbox"
				value="remember-me"> <a href="#">忘记密码？</a>
			</label>
		</div>

		<button class="btn btn-lg btn-block btn-primary" type="submit">立即登录</button>

		<p class="mt-5 mb-3 text-muted text-center">
			© 溜溜游团队出品
		</p>

	</form>

</body>
</html>