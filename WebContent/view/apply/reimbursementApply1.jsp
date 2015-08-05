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
  
    <title>My JSP 'reimbursementApply.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="css/easyui.css">
	<link rel="stylesheet" type="text/css" href="css/icon.css">
<!--	<link rel="stylesheet" type="text/css" href="../demo.css">     -->
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/jquery.easyui.min.js"></script>

    <style type="text/css">
<!--
.STYLE2 {font-size: 24px}
-->
    </style>
</head>
<!--	<frameset cols="200,*" rows="760,*" id="frame">
		<frame src="reimbursementApplyLeft.jsp" name="leftFrame" noresize="noresize"
			marginwidth="0" marginheight="0" frameborder="0" scrolling="no"
			target="main" />
		<frame src="reimbursementApplyRight.jsp" name="main" marginwidth="0" marginheight="0"
			frameborder="0" scrolling="auto" target="_self" />
	<frame src="UntitledFrame-5"><frame src="UntitledFrame-6"></frameset>
	<noframes>
-->
	<body bgcolor="#EEF2FB">
	<form id="myreimbursement" method="post" action="ReimbursementAction.action">
		<table bgcolor="#EEF2FB" width="1114" height="474" border="0" align="center">
          <tr>
            <td width="239" rowspan="2"><h2 align="center">报销单元</h2>
	          <input class="easyui-combobox" 
			name="language"
			data-options="
					url:'json/reimbursement_unit.json',
					method:'get',
					valueField:'id',
					textField:'text',
					panelHeight:'auto'
			">
			
	<div class="demo-info">
		<div class="demo-tip icon-tip"></div>
	</div>
	<div style="margin:10px 0;"></div>
	<div class="easyui-layout" style="width:239px;height:350px;">
		<div data-options="region:'center',title:'报销明细列表',iconCls:'icon-ok'">
			<table bgcolor="#EEF2FB" class="easyui-datagrid"
					data-options="url:'json/datagrid_data1.json',method:'get',border:false,singleSelect:true,fit:true,fitColumns:true">
				<thead>
					<tr>
						<th data-options="field:'itemid'" width="80">明细费用名称</th>
					</tr>
				</thead>
			</table>
		</div>
	</div>
	<div style="text-align:center;padding:5px">
	    	<a href="javascript:void(0)" style="color:#222222" class="easyui-linkbutton" onClick="submitForm()">增加</a>
	    	<a href="javascript:void(0)" style="color:#222222" class="easyui-linkbutton" onClick="clearForm()">确定</a>
	 </div></td>
            <td width="865" height="179" valign="top">	<h2 align="center">报销明细费用表</h2>
              <table bgcolor="#EEF2FB" width="860" height="173" border="1" bordercolor="#666666">
                <tr>
                  <td>明细费用名称</td>
                  <td>费用说明</td>
                  <td>报销费用数额</td>
                </tr>
                <tr>
                  <td>人员成本费</td>
                  <td>人员加班等需要的费用</td>
                  <td><label>
                    <input type="text" class="easyui-numberbox" name="textfield" id="text1" missingMessage="必须填写数字">
                  </label></td>
                </tr>
                <tr>
                  <td>差旅费</td>
                  <td>出差所需要的费用</td>
                  <td><label>
                    <input type="text" class="easyui-numberbox" name="textfield2" id="text2">
                  </label></td>
                </tr>
                <tr>
                  <td>风险费</td>
                  <td>承担风险需要的费用</td>
                  <td><label>
                    <input type="text" class="easyui-numberbox" name="textfield3" id="text3">
                  </label></td>
                </tr>
                <tr>
                  <td>通讯费</td>
                  <td>通讯相关所需要的费用</td>
                  <td><label>
                    <input type="text" class="easyui-numberbox" name="textfield4" id="text4">
                  </label></td>
                </tr>
                <tr>
                  <td>公关费</td>
                  <td>公共相关费用</td>
                  <td><label>
                    <input type="text" class="easyui-numberbox" name="textfield5" id="text5">
                  </label></td>
                </tr>
                <tr>
                  <td>项目奖金</td>
                  <td>项目所发奖金</td>
                  <td>
                    <input type="text" class="easyui-numberbox" name="textfield6" id="text6">
                  </td>
                </tr>
              </table>
              <label>
	    			  <div align="center"><a href="javascript:void(0)" style="color:#222222" class="easyui-linkbutton" onClick="Sum()">合计</a>
		        </div>
              </label>              
            <p align="center">&nbsp;</p></td>
          </tr>
          <tr>
            <td height="287"><div style="margin:10px 0;"></div>
	<div class="easyui-panel" title="报销信息" style="width:860px;padding:10px">
		<!-- 表单数据提交 -->
	<div style="padding:10px 0 10px 60px">
	<table width="780" bgcolor="#EEF2FB">
	    		<tr>
	    			<td>报销名称:</td>
	    			<td><input class="easyui-validatebox" type="text" name="reimbursementName" data-options="required:true"></input></td>
	    			<td>周          期:</td>
	    			<td><input class="easyui-validatebox" type="text" name="reimbursementCycle" data-options="required:true"></input></td>
	    		</tr>
	    		<tr>
					<td>开始时间:</td>
					<td><input class="easyui-datebox" name="reimbursementBeginTime" required="true" missingMessage="报销开始日期必须填写"  editable="false" ></td>
					<td>结束时间:</td>
					<td><input class="easyui-datebox" name="reimbursementEndTime" required="true" missingMessage="报销结束日期必须填写"  editable="false"></td>
				</tr>
	    		<tr>
	    			<td>所属项目:</td>
	    			<td><input class="easyui-validatebox" type="text" name="reimbursementProject" data-options="required:true"></input></td>
	    			<td>合         计:</td>
    			  <td><input class="easyui-numberbox" type="text" id="reimbursementTotalPrice" name="reimbursementTotalPrice" data-options="required:true" value=""></input>
    			    </td>
	    		</tr>
	    		<tr>
	    			<td>人        数:</td>
	    			<td><input class="easyui-numberbox" type="text" name="reimbursementPeople" data-options="required:true" missingMessage="必须填写数字"></input></td>
	    			<td>票据标识信息:</td>
	    			<td><input class="easyui-validatebox" type="text" name="billInformation" data-options="required:true"></input></td>
	    		</tr>
	    		<tr>
	    			<td>报销备注:</td>
	    			<td><textarea name="reimbursementComment" style="height:60px;"></textarea></input></td>
	    		</tr>
	    	</table>
	
	</td>
          </tr>
    </table>
    </form>
        <div style="text-align:center;padding:5px">
	    	<a href="javascript:void(0)" style="color:#222222" class="easyui-linkbutton" onClick="submitForm()">提交</a>
	    	<a href="javascript:void(0)" style="color:#222222" class="easyui-linkbutton" onClick="clearForm()">清除</a>
	 </div>
        
        <script>
		$(function(){
			$('input.easyui-validatebox').validatebox({
				tipOptions: {	// the options to create tooltip
					showEvent: 'mouseenter',
					hideEvent: 'mouseleave',
					showDelay: 0,
					hideDelay: 0,
					zIndex: '',
					onShow: function(){
						if (!$(this).hasClass('validatebox-invalid')){
							if ($(this).tooltip('options').prompt){
								$(this).tooltip('update', $(this).tooltip('options').prompt);
							} else {
								$(this).tooltip('tip').hide();
							}
						} else {
							$(this).tooltip('tip').css({
								color: '#000',
								borderColor: '#CC9933',
								backgroundColor: '#FFFFCC'
							});
						}
					},
					onHide: function(){
						if (!$(this).tooltip('options').prompt){
							$(this).tooltip('destroy');
						}
					}
				}
			}).tooltip({
				position: 'right',
				content: function(){
					var opts = $(this).validatebox('options');
					return opts.prompt;
				},
				onShow: function(){
					$(this).tooltip('tip').css({
						color: '#000',
						borderColor: '#CC9933',
						backgroundColor: '#FFFFCC'
					});
				}
			});
		});
	</script>
	
		<script type="text/javascript">
		function submitForm()
   		{
   			/* alert("123123"); */
   			//获取表单对象
   			var frm = document.getElementById("myreimbursement");
   			frm.submit();//提交表单
   		}
	</script>
	<script type="text/javascript">
		function Sum()
		{
			//alert("2313132");
			var text1 = document.getElementById("text1").value;
			var text2 = document.getElementById("text2").value;
			var text3 = document.getElementById("text3").value;
			var text4 = document.getElementById("text4").value;
			var text5 = document.getElementById("text5").value;
			var text6 = document.getElementById("text6").value;
			
			var text = Number(text1) + Number(text2) + Number(text3) + Number(text4) + Number(text5) + Number(text6);
			
			var input = document.getElementById("reimbursementTotalPrice").value = text;
			//document.getElementByName("reimbursementTotalPrice")[0].valeu = text;
			/* alert(input); */
			//input.fireEvent("onchange()");
		}
	</script>
</body>
	</noframes>
</html>
