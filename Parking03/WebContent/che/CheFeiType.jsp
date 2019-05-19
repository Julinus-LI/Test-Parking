<%@page import="pers.arrayli.domain.CheFeiPrice"%>
<%@page import="pers.arrayli.service.impl.CheFeiPriceServiceImpl"%>
<%@page import="pers.arrayli.service.CheFeiPriceService"%>
<%@include file="/common/sub_header.jsp"%>
<%@ page contentType="text/html;charset=UTF-8"
	import="java.util.*,java.sql.*" pageEncoding="UTF-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

</head>

<body>
	<jsp:include page="/top.jsp"></jsp:include>
	<div class="container clearfix">
		<jsp:include page="/left.jsp"></jsp:include>
		<!--/sidebar-->
		<div class="main-wrap">

			<div class="crumb-wrap">
				<div class="crumb-list">
					<i class="icon-font"></i><span>停车类型</span>
				</div>
			</div>
			<div class="result-wrap">
				<div class="result-content">
					<form method="post" id="myform" name="myform">
						<table class="insert-tab" width="100%">
							<tbody>
							
									<!-- <tr>
										<th>
											<i class="require-red">*</i>车位号：
										</th>
										<td>
											<input class="common-text required" id="hao" name="hao"
												size="50" value="" type="text">
										</td>
									</tr>
 -->
									<tr>
										<th>
											<i class="require-red"></i>白天停车(6:00-18:00)：
										</th>
										<td>
											<select  id="qu" name="type" >
												 <option value="0">--请选择--</option>
												 <option value="A类">2小时（含2小时）每辆每次收费5元</option>
												 <option value="A类">2小时（含2小时）每辆每次收费5元</option>
												 <option value="B类">2小时以上至4小时以内（含4小时）每辆每次收费10元</option>
												 <option value="C类">4小时以上每辆每次收费15元</option>
											</select>	
										</td>
									</tr>
									<tr>
										<th>
											<i class="require-red"></i>夜晚停车(18:00-6:00)：
										</th>
										<td>
											<select  id="qu" name="type1" >
												 <option value="0">--请选择--</option>
												 <option value="D类">4小时以内（含4小时）每辆每次收费8元</option>
												 <option value="E类">4小时以上收费10元</option>
											</select>	
										</td>
									</tr>
									<tr>
										<th>
											<i class="require-red"></i>24小时停车：
										</th>
										<td>
											<select  id="qu" name="type2" >
											     <option value="0">--请选择--</option>
												 <option value="D类">4小时以内（含4小时）每辆每次收费8元</option>
												 <option value="E类">4小时以上收费10元</option>
											</select>	
										</td>
									</tr>
									<tr>
										<th>
											<i class="require-red"></i>长期固定车位停车：
										</th>
										<td>
											<select  id="qu" name="qu" >
												 <option value="0">--请选择--</option>
												 <option value="F类">长期固定停放的车辆，按每月收费，每月300元</option>
											</select>	
										</td>
									</tr>
									<th></th>
									<td><input class="btn btn-primary btn6 mr10"
										onclick="save();" value="停车" type="button"> <input
										class="btn btn6" onclick="history.go(-1)" value="返回"
										type="button"></td>
								</tr>
							</tbody>
						</table>
					</form>
				</div>
			</div>

		</div>
		<!--/main-->
	</div>
</body>
</html>
<script>

function save() {
	if ($("#name").val() == "") {
		$.messager.alert('警告', '姓名不能为空！', 'warning');
		return;
	}
	if ($("#pwd").val() == "") {
		$.messager.alert('警告', '密码不能为空！', 'warning');
		return;
	}
		document.forms[0].action = "<%=path%>/ReserveServlet";
		document.forms[0].submit();

	}
</script>
