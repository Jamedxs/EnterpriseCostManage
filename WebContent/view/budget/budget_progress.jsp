<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>预算审批进度</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body bgcolor="#EEF2FB">
	  <s:bean name="cn.com.service.BudgetProgService" id="bproglist">
	  	<s:param name="applyerID" value="%{#session.loginuserid}"></s:param>
	  </s:bean>
	    <hr>
	    <center>
	    	预算审批进度
	    </center>
	    <hr>
	    
	<div id="content">
		<table id="iprog">
		<tr>
		<td>序列号</td>
		<td>名称</td>
		<td>时间</td>
		<td>是否通过</td>
		<td>意见</td>
		</tr>
		
			<s:iterator value="%{#bproglist.BudgetProgList}" id="prog">
			<tr>
				<td><s:text name="%{#prog.serialNumber}"></s:text></td>
				<td><s:text name="%{#prog.applyName}"></s:text></td>
				<td><s:text name="%{#prog.applyTime}"></s:text></td>
				<td><s:text name="%{#prog.permission}"></s:text></td>
				<td><s:text name="%{#prog.advice}"></s:text></td>
			</tr>
			</s:iterator>
			
		</table>
	</div>
</body>
<style>
#iprog{
text-align: center;
table-layout: fixed;
width: 100%;
border-collapse:collapse;
		border:solid #999;
		border-width:1 0 0 1;
}
#iprog th{border:solid #999;border-width:0 1px 1px 0;padding:2px;}
 	#iprog td{border:solid #999;border-width:0 1px 1px 0;padding:2px;}
#content{
width: 80%;
margin: 0 auto;
background-color:#eef2fb;
}
</style>
</html>
