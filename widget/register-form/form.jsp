<%-- JSP标签，每个JSP必须引入 --%>
<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="java.util.*" %><%@ taglib uri="/fis" prefix="fis"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<form  ms-controller="RegisterFormCtrl" ms-widget="validation"   action="${rc.contextPath}/register" method="post" >

	<%-- 注册信息--%>
	<fis:block name="rg-form">

	</fis:block>

</form>

