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
    <title>My JSP 'regcheck.jsp' starting page</title>
    
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
    	<%
    	request.setCharacterEncoding("utf-8");
     	response.setCharacterEncoding("utf-8");
     	String name=new String((request.getParameter("name")).getBytes("ISO-8859-1"),"UTF-8"); 
     	String password=new String((request.getParameter("password")).getBytes("ISO-8859-1"),"UTF-8");
     	String company=new String((request.getParameter("company")).getBytes("ISO-8859-1"),"UTF-8"); 
     	String phone=new String((request.getParameter("phone")).getBytes("ISO-8859-1"),"UTF-8"); 
     	String email=new String((request.getParameter("email")).getBytes("ISO-8859-1"),"UTF-8"); 
     	String sql="insert into user(name,password,company,phone,email) values(?,?,?,?,?)";
     	Object[] myarg={name,password,company,phone,email};
     	Test T1=new Test();
     	if(T1.executeREG(sql, myarg)){
     		System.out.println("注册成功");
     		request.getSession().setAttribute("info", "注册成功");
     		response.sendRedirect("register.jsp");
     	}else{
     		System.out.println("注册失败");
     		request.getSession().setAttribute("info", "注册失败");
     	}
     	%>
  </body>
</html>
