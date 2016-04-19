
<%-- JSP标签，每个JSP必须引入 --%>
<%@ page contentType="text/html;charset=utf-8" %>
<%@ taglib uri="/fis" prefix="fis"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${rc.contextPath}" />

<div class="rg-body">
   	<div class="rg-body-cnt" ms-controller="LoginCtrl">
	              <form  ms-widget="validation"  action="${ctx}/login" method="post" >

	              <input type="hidden" name="modulus" id="modulus" value="${modulus }"/>
		<input type="hidden" name="publicExponent" id="publicExponent" value="${publicExponent}"/>
		<input type="hidden" name="password" id="password" ms-duplex="user.password">
		<input type="hidden" name="action" id="action" value="log"/>

		<div class="rg-form rg-form-center" >
			<fis:widget name="widget/error-tip/error-tip.jsp"/>
			<div class="rg-form-line">
				<div class="rg-input rg-input-before"  ms-class-rg-input-error="error.userName">
					<div class="rg-input-addon"><i class="iconfont">&#xe601;</i></div>
					<input class="rg-input-enter" type="text" placeholder="请输入您的账号"  name="userName" 
					  ms-duplex-required-maxlength="user.userName" maxlength="20" />
				</div>
				<div class="rg-tips rg-tips-error" ms-visible="error.userName">
					<span class="rg-tips-icon"></span>
					<p class="rg-tips-info">请输入您的账号</p>
				</div>
			</div>

			<div class="rg-form-line">
				<div class="rg-input rg-input-before rg-input-before" ms-class-rg-input-error="error.passwd">
					<div class="rg-input-addon"><i class="iconfont">&#xe602;</i></div>
					<input class="rg-input-enter" type="password" placeholder="请输入密码"  name="passwd" 
					  ms-duplex-required-maxlength="user.passwd"  maxlength="20"  />
				</div>
				<div class="rg-tips rg-tips-error" ms-visible="error.passwd">
					<span class="rg-tips-icon"></span>
					<p class="rg-tips-info">请输入密码</p>
				</div>
			</div>

			<div class="rg-form-line">
				<div class="rg-input rg-input-before rg-input-check" ms-class-rg-input-error="error.verCode">
					<div class="rg-input-addon"><i class="iconfont">&#xe600;</i></div>
					<input class="rg-input-enter" type="text" placeholder="请输入验证码" 
						name="verCode" ms-duplex-required-maxlength="user.verCode" maxlength="8"/>
				</div>
				<fis:widget name="widget/vercode/vercode.jsp" wrapClass="rg-check-code"/>
				<div class="rg-tips rg-tips-error" ms-visible="error.verCode">
					<span class="rg-tips-icon"></span>
					<p class="rg-tips-info">请输入验证码</p>
				</div>
			</div>

			<div class="password-contaner">
				<a href="${ctx}/password/forget" class="password-link">忘记密码?</a>
			</div>

			<div class="rg-form-line">
				<button class="rg-btn j-open" type="submit" >登陆</button>
			</div>
						
		</div>
		</form>
	</div>
</div>

<fis:script>
	require(["./login-form"],function(form){
	     var modulus = "${rsaModulus}";
	     var exponent = "${rsaPublicExponent}";
	     form.init(modulus, exponent);
	     avalon.scan();
	})
</fis:script>