<%-- JSP标签，每个JSP必须引入 --%>
<%@ page contentType="text/html;charset=utf-8" %>
<%@ taglib uri="/fis" prefix="fis"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${rc.contextPath}" />

<div class="rg-form rg-form-center">
	<input type="hidden" name="step" value="2" >
	<input type="hidden" name="findway" value="${findway}" >
	<c:if test="${findway == 'email'}">
	<div class="rg-form-line">
		<div class="rg-input rg-input-before"  ms-class-rg-input-error="error.email">
			<div class="rg-input-addon"><i class="iconfont">&#xe601;</i></div>
			<input class="rg-input-enter" type="text" name="email" 
				ms-duplex-required-email="account.email" placeholder="请输入邮箱"/>
		</div>
		<div class="rg-tips rg-tips-error" ms-visible="error.email">
			<span class="rg-tips-icon"></span>
			<p class="rg-tips-info">请输入正确的邮箱</p>
		</div>
	</div>
	</c:if>

	<c:if test="${findway == 'mobile'}">
	<div class="rg-form-line">
		<div class="rg-input rg-input-before"  ms-class-rg-input-error="error.mobile">
			<div class="rg-input-addon"><i class="iconfont">&#xe601;</i></div>
			<input class="rg-input-enter" type="text" name="mobile" 
				ms-duplex-required-phone="account.mobile" placeholder="请输入手机号"/>
		</div>
		<div class="rg-tips rg-tips-error" ms-visible="error.mobile">
			<span class="rg-tips-icon"></span>
			<p class="rg-tips-info">请输入正确的手机号</p>
		</div>
	</div>
	<!--
 	<div class="rg-form-line">
		<div class="rg-input rg-input-before rg-input-check">
			<div class="rg-input-addon"><i class="iconfont">&#xe600;</i></div>
			<input class="rg-input-enter" type="text" ms-duplex-required="smscode" placeholder="请输入验证码"/>
		</div>
		<button class="rg-btn rg-btn-check j-open"  ms-click="sendSms()" >获取验证码</button>
	</div>
	 -->
	</c:if>

	<div class="rg-form-line">
		<button class="rg-btn j-open" type="submit">确定</button>
	</div>
</div>