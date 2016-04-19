<%-- JSP标签，每个JSP必须引入 --%>
<%@ page contentType="text/html;charset=utf-8" %>
<%@ taglib uri="/fis" prefix="fis"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${rc.contextPath}" />

<div class="rg-form rg-form-center">
	<input type="hidden"  name="step" value="1" >
	<div class="rg-form-line">
		<div class="rg-input rg-input-before"  ms-class-rg-input-error="error.username">
			<div class="rg-input-addon"><i class="iconfont">&#xe601;</i></div>
			<input class="rg-input-enter" type="text"  name= "username" ms-duplex-required="account.username" 
				 placeholder="请输入账户名"/>
		</div>
		<div class="rg-tips rg-tips-error" ms-visible="error.username">
			<span class="rg-tips-icon"></span>
			<p class="rg-tips-info">用户名不能为空</p>
		</div>
	</div>
	<div class="rg-form-line">
		<div class="rg-input rg-input-before rg-input-check"  ms-class-rg-input-error="error.vercode">
			<div class="rg-input-addon"><i class="iconfont">&#xe602;</i></div>
			<input class="rg-input-enter" type="text" name= "vercode"  ms-duplex-required="account.vercode" 
				placeholder="请输入验证码"/>
		</div>
		<fis:widget  name="widget/vercode/vercode.jsp" wrapClass="rg-check-code" />
		<div class="rg-tips rg-tips-error" ms-visible="error.vercode">
			<span class="rg-tips-icon"></span>
			<p class="rg-tips-info">验证码不能为空</p>
		</div>
	</div>
	<div>
		 <input type="radio" name="findway" ms-duplex-string-contains="account.findway" 
		 	value="email"  data-duplex-contains="email,mobile">通过邮箱找回</span>
		 <input type="radio" name="findway" ms-duplex-string="account.findway"  value="mobile">通过手机找回</span>

		<div class="rg-tips rg-tips-error" ms-visible="error.findway">
			<span class="rg-tips-icon"></span>
			<p class="rg-tips-info">请选择找回方式</p>
		</div>
	</div>
	<div class="rg-form-line">
		<button class="rg-btn j-open"  type="submit">下一步</button>
	</div>
</div>