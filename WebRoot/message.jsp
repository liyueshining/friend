<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  		<title>${messageuser}留言页面</title>
  </head>
  
  <body>
  		<span style="font-weight:bold;">给${messageuser}留言</span>  		
  		<hr color="#FAFAFA" />
  		
    	<s:form action="savemessageaction">    		
    		<s:hidden name="username"></s:hidden>
    		<s:hidden name="liuname"></s:hidden>
    		<s:textarea name="message" rows="10" cols="50"></s:textarea>
    		<s:submit value="留言"></s:submit>    			
    	</s:form>   	
  </body>
</html>
