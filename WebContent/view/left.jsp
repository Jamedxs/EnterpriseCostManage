<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'left.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

	

<title>管理页面</title>
<!-- 引入js -->
<script src="js/prototype.lite.js" type="text/javascript"></script>
<script src="js/moo.fx.js" type="text/javascript"></script>
<script src="js/moo.fx.pack.js" type="text/javascript"></script>
<!-- 引入CSS -->
<link rel="stylesheet" type="text/css" href="css/leftCss.css">

</head>

<body>
	<table width="100%" height="280" border="0" cellpadding="0"
		cellspacing="0" bgcolor="#EEF2FB">
		<tr>
			<td width="182" valign="top"><div id="container">
					<h1 class="type">
						<a href="javascript:void(0)">个人信息管理</a>
					</h1>
					<div class="content">
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td><img src="images/menu_topline.gif" width="182"
									height="5" />
								</td>
							</tr>
						</table>
						<ul class="MM">
							<li><a href="showuserinfo.do" target="main">查看个人信息</a>
							</li>
							<li><a href="view/user/modifyUserInfo.jsp" target="main">修改个人信息</a>
							</li>
							<li><a href="view/user/showAllUserinfo.jsp" target="main">管理人员信息</a>
							</li>
							<li><a href="test.jsp" target="main">管理预算信息</a>
							</li>
							<li><a href="test.jsp" target="main">查看报销信息</a>
							</li>
							
						</ul>
					</div>
					<h1 class="type">
						<a href="javascript:void(0)">审批流程管理</a>
					</h1>
					<div class="content">
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td><img src="images/menu_topline.gif" width="182"
									height="5" />
								</td>
							</tr>
						</table>
						<ul class="MM">
							<li><a href="test.jsp" target="main">审批流程制定</a>
							</li>
							<li><a href="test.jsp" target="main">查看审批流程</a>
							</li>
							<li><a href="test.jsp" target="main">查看审批流程</a>
							</li>
						</ul>
					</div>
					<h1 class="type">
						<a href="javascript:void(0)">预算申请管理</a>
					</h1>
					<div class="content">
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td><img src="images/menu_topline.gif" width="182"
									height="5" />
								</td>
							</tr>
						</table>
						<ul class="MM">
							<li><a href="view/budget/budget_apply.jsp" target="main">个人预算申请</a>
							</li>
							<li><a href="view/budget/budget_progress.jsp" target="main">查看预算进度</a>
							</li>
							<li><a href="view/budget/budget_examime.action" target="main">查看预算记录</a>
							</li>
					</div>
					<h1 class="type">
						<a href="javascript:void(0)">报销申请管理</a>
					</h1>
					<div class="content">
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td><img src="images/menu_topline.gif" width="182"
									height="5" />
								</td>
							</tr>
						</table>
						<ul class="MM">
							<li><a href="view/apply/reimbursementApply1.jsp" target="main">个人报销申请</a>
							</li>
							<li><a href="view/apply/reimbursementSchedule.jsp" target="main">查看报销进度</a>
							</li>
							<li><a href="test.jsp" target="main">查看报销记录</a>
							</li>

						</ul>
					</div>
				</div>
				</div> <script type="text/javascript">
					var contents = document.getElementsByClassName('content');
					var toggles = document.getElementsByClassName('type');

					var myAccordion = new fx.Accordion(toggles, contents, {
						opacity : true,
						duration : 400
					});
					myAccordion.showThisHideOpen(contents[0]);
				</script></td>
		</tr>
	</table>
</body>
</html>
