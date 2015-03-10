<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  		<title>留言列表</title>
  </head>
  
  <body>
  		<span style="font-weight:bold;">最新留言</span>
  		<hr color="#FAFAFA"/>
  		<table width="80%" cellspacing="0" cellpadding="0">
  			<tr>
  				<td>    留言用户     </td>
  				<td>    留言时间     </td>
  				<td>    留言内容     </td>
  			</tr>
  			<s:iterator value="#request.messagelist">
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
    		<tr align="right">
    			<td/>
    			<td/>
    			<td width="60%">
					<a href="allmessageaction?name=${user}" target="_blank" title="给好友留言">
    					更多留言…
    				</a>
    			</td>
    		</tr>				
  		</table>
  </body>
</html>
