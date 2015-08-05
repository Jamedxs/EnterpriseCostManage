<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-color: #F8F9FA;
}
-->
</style>

<link href="images/skin.css" rel="stylesheet" type="text/css" />
<body>
<form name="form1" method="POST" action="AddMemberInfoAction.action">
	<table width="100%" border="0" cellpadding="0" cellspacing="0">
		<tr>
			<td width="17" height="29" valign="top"
				background="images/mail_leftbg.gif"><!-- <img
				src="images/left-top-right.gif" width="17" height="29" /> -->
			</td>
			<td width="935" height="29" valign="top"
				background="images/content-bg.gif"><table width="100%"
					height="31" border="0" cellpadding="0" cellspacing="0"
					class="left_topbg" id="table2">
					<tr>
						<td height="31"><div class="titlebt">个人基本信息</div>
						</td>
					</tr>
				</table>
			</td>
			<td width="16" valign="top" background="images/mail_rightbg.gif"><img
				src="images/nav-right-bg.gif" width="16" height="29" />
			</td>
		</tr>
		<tr>
			<td height="71" valign="middle" background="images/mail_leftbg.gif"></td>
			<td valign="top" bgcolor="#F7F8F9"><table width="100%"
					height="138" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td height="13" valign="top">&nbsp;</td>
					</tr>
					<tr>
						<td valign="top"><table width="98%" border="0" align="center"
								cellpadding="0" cellspacing="0">
								<tr>
									<td class="left_txt">当前位置：查看个人基本信息</td>
								</tr>
								<tr>
									<td height="20"><table width="100%" height="1" border="0"
											cellpadding="0" cellspacing="0" bgcolor="#CCCCCC">
											<tr>
												<td></td>
											</tr>
										</table>
									</td>
								</tr>
								<tr>
									<td><table width="100%" height="55" border="0"
											cellpadding="0" cellspacing="0">
											<tr>
												<td width="10%" height="55" valign="middle"><img
													src="images/title.gif" width="54" height="55">
												</td>
												<td width="90%" valign="top"><span class="left_txt2">请仔细核查自己的个人信息，检查是有错误，如有错误请自行进行修改</span>
												</td>
											</tr>
										</table>
									</td>
								</tr>
								<tr>
									<td>&nbsp;</td>
								</tr>
								<tr>
									<td><table width="100%" height="31" border="0"
											cellpadding="0" cellspacing="0" class="nowtable">
											<tr>
												<td class="left_bt2">&nbsp;&nbsp;&nbsp;&nbsp;员工基本信息</td>
											</tr>
										</table>
									</td>
								</tr>
								<tr>
									<td><table width="100%" border="0" cellspacing="0"
											cellpadding="0">
											<!-- private String userid;
	private String username;
	private String userpwd;
	private String usertype;
	private String userphone;
	private String usermail;
	private String usersex;
	private String usercardid;
	private String useraddress;
	private String deptid;
	private String jobid; -->
												<!-- <tr>
													<td width="20%" height="30" align="right" bgcolor="#f2f2f2"
														class="left_txt2">用户ID：</td>
													<td width="3%" bgcolor="#f2f2f2">&nbsp;</td>
													<td width="32%" height="30" bgcolor="#f2f2f2"><input
														name="userid" type="text" id="title" size="30" />
													</td>
													<td width="45%" height="30" bgcolor="#f2f2f2"
														class="left_txt">用户的唯一标识</td>
												</tr> -->
												<tr>
													<td height="30" align="right" class="left_txt2">用户姓名：</td>
													<td>&nbsp;</td>
													<!--这里设置个人基本信息  -->
						
													<td height="30">${user.username}
													</td>
													<td height="30" class="left_txt">员工登录用户名</td>
												</tr>
												
												<tr>
													<td height="30" align="right" class="left_txt2">性别：</td>
													<td>&nbsp;</td>
													<td height="30">
														${user.sex}
													</td>
													<td height="30" class="left_txt">员工性别</td>
												</tr>
												<tr>
													<td height="30" align="right" bgcolor="#f2f2f2"
														class="left_txt2">年龄：</td>
													<td bgcolor="#f2f2f2">&nbsp;</td>
													<td height="30" bgcolor="#f2f2f2"><!-- <input type="text"
														name="usertype" size="30" /> -->
														${user.age}
													</td>
													<td height="30" bgcolor="#f2f2f2" class="left_txt">员工年龄</td>
												</tr>
												<tr>
													<td height="30" align="right" bgcolor="#F7F8F9"
														class="left_txt2">邮箱：</td>
													<td bgcolor="#F7F8F9">&nbsp;</td>
													<td height="30" bgcolor="#F7F8F9">
													${user.email}
													</td>
													<td height="30" bgcolor="#F7F8F9" class="left_txt">用户个人邮箱</td>
												</tr>
												<tr>
													<td height="30" align="right" bgcolor="#F2F2F2"
														class="left_txt2">联系电话：</td>
													<td bgcolor="#F2F2F2">&nbsp;</td>
													<td height="30" bgcolor="#F2F2F2">
													${user.phoneNumber}
													</td>
													<td height="30" bgcolor="#F2F2F2"><span
														class="left_txt">员工联系电话</span>
													</td>
												</tr>
												<tr>
													<td height="30" align="right" bgcolor="#F2F2F2"
														class="left_txt2">出生日期：</td>
													<td bgcolor="#F2F2F2">&nbsp;</td>
													<td height="30" bgcolor="#F2F2F2">
													${user.birthDate}
													</td>
													<td height="30" bgcolor="#F2F2F2"><span
														class="left_txt">员工的出生日期</span>
													</td>
												</tr>
												<tr>
													<td height="30" align="right" class="left_txt2">身份证号码：</td>
													<td>&nbsp;</td>
													<td height="30">
													${user.IDcard}
													</td>
													<td height="30"><span class="left_txt">员工的身份证号码</span>
													</td>
												</tr>
												<tr>
													<td height="30" align="right" bgcolor="#f2f2f2"
														class="left_txt2">联系地址：</td>
													<td bgcolor="#f2f2f2">&nbsp;</td>
													<td height="30" bgcolor="#f2f2f2">
													${user.adderss}
													</td>
													<td height="30" bgcolor="#f2f2f2"><span
														class="left_txt">员工的地址信息</span>
													</td>
												</tr>
												<tr>
													<td height="30" align="right" bgcolor="#f2f2f2"
														class="left_txt2">邮编：</td>
													<td bgcolor="#f2f2f2">&nbsp;</td>
													<td height="30" bgcolor="#f2f2f2">
													${user.zipcode}
													</td>
													<td height="30" bgcolor="#f2f2f2"><span
														class="left_txt">员工地址的邮编</span>
													</td>
												</tr>
			
												<tr>
													<td height="30" align="right" class="left_txt2">部门名称：</td>
													<td>&nbsp;</td>
													<td height="30">
													${dept.deptName}
													</td>
													<td height="30"><span class="left_txt">员工所在的部门名称</span>
													</td>
												</tr>
												<tr>
													<td height="30" align="right" class="left_txt2">部门描述：</td>
													<td>&nbsp;</td>
													<td height="30">
													${dept.deptDescribe}
													</td>
													<td height="30"><span class="left_txt">员工所在的部门详细描述</span>
													</td>
												</tr>

												<!-- 分割符的设置 -->
												<!--  <tr>
                <td height="30" colspan="4" align="right" class="left_txt2"><table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" class="nowtable">
                  <tr>
                    <td class="left_bt2">&nbsp;&nbsp;&nbsp;&nbsp;会员类型及属性</td>
                  </tr> -->

										<!-- ++++++++++++++++++++++++++++++++++++++++ -->	
										</table></td>

								</tr>

							</table>
							<table width="100%" border="0" cellspacing="0" cellpadding="0">


								<tr>
									<td height="30" colspan="3">&nbsp;</td>
								</tr>
							
								<tr>
									<td height="30" colspan="3">&nbsp;</td>
								</tr>
							</table>
						</td>
					</tr>
					
				</table>
			</td>
			<td background="images/mail_rightbg.gif">&nbsp;</td>
		</tr>
		<tr>
			<td valign="middle" background="images/mail_leftbg.gif"><img
				src="images/buttom_left2.gif" width="17" height="17" />
			</td>
			<td height="17" valign="top" background="images/buttom_bgs.gif"><img
				src="images/buttom_bgs.gif" width="17" height="17" />
			</td>
			<td background="images/mail_rightbg.gif"><img
				src="images/buttom_right2.gif" width="16" height="17" />
			</td>
		</tr>
		
	</table>
</form>
</body>
</html>