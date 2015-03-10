<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  		<title>用户注册-聚群网</title>
  </head>
  
  <body>
    	<h2 align="center">用户注册</h2>
    	<s:form action="regaction">
    	<s:textfield name="nameuser" label="用户名"></s:textfield>
    	<s:password name="passworduser" label="密码"></s:password>
    	<s:textfield name="ageuser" label="年龄"></s:textfield>
    	<s:textfield name="sexuser" label="性别"></s:textfield>
    	<s:textfield name="emailuser" label="邮箱"></s:textfield>
    	<s:submit value="注册"></s:submit>
    	</s:form>
    	
    	<hr color="#FAFAFA" />
    	<a href="login.jsp">已有账户登录</a>
  </body>
</html>
