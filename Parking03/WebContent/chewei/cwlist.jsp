<%@page import="pers.arrayli.domain.CheWei"%>
<%@page import="pers.arrayli.service.impl.CheWeiServiceImpl"%>
<%@page import="pers.arrayli.service.CheWeiService"%>
<%@include file="/common/sub_header.jsp"%>
<%@ page language="java" import="java.util.*,java.sql.*"
	pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<link rel="stylesheet" type="text/css" href="css/common.css" />
<link rel="stylesheet" type="text/css" href="css/main.css" />
<script type="text/javascript" src="js/libs/modernizr.min.js">
	
</script>
</head>
<body>
	<jsp:include page="/top.jsp"></jsp:include>
	<jsp:include page="/left.jsp"></jsp:include>
	<!--/sidebar-->
	<div class="main-wrap">

		<div class="crumb-wrap">
			<div class="crumb-list">
				<span class="crumb-name">停车缴费</span>
			</div>
		</div>
		<div class="search-wrap">
			<div class="search-content">
				<form action="<%=path%>/chewei/cwlist.jsp" method="post">
					<table class="search-tab">
						<tr>

							<th width="150">请输入车位号:</th>
							<td><input class="common-text" placeholder="关键字"
								name="queryName" value="" id="" type="text"></td>
							<th width="50">区域:</th>
							<td><input class="common-text" placeholder="关键字"
								name="queryName1" value="" id="" type="text"></td>
							<td><input class="btn btn-primary btn2" name="sub"
								value="查询" type="submit"></td>
						</tr>
					</table>
				</form>
			</div>
		</div>
		<div class="result-wrap">
			<form name="myform" id="myform" method="post">
				<div class="result-title">
					<div class="result-list"></div>
				</div>
				<div class="result-content">
					<table class="result-tab" width="100%">
						<tr>


							<th>ID</th>
							<th>车位号</th>

							<th>区域</th>

							<th>备注</th>

							<th>操作</th>
						</tr>


						<%
							//获取查询的关键字
							String hao = request.getParameter("queryName");
							String quyu = request.getParameter("queryName1");

							CheWeiService service = new CheWeiServiceImpl();
							List<CheWei> list = service.QueryCheWei(hao, quyu);
							if (list != null) {
								for (CheWei chewei : list) {
						%>
						<tr>


							<td><%=chewei.getId()%></td>
							<td title=""><%=chewei.getHao()%></td>

							<td title=""><%=chewei.getQuyu()%></td>

							<td title=""><%=chewei.getInfo()%></td>

							<td>
								<%
									if (chewei.getChepai() == null || chewei.getChepai().equals("")) {
								%> 空闲 <%
									} else {
								%> <%=chewei.getChepai()%> <%
 	}
 %>
							</td>
						</tr>

						<%
							}
							}
						%>
					</table>
					<div class="list-page"></div>
				</div>
			</form>
		</div>
	</div>
	<!--/main-->
	</div>
</body>
</html>
