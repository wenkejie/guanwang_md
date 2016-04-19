<%-- JSP标签，每个JSP必须引入 --%>
<%@ page contentType="text/html;charset=utf-8" %>
<%@ taglib uri="/fis" prefix="fis"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%-- 继承layout  --%>
<fis:extends name="page/layout/layout.jsp">

	<%-- 重写linkStyle块--%>
	<fis:block name="linkStyles">
	<%-- css交给fis管理--%>
	<fis:require id="page/register/register.less"></fis:require>
	</fis:block>

	<fis:block name="header" >
	<fis:widget name="widget/header/header.jsp" type="login"/>
	</fis:block>

	<fis:block name="content" >
	<fis:widget name="widget/login-form/login-form.jsp" rsaModulus="${modulus}"  rsaPublicExponent="${publicExponent}" />
	</fis:block>

	<fis:block name="footer" >
	<fis:widget name="widget/footer/footer.jsp" type="login"/>
	</fis:block>

</fis:extends>