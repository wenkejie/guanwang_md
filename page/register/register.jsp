<%-- JSP标签，每个JSP必须引入 --%>
<%@ page contentType="text/html;charset=utf-8" %>
<%@ taglib uri="/fis" prefix="fis"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%-- 继承layout --%>
<fis:extends name="/page/layout/layout.jsp">
	<%-- 重写linkStyle块--%>
	<fis:block name="linkStyles">
	<%-- css交给fis管理--%>
	<fis:require id="./register.less"></fis:require>
	</fis:block>

	<fis:block name="header" >
	<fis:widget name="widget/header/header.jsp"  type="register" />
	</fis:block>

	<fis:block name="content" >
	<div class="rg-body"  >
		<div class="rg-body-cnt"  >
			<fis:widget name="widget/register-form/register-form.jsp"/>
		</div>
	</div>
	</fis:block>

	<fis:block name="footer" >
	<fis:widget name="widget/footer/footer.jsp"  type="register"/>
	</fis:block>

</fis:extends>