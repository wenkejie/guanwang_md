<%-- JSP标签，每个JSP必须引入 --%>
<%@ page contentType="text/html;charset=utf-8" %>
<%@ taglib uri="/fis" prefix="fis"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${rc.contextPath}" />
 
<div class="rg-form approve-form">
	<div class="approve-contaner">
		<div class="approve-img"></div>
		<div class="approve-content">
			<p class="approve-hint">恭喜，密码修改成功！</p>
			<p>密码已成功发送到你的手机或邮箱，请重新 <a href="${ctx}/login">登录</a></p>
		</div>
	</div>
	
</div>
