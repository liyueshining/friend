<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  		<title>好友列表</title>
  </head>
  
  <body>
    	<span style="font-weight:bold;">好友列表</span>
    	<hr color="#FAFAFA" />
    		<s:iterator value="#request.friendlist">
    			<a href="allfriendaction?name=${user}" target="_blank" title="查看好友信息">
    				<s:property value="fname"/>
    			</a>
    			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

    		</s:iterator>
    		<a href="allfriendaction?name=${user}" target="_blank" title="查看好友信息">
    				更多好友…
    		</a>
  </body>
</html>
