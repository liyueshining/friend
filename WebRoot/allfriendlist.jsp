<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  		<title>${user}好友列表</title>
  </head>
  
  <body>
    	<span style="font-weight:bold;">${user}好友列表</span>
    	<br/><br/><hr color="#FAFAFA" /><br/><br/>
    		<s:iterator value="#request.allfriendlist">
    			<a href="friendinfoaction?name=${fname}" target="_blank" title="查看好友信息">
    				<s:property value="fname"/>
    			</a>
    			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    		</s:iterator>
  </body>
</html>
