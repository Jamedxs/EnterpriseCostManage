<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>预算审批</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript" src="budget/easyui/jquery.min.js"></script>

  </head>
  
  <body bgcolor="#EEF2FB">
  <s:bean name="cn.com.service.BudgetWaitExam" id="bWaitExam"></s:bean>
    <hr>
    <center>
    	预算审批
    </center>
    <hr>
    <div id="content">
    	<table id="itable">
    	<tr>
    		<td>编号</td>
    		<td>预算名称</td>
    		<td>日期</td>
    		<td>进入审批</td>
       	</tr>
       	<s:iterator value="#bWaitExam.BudgetWait" id="item">
       	<tr>
       		<td><s:text name="%{#item.serialNumber}"></s:text></td>
       		<td><s:text name="%{#item.applyName}"></s:text></td>
       		<td><s:text name="%{#item.applyTime}"></s:text></td>
       		<td><input type="button" value="进入"></td>
       	</tr>
       	</s:iterator>
    	</table>
    </div>
  </body>
  <style>
  #content{
  width:60%;
  margin:0 auto;
  background-color:#eef2fb;
  }
  #itable{
  width:100%;
  table-layout: fixed;
  text-align: center;
  border-collapse:collapse;
		border:solid #999;
		border-width:1 0 0 1;
}
#itable th{border:solid #999;border-width:0 1px 1px 0;padding:2px;}
 #itable td{border:solid #999;border-width:0 1px 1px 0;padding:2px;}
  </style>
  <script type="text/javascript">
  	$("input").click(
  		function(){
  			//alert("her");
  			var $tr = $(this).parent().parent();
  			var $td = $tr.children("td:eq(0)");
  			//alert($td.text());
  			//实现页面跳转
  			window.location.href="<%=path%>/budget/budget_check.action?serialNumber="+$td.text();
  		}
  	);
  </script>
</html>
