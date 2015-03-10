<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  		<title>用户登录</title>
  </head>
  
  <body>
    	<h2 align="center">用户登录</h2>
    	<s:form action="loginaction">
    	<s:textfield name="nameuser" label="用户名："></s:textfield>
    	<s:password name="passworduser" label="密码："></s:password>
    	<s:submit value="登录"></s:submit>
    	</s:form>
    	
    	<hr color="#FAFAFA" />
    	<a href="register.jsp">新用户注册</a>
  </body>
</html>
