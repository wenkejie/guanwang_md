<%-- JSP标签，每个JSP必须引入 --%>
<%@ page contentType="text/html;charset=utf-8" %>
<%@ taglib uri="/fis" prefix="fis"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%-- 后台验证错误信息--%>
<c:if test="${not empty message}">
<div class="rg-tips rg-tips-top rg-tips-error">
	<span class="rg-tips-icon"></span>
	<p class="rg-tips-info">${message}</p>
</div>
</c:if>