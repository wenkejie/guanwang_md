<%-- JSP标签，每个JSP必须引入 --%>
<%@ page contentType="text/html;charset=utf-8" %>
<%@ taglib uri="/fis" prefix="fis"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<fis:extends name="./form.jsp">

<%-- 注册信息--%>
<fis:block name="rg-form">
	<input type="hidden" name="step" value="1"/>
	<div class="rg-form rg-form-center"  >
	<fis:widget name="widget/error-tip/error-tip.jsp"/>
	<div class="rg-form-line">
		<div class="rg-input rg-input-before " ms-class-rg-input-error="error.username">
			<div class="rg-input-addon"><i class="iconfont">&#xe601;</i></div>
			<input class="rg-input-enter" type="text" placeholder="请输入您的用户名" 
			   name="username" ms-duplex-required-alpha_numeric-minlength-maxlength="registry.username"  
			   maxlength="20" minlength="6"  />
		</div>
		<div class="rg-tips rg-tips-error" ms-visible="error.username">
			<span class="rg-tips-icon"></span>
			<p class="rg-tips-info">用户名是由6-20位的数字或字母组成</p>
		</div>
	</div>
	<div class="rg-form-line">
		<div class="rg-input rg-input-before" ms-class-rg-input-error="error.passwd">
			<div class="rg-input-addon"><i class="iconfont">&#xe602;</i></div>
			<input id="passwd" class="rg-input-enter" type="password" placeholder="请输入密码"
			name="passwd" ms-duplex-required-pattern-minlength-maxlength="registry.passwd" 
			maxlength="20" minlength="6"  pattern="(?![a-zA-Z]+$)(?!\d+$)(?![!@#$%^&*]+$)[a-zA-Z\d_]+" />
			<input  type="hidden" name="password" ms-duplex="registry.password" />
		</div>
		<div class="rg-tips rg-tips-error" ms-visible="error.passwd">
			<span class="rg-tips-icon"></span>
			<p class="rg-tips-info">密码是由6-20位的数字、字母、下划线，两种或两种以上的类型组成</p>
		</div>
	</div>
	<div class="rg-form-line">
		<div class="rg-input rg-input-before" ms-class-rg-input-error="error.repeatPasswd">
			<div class="rg-input-addon"><i class="iconfont">&#xe602;</i></div>
			<input  class="rg-input-enter" type="password" name="repeatPasswd" placeholder="请再次输入密码"
			ms-duplex-repeat-required-minlength-maxlength="registry.repeatPasswd" 
			data-duplex-repeat="passwd"  maxlength="20" minlength="6"/>
		</div>
		<div class="rg-tips rg-tips-error" ms-visible="error.repeatPasswd">
			<span class="rg-tips-icon"></span>
			<p class="rg-tips-info">输入密码不一致</p>
		</div>
	</div>
	<div class="rg-form-line">
		<div class="rg-input rg-input-before rg-input-check" ms-class-rg-input-error="error.verCode">
			<div class="rg-input-addon"><i class="iconfont">&#xe600;</i></div>
			<input class="rg-input-enter" type="text" placeholder="请输入验证码"
			name="verCode" ms-duplex-required="registry.verCode" />
		</div>
		<div class="rg-tips rg-tips-error" ms-visible="error.verCode">
			<span class="rg-tips-icon"></span>
			<p class="rg-tips-info">请输入验证码</p>
		</div>
		<fis:widget name="widget/vercode/vercode.jsp" wrapClass="rg-check-code"/>
		<div class="rg-tips rg-tips-error none" >
			<span class="rg-tips-icon"></span>
			<p class="rg-tips-info">手机号码已被注册，请更换，或<a href="${ctx}/login">立即登录</a></p>
		</div>
	</div>
	
	<%-- 提交按钮--%>
	<div class="rg-form-line">
		<button class="rg-btn j-open" type="submit">下一步</button>
	</div>

	</div>
</fis:block>

</fis:extends>