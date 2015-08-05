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
    <hr>
    <center>
    	审批预算进度
    </center>
    <hr>
    <div id="content">
    	<ul>
    		<li>预算申请编号:
    			<s:text name="%{#session.currbudgetpro.serialNumber}"></s:text></li>
    		<li>预算申请名称:
    			<s:text name="%{#session.currbudgetpro.applyName}"></s:text></li>
    		<li>预算申请时间:
    			<s:text name="%{#session.currbudgetpro.applyTime}"></s:text></li>
    		<li>预算申请结果:
    			<s:text name="%{#session.currbudgetpro.permission}"></s:text></li>
    		<li>预算审批意见:
    			<s:text name="%{#session.currbudgetpro.advice}"></s:text></li>
    	</ul>
    </div>
  </body>
  <style>
  	#content{
  	width:80%;
  	margin:0 auto;
  	}
  	#itable{
  		width:100%;
  		text-align: center;
  		table-layout: fixed;
  	}
  </style>
</html>
