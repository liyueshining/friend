<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  		<title>${user}正在添加好友</title>
  		<style type="text/css">
  			td{
  				border-bottom-width:thin;
  				border-bottom-style:solid;
  				border-bottom-color:#CF3;
  			}
  		</style>
  </head>
  
  <body>
  		<span style="font-weight:bold;">${user},你可以添加以下MM或GG为好友</span>
  		<br/><hr color="#FAFAFA" /><br/>
    		<s:iterator value="#request.alluser">
    			<a href="friendinfoaction?name=${nameuser}" target="_blank" title="查看此用户信息">
    				<s:property value="nameuser"/>
    			</a>
    			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    			<a href="addfriendaction?me=${user}&user=${nameuser}" target="_blank" title="查看此用户信息">
    				火速加为好友
    			</a>
    		</s:iterator>
  
  </body>
</html>
