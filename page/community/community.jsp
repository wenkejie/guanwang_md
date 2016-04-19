<%-- JSP标签，每个JSP必须引入 --%>
<%@ page contentType="text/html;charset=utf-8" %>
<%@ taglib uri="/fis" prefix="fis"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%-- 继承layout  --%>
<fis:extends name="page/layout/layout.jsp">

	<%-- 重写linkStyle块--%>
	<fis:block name="selfStyles">
	<%-- css交给fis管理--%>
	<fis:require id="./community.less"></fis:require>
	</fis:block>

	<fis:block name="content" >
	<div class="page">
		<img src="static/img/story-bg.png" class="product-bg">	
		<div class="page-container">
			<div class="page-s-container">
				<a href="javascript:void(0)" class="page-headline">发布问题/Published issues</a>
				<div class="gui-panel community-panel">
					<div class="community-form-line">
						<label>标题：</label>
						<input class="community-title-input" type="text" placeholder=""/>
					</div>
					<div class="community-form-line">
						<label>模块：</label>
						<div class="select-box">
							<div class="select-btn" data-value="">
								<input placeholder="">					
								<button type="button" class="select-arrow"> <i class="iconfont">&#xe608;</i>
								</button>
							</div>
							<ul class="select-option">
								<li>模块1</li>
								<li>模块2模块2模块2模块2模块2</li>
								<li>模块3</li>
								<li>模块4</li>
								<li>模块5</li>
								<li>模块6</li>
								<li>模块7</li>
							</ul>
						</div>
					</div>
					<div class="community-form-line">
						<label>内容：</label>
						<textarea class="community-textarea"></textarea>
					</div>
					<div class="community-form-line submit-line">
						<button type="button" class="submit-btn">提交</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	</fis:block>

</fis:extends>