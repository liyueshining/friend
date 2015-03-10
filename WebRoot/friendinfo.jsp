<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  		<title>${infoname}详细信息</title>
  		<style type="text/css">
  			td{
  				border-bottom-width:thin;
  				border-bottom-style:solid;
  				border-bottom-color:#CF3;
  			}
  		</style>
  </head>
  
  <body>
  		${infoname}详细信息如下：
  		<hr color="#FAFAFA"/><br/><br/>
  		<table width="60%" cellspacing="0" cellpadding="0">
  			<tr>
  				<td>    朋友编号             </td>
  				<td>    名字                       </td>
  				<td>    年龄                       </td>
  				<td>    性别                       </td>
  				<td>    联系方式             </td>
  			</tr>
  			<s:iterator value="#request.friendinfolist">
    			<tr>
    				<td>
    					<s:property value="iduser"/>
    				</td>
    				<td>
    					<a href="messageaction?name=${nameuser}&username=${user}" target="_blank" title="给好友留言">
    						<s:property value="nameuser"/>
    					</a>
    				</td>
    				<td>
    					<s:property value="ageuser"/>
    				</td>
    				<td>
    					<s:property value="sexuser"/>
    				</td>
    				<td>
    					<s:property value="emailuser"/>
    				</td>
    			</tr>
    		</s:iterator> 				
  		</table>
  </body>
</html>
