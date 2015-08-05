<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  	<meta charset="UTF-8">
    <base href="<%=basePath%>">
    
    <title>My JSP 'reimbursementSchedule.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
		<link rel="stylesheet" type="text/css" href="css/easyui.css">
	<link rel="stylesheet" type="text/css" href="css/icon.css">

	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/jquery.easyui.min.js"></script>

    <style type="text/css">

    </style>

  </head>
  
  <body bgcolor="#EEF2FB">
    <h2 align="center">报销进度表</h2>
    <s:form action="ReimbursementScheduleAction">
    <table width="1108" border="1" align="center" bgcolor="#EEF2FB">
      <tr>
        <td>ID</td>
        <td>报销名称</td>
        <td>周期</td>
        <td>开始时间</td>
        <td>结束时间</td>
        <td>所属项目</td>
        <td>合         计</td>
        <td>人        数</td>
        <td>票据标识信息</td>
        <td>报销备注</td>
      </tr>
      <s:iterator value="reimbursementList" var="r">
      <tr>
        <td><s:property value="#r.reimbursementId"/></td>
        <td><s:property value="#r.reimbursementName"/></td>
        <td><s:property value="#r.reimbursementCycle"/></td>
        <td><s:property value="#r.reimbursementBeginTime"/></td>
        <td><s:property value="#r.reimbursementEndTime"/></td>
        <td><s:property value="#r.reimbursementProject"/></td>
        <td><s:property value="#r.reimbursementTotalPrice"/></td>
        <td><s:property value="#r.reimbursementPeople"/></td>
        <td><s:property value="#r.billInformation"/></td>
        <td><s:property value="#r.reimbursementComment"/></td>
      </tr>
      </s:iterator>
    </table>
    <s:submit name="method:list" value="查询" align="center"></s:submit>
  </s:form>
  </body>
</html>
