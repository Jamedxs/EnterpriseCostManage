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
									
								</tr>
								<tr>
									
								</tr>
								<tr>
									
								</tr>
								<tr>
									<td>&nbsp;</td>
								</tr>
								<tr>
									<td><table width="100%" height="31" border="0"
											cellpadding="0" cellspacing="0" class="nowtable">
											<tr>
												<td class="left_bt2">&nbsp;&nbsp;&nbsp;&nbsp;系统参数设置</td>
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
													<td height="30"><input type="text" name="userpwd"
														size="30" />
													</td>
													<td height="30" class="left_txt">输入正确的用户姓名</td>
												</tr>
												<tr>
													<td height="30" align="right" bgcolor="#f2f2f2"
														class="left_txt2">用户密码：</td>
													<td bgcolor="#f2f2f2">&nbsp;</td>
													<td height="30" bgcolor="#f2f2f2"><input type="password"
														name="username" size="30" />
													</td>
													<td height="30" bgcolor="#f2f2f2" class="left_txt">至少输入六位密码</td>
												</tr>
												<tr>
													<td height="30" align="right" class="left_txt2">性别：</td>
													<td>&nbsp;</td>
													<td height="30"><!-- <input type="text" name="usersex"
														size="30" /> -->
														男:<input type="radio" name="usersex" value="男">
														女:<input type="radio" name="usersex" value="女">
													</td>
													<td height="30" class="left_txt">选择正确的性别</td>
												</tr>
												<tr>
													<td height="30" align="right" bgcolor="#f2f2f2"
														class="left_txt2">用户类型：</td>
													<td bgcolor="#f2f2f2">&nbsp;</td>
													<td height="30" bgcolor="#f2f2f2"><!-- <input type="text"
														name="usertype" size="30" /> -->
														普通用户:<input type="radio" name="usertype" value="普通用户">
														管理员：<input type="radio" name="usertype" value="管理员">
													</td>
													<td height="30" bgcolor="#f2f2f2" class="left_txt">选择正确的用户类型</td>
												</tr>
												<tr>
													<td height="30" align="right" bgcolor="#F7F8F9"
														class="left_txt2">移动电话：</td>
													<td bgcolor="#F7F8F9">&nbsp;</td>
													<td height="30" bgcolor="#F7F8F9"><input type="text"
														name="userphone" size="30" />
													</td>
													<td height="30" bgcolor="#F7F8F9" class="left_txt">输入正确的移动电话</td>
												</tr>
												<tr>
													<td height="30" align="right" bgcolor="#F2F2F2"
														class="left_txt2">用户邮箱：</td>
													<td bgcolor="#F2F2F2">&nbsp;</td>
													<td height="30" bgcolor="#F2F2F2"><input name="usermail"
														type="text" id="usermail" size="30" />
													</td>
													<td height="30" bgcolor="#F2F2F2"><span
														class="left_txt">邮箱用户发送消息和找回密码</span>
													</td>
												</tr>
												<tr>
													<td height="30" align="right" class="left_txt2">身份证号码：</td>
													<td>&nbsp;</td>
													<td height="30"><input type="text" name="usercardid"
														size="30" />
													</td>
													<td height="30"><span class="left_txt">输入正确的身份证号码。</span>
													</td>
												</tr>
												<tr>
													<td height="30" align="right" bgcolor="#f2f2f2"
														class="left_txt2">联系地址：</td>
													<td bgcolor="#f2f2f2">&nbsp;</td>
													<td height="30" bgcolor="#f2f2f2"><input type="text"
														name="useraddress" size="30" />
													</td>
													<td height="30" bgcolor="#f2f2f2"><span
														class="left_txt">输入正确的地址信息</span>
													</td>
												</tr>
			
												<tr>
													<td height="30" align="right" class="left_txt2">部门ID：</td>
													<td>&nbsp;</td>
													<td height="30"><input type="text" name="deptid" size="30" />
													</td>
													<td height="30" class="left_txt">请输入该人员所属部门id</td>
												</tr>
												<tr>
													<td height="30" align="right" class="left_txt2">职位ID：</td>
													<td>&nbsp;</td>
													<td height="30"><input type="text" name="jobid" size="30" />
													</td>
													<td height="30" class="left_txt">请输入该人员职位ID</td>
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
									<td width="50%" height="30" align="right"><input
										type="submit" value="完成以上修改" name="B1" />
									</td>
									<td width="6%" height="30" align="right">&nbsp;</td>
									<td width="44%" height="30"><input type="reset"
										value="取消设置" name="B12" />
									</td>
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