<%@page import="zym.Test"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'check.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
 
  </head>
  
  <body>
    This is my JSP page. <br>
    <% 
     request.setCharacterEncoding("utf-8");
     response.setCharacterEncoding("utf-8");
     Test T = new Test();
     String sql="select name,password from user where name=? and password=?";
     Object[] myargs={request.getParameter("username"),request.getParameter("psd")};
     if(T.executeDML(sql, myargs)){
     	System.out.println("登录成功");
     	request.getSession().setAttribute("user", request.getParameter("username"));
     	response.sendRedirect("order.html");
     }else{
     	System.out.println("登录失败");
     	request.getSession().setAttribute("name", "用户名或密码错误，请重新输入");
     	response.sendRedirect("login.jsp");
     }
     %>
  </body>
</html>
