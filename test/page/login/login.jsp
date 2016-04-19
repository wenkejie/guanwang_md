<%@ page contentType="text/html;charset=UTF-8" language="java" %><%
        String method = request.getMethod();
        if(method.equalsIgnoreCase("post")) {
        	 String userName = request.getParameter("userName");
       	 String password = request.getParameter("password");
       	 String verCode = request.getParameter("verCode");
       	 String message = "";
	     if(!"wyn8kt".equalsIgnoreCase(verCode)) {
	   	       	message = "验证码错误";
	       }else if(!"shihome".equals(userName)) {
	        	  message = "会员不存在";
	        } else if(!"082c52f9e72ac637750d7a4746b2b038fe4eabf53a2d31978f6257e52491639c79efc588e1a2a18ce13ba864188baa80cfbcb1a82b474a7e8794bc1665da4018e27bcf01783202dc27fa91b0".equals(password)) {   
	        	// 8nsjty
	        	message = "密码错误";
	        } else {
		response.sendRedirect("/");
		return ;
	        }

	  request.setAttribute("message", message);
        } 
    	 request.setAttribute("modulus", "d6b3d51c71ad46e493aa1301326bcc9664bf30df13528cf4c7dd0e473863fd1cc52e4c038133b20b47d21c193658bf9eedda58df442f99c39351c10f117464ab9dad50d4d3500177dd6a217");
    	  request.setAttribute("publicExponent", "010001");
        
        
        request.getRequestDispatcher("/login.test").forward(request, response);
  
%>