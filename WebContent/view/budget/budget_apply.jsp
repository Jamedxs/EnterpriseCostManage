<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>个人预算申请</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<!-- easyui js -->
    <link rel="stylesheet" type="text/css" href="budget/easyui/themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="budget/easyui/themes/icon.css">
	<script type="text/javascript" src="budget/easyui/jquery.min.js"></script>
	<script type="text/javascript" src="budget/easyui/jquery.easyui.min.js"></script>

  </head>
  
  <body>
 	<!-- bean budgetitemservice 获得报销选项列表 -->
  	<s:bean name="cn.com.service.BudgetItemService" id="itemservice"></s:bean>
    <hr>
    <center>
    	个人预算申请
    </center>
    <hr>
    <div id="budgetitem">
    	<p class="name">预算单元</p>
        <div id="itemlist" style="margin:0 auto;width:60%;">
        
        
        <table id="tbselect" bgcolor="#EEF2FB">
	        <s:iterator value="#itemservice.BudgetItems" id="items">
	        	<tr id=<s:property value="#items.itemID"/>> 
	        		<td >
			        	<input type="checkbox" name="cboxlist" 
			        	 	value=<s:property value="#items.itemID"/>
			        	 > 
			        	 	<s:property value="#items.itemName"/>
			        	 	<br>
			        </td>
			        <td style="display: none"><s:property value="#items.itemName"/></td>
			        <td style="display: none"><s:property value="#items.itemExplain"/></td>
			        <td style="display: none"><s:property value="#items.itemMaxV"/></td>
	        	 </tr>
	        </s:iterator>
        </table>
        
        <!-- <s:iterator value="#itemservice.BudgetItems" id="items">
        	 <input type="checkbox" name="cboxlist" 
        	 	value=<s:property value="#items.itemID"/>
        	 > 
        	 	<s:property value="#items.itemName"/>
        	 	<br>
        </s:iterator> -->
        <!-- 
        <input type="checkbox" name="checkbox1" value="checkbox"> 跑步<br>
        <input type="checkbox" name="checkbox1" value="checkbox"> 跑步2<br>
        <input type="checkbox" name="checkbox1" value="checkbox"> 跑步<br>
        <input type="checkbox" name="checkbox1" value="checkbox"> 跑步2<br>
        <input type="checkbox" name="checkbox1" value="checkbox"> 跑步<br>
        <input type="checkbox" name="checkbox1" value="checkbox"> 跑步2<br> -->
        </div>
        
        	<table width="100%" style="margin-top:5%">
            <tr>
            	<td align="right"><input type="submit" value="确认" onclick="confirmSelected()"/></td>
                <td align="left"><input type="button" value="清空" onclick="clearSelected()"/></td>
            </tr>
        </table>
    </div>
    
    <div id="budgetapply">
    <!--form表单在这里 -->
    <form name="budget_apply" action="<%=path%>/budget/apply.action" method="post">
    	<p class="name">预算明细费用表</p>
        <div id="budgetdetail">
        	<table class="itable" id="itemselected" width="100%" style="table-layout:fixed">
            	<tr>
                	<td >明细费用名称</td>
                    <td >费用说明</td>
                    <td>预算费用数额</td>
                    <td>最大值</td>
                    <td style="display: none">id</td>
                </tr>
            </table>
        </div>
        <div id="budgetdetaila">
        <table class="itable" width="100%" id="budgettable" style="margin-top:30px;">
         		<tr>
                	<td colspan="2">预算名称<input name="budgetName" type="text" maxlength="50" /></td>
                </tr>
            	<tr>
                	<td width="50%">预算开始时间<input class="easyui-datebox" name="starttime"></input></td>
                    <td width="50%">预算结束时间<input class="easyui-datebox" name="endtime"></input></td>
                </tr>
                <tr>
                	<td id="period">周期</td>
                    <td><input id="heji" type="button" value="合计" onClick="" /></td>
                </tr>
                <tr>
                	<td colspan="2">预算备注<input type="text" name="comment" size="50" maxlength="50" /></td>
                </tr>
            </table>
        </div>
        <table width="100%">
            <tr>
            	<td align="right"><input type="submit" value="提交" /></td>
                <td align="left"><input id="rewrite" type="button" value="重填" /></td>
            </tr>
        </table>
        </form>
        
        
    </div>
  </body>
  <style>
  	#budgetitem,#budgetapply{
		float:left;
		margin:0;
		padding:0;
	}
	#budgetitem{
		width:20%;
		height:85%;
		background-color:#aaf2fb;
	}
	#budgetapply{
		width:80%;
		height:85%;
		background-color:#eef2fb;
	}
	.name{
		font-size:16px;
		text-align:center;
	}
	#budgetdetail,#budgetdetaila{
		margin:0 auto;
		width:60%;
	}
	#budgetdetail{
		
	}
	#budgetdetaila{
		
	}
	.itable{
		text-align:center;
		border-collapse:collapse;
		border:solid #999;
		border-width:1 0 0 1;
	}
	.itable th{border:solid #999;border-width:0 1px 1px 0;padding:2px;}
 	.itable td{border:solid #999;border-width:0 1px 1px 0;padding:2px;}
 	.addbyjs{
 		width:50%;
 	}
  </style>
  <script type="text/javascript">
  	function clearSelected(){
  		var cboxlist = document.getElementsByName("cboxlist");
  		for(var i=0;i<cboxlist.length;i++){
  			cboxlist[i].checked = false;
  		}
  	}
  	function confirmSelected(){
  		var cboxlist = document.getElementsByName("cboxlist");
  		for(var i=0;i<cboxlist.length;i++){
  			if(cboxlist[i].checked){
  				/*  alert(cboxlist[i].value);  */
  				//得到了选中了哪一行
  				//var rowSe = document.getElementById(cboxlist[i].value);
  				/* rowSe.style.display ="none"; */
  				var ida="#"+cboxlist[i].value;
  				var coltr = cboxlist[i].value;
  				var colz = $(ida+" "+"td:eq(1)").text();//itemName
  				var colo = $(ida+" "+"td:eq(2)").text();//itemExplain
  				var colt = $(ida+" "+"td:eq(3)").text();//itemMaxV
  				//使用jquery插入新表
  				var newRow ="<tr><td >"+colz+"</td><td >"+colo+"</td><td>"
  				+"<input name="+"moneyWanted"+" type=\"text\" class=\"addbyjs\">"+"</td><td>"+colt+"</td>"
  				+"<td style=\"display: none\">"
  				+"<input name="+"itemID"+" type=\"text\" value="+coltr+" class=\"addbyjs\">"
  				+"</td>"+"</tr>";
  				$("#itemselected tr:last").after(newRow);
  			}
  		} 
  		clearSelected();
  	}
  	$("#rewrite").click(
  		function(){
  			location.reload();
  		}
  	);
  	
  	$("#heji").click(
	function(){
		var moneys= document.getElementsByName("moneyWanted");
		var sum = 0;
		for(var i=0;i<moneys.length;i++){
			sum+=parseInt(moneys[i].value);
		}
		$("#heji").after("  "+sum);
		
		var per1= $("input[name='starttime']").val();
		var per2=$("input[name='endtime']").val();
		
		$("#period").empty().append("周期  "+per1+"-----"+per2);
	}
);
  </script>
</html>