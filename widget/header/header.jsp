<%-- JSP标签，每个JSP必须引入 --%>
<%@ page contentType="text/html;charset=utf-8" %>
<%@ taglib uri="/fis" prefix="fis"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:set var="ctx" value="${rc.contextPath}" />

<c:if test="${empty type}">
<div class="header">
	<div class="header-container">
		<h1 class="main-logo">
			<a href="${ctx}/"></a>
		</h1>
		<ul class="main-nav">
			<li class="main-nav-cell">
				<a class="main-nav-link" href="${ctx}/">首页</a>
			</li>
			<li class="main-nav-cell">
				<a class="main-nav-link" href="${ctx}/product">产品中心</a>
			</li>
			<li class="main-nav-cell">
				<a class="main-nav-link" href="${ctx}/community">大掌柜社区</a>
			</li>
			<li class="main-nav-cell">
				<a class="main-nav-link" href="${ctx}/story">关于大掌柜</a>
			</li>
		</ul>

		<div class="login-bar">
			<c:if test="${empty member}">
			<a class="login-bar-cell login-link" href="${ctx}/login">登录</a>
			<a class="login-bar-cell register-link" href="${ctx}/register">注册</a>
			</c:if>

			<c:if test="${not empty member}">
			<span>你好，${empty member ? "游客": member.username}</span>
			<a class="login-bar-cell login-link" href="${ctx}/logout">退出</a>
			</c:if>
		</div>

	</div>
</div>
</c:if>

<c:if test="${type == 'register' }">
<div class="rg-header">
	<div class="rg-header-content">
		<h1 class="rg-logo">
			<a href="${ctx}/"></a>
		</h1>
		<span class="rg-pageer-info">新用户注册</span>
		<div class="rg-top-link">
			<a href="${ctx}/" type="link">cargoGM首页</a>
			<span class="rg-top-hry">|</span>
			<a href=" ${ctx}/login" type="link">登陆</a>
		</div>
	</div>
</div>
</c:if>

<c:if test="${type == 'login' }">
<div class="rg-header">
	<div class="rg-header-content">
		<h1 class="rg-logo">
			<a href="${ctx}/"></a>
		</h1>
		<span class="rg-pageer-info">欢迎登陆</span>
		<div class="rg-top-link">
			<a href="${ctx}/" type="link">cargoGM首页</a>
			<span class="rg-top-hry">|</span>
			<a href=" ${ctx}/register" type="link">注册</a>
		</div>
	</div>
</div>
</c:if>

<c:if test="${type == 'password' }">
<div class="rg-header">
	<div class="rg-header-content">
		<h1 class="rg-logo">
			<a href="${ctx}/"></a>
		</h1>
		<span class="rg-pageer-info">忘记密码</span>
		<div class="rg-top-link">
			<a href="${ctx}/" type="link">cargoGM首页</a>
			<span class="rg-top-hry">|</span>
			<a href=" ${ctx}/login" type="link">登陆</a>
		</div>
	</div>
</div>
</c:if>

