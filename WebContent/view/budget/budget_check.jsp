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
	<link rel="stylesheet" type="text/css" href="budget/easyui/themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="budget/easyui/themes/icon.css">
	<script type="text/javascript" src="budget/easyui/jquery.min.js"></script>
	<script type="text/javascript" src="budget/easyui/jquery.easyui.min.js"></script>

  </head>
  
  <body bgcolor="#EEF2FB">
  <s:bean name="cn.com.service.BudgetDetailService" id="bDetail">
  	<s:param name="serialNumber" value="#session.serialNumber"></s:param>
  </s:bean>
  <s:bean name="cn.com.service.ApplyAnService" id ="apply">
  	<s:param name="serialNumber" value="#session.serialNumber"></s:param>
  </s:bean>
    <hr>
    <center>
    	预算明细费用表
    </center>
    <hr>
    <div id="content">
    	<table id="itable" class ="itable" style="margin-top: 3%">
    	<tr>
    		<td>费用明细名称</td>
    		<td>费用说明</td>
    		<td>费用数额</td>
       	</tr>
       	<s:iterator value="#bDetail.BudgetDetail" id="item">
       	<tr>
       		<td><s:text name="%{#item.budgetItemName}"></s:text></td>
       		<td><s:text name="%{#item.budgetItemExplain}"></s:text></td>
       		<td><s:text name="%{#item.budgetItemValue}"></s:text></td>
       	</tr>
       	</s:iterator>
    	</table>
    	<table id="itable2" class="itable" style="margin-top: 2%">
    	<tr>
    		<td>预算名称：<s:text name="%{#apply.Apply.applyName}"></s:text></td>
    		<td>预算日期：<s:text name="%{#apply.Apply.applyTime}"></s:text></td>
       	</tr>
       	<tr>
       		<td>预算周期：<s:text name="%{#apply.Apply.applyPeriod}"></s:text></td>
       		<td>预算总金额：<s:text name="%{#apply.Apply.applyTotalPrice}"></s:text></td>
       	</tr>
       	<tr>
       	<td colspan="2">备注：<s:text name="%{#apply.Apply.applyComment}"></s:text></td>
       	</tr>
    	</table>
    </div>
    <div id="subid">
    	<form action="<%=path%>/budget/budget_allow.action" method="post">
    		<table class="itable" id="subtable" style="margin-top: 15%">
    			<tr>
    			<td>同意否：是<input type="radio" name="perm" value="0">
    				否<input type="radio" name="perm" value="1"></td>
    			</tr>
    			<tr>
    			<td>意见：<input type="text" maxlength="30" name="advice"></td>
    			</tr>
    			<tr>
    			<td>日期：<input class="easyui-datebox" name="starttime"></input></td>
    			</tr>
    			<tr>
    			<td><input type="submit" value="提交"></td>
    			</tr>
    		</table>
    	</form>
    </div>
  </body>
  <style>
  #content{
  width:80%;
  margin:0 auto;
  background-color:#eef2fb;
  }
  #subid{
  	width:30%;
  	margin:0 auto;
  	background-color:#eef2fb;
  }
  #itable,#itable2{
  width:100%;
  table-layout: fixed;
  text-align: center;
  border-collapse:collapse;
	border:solid #999;
	border-width:1 0 0 1;
  }
  #subtable{
  	width: 100%;
  	text-align: center;
  	table-layout: fixed;
  	border-collapse:collapse;
	border:solid #999;
	border-width:1 0 0 1;
  }
  .itable th{border:solid #999;border-width:0 1px 1px 0;padding:2px;}
 	.itable td{border:solid #999;border-width:0 1px 1px 0;padding:2px;}
  </style>
</html>
