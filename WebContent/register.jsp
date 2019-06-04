<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@page import="java.sql.SQLException" %>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Driver"%>
<%@page import="java.sql.*"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>注册</title>
    
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
    <p>注册</p><br>
    <form action="regcheck.jsp" method="post">
    	<p>用户名：</p><input type="text" placeholder="请输入用户名" name="name">
    	<p>密码：</p><input type="text" placeholder="密码" name="password">
    	<p>公司：</p><input type="text" placeholder="请输入公司名称" name="company">
    	<p>电话：</p><input type="text" placeholder="请输入联系电话" name="phone">
    	<p>邮箱：</p><input type="text" placeholder="请输入邮箱" name="email">
    	<input type="submit">
    </form>
    <h3>${info}</h3>
    <a href="login.jsp">已注册，去登陆</a>
  </body>
</html>
