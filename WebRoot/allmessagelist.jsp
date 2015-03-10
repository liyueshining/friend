<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  		<title>${user}留言列表</title>
  		<style type="text/css">
  			td{
  				border-bottom-width:thin;
  				border-bottom-style:solid;
  				border-bottom-color:#CF3;
  				height:48px;
  			}
  		</style>
  </head>
  
  <body>
  		<span style="font-weight:bold;">${user}所有留言</span>
  		<hr color="#FAFAFA"/><br/><br/>
  		<table width="80%" cellspacing="0" cellpadding="0">
  			<tr>
  				<td>    留言用户             </td>
  				<td>    留言时间                       </td>
  				<td>    留言内容                       </td>
  			</tr>
  			<s:iterator value="#request.allmessage">
    			<tr>
    				<td width="20%">
    					<a href="messageaction?name=${liuname}&username=${user}" target="_blank" title="给好友留言">
    						<s:property value="liuname"/>
    					</a>
    				</td>

    				<td width="30%">
    					<s:property value="messagetime"/>
    				</td>
    				<td width="60%">
    					<s:property value="message"/>
    				</td>
    			</tr>
    		</s:iterator> 				
  		</table>
  </body>
</html>
