<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>用户表管理</title>
	<meta name="decorator" content="default"/>
	<script type="text/javascript">
		$(document).ready(function() {
			
		});
		function page(n,s){
			$("#pageNo").val(n);
			$("#pageSize").val(s);
			$("#searchForm").submit();
        	return false;
        }
	</script>
</head>
<body>
	<ul class="nav nav-tabs">
		<li class="active"><a href="${ctx}/drh/tUser/">用户表列表</a></li>
		<shiro:hasPermission name="drh:tUser:edit"><li><a href="${ctx}/drh/tUser/form">用户表添加</a></li></shiro:hasPermission>
	</ul>
	<form:form id="searchForm" modelAttribute="tUser" action="${ctx}/drh/tUser/" method="post" class="breadcrumb form-search">
		<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
		<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		<ul class="ul-form">
			<li><label>用户名：</label>
				<form:input path="username" htmlEscape="false" maxlength="11" class="input-medium"/>
			</li>
			<li><label>用户类型：</label>
				<form:select path="type" class="input-medium">
					<form:option value="" label=""/>
					<form:options items="${fns:getDictList('')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
				</form:select>
			</li>
			<li><label>真实姓名：</label>
				<form:input path="realname" htmlEscape="false" maxlength="64" class="input-medium"/>
			</li>
			<li><label>昵称：</label>
				<form:input path="nickname" htmlEscape="false" maxlength="64" class="input-medium"/>
			</li>
			<li class="btns"><input id="btnSubmit" class="btn btn-primary" type="submit" value="查询"/></li>
			<li class="clearfix"></li>
		</ul>
	</form:form>
	<sys:message content="${message}"/>
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th>用户名</th>
				<th>密码</th>
				<th>用户类型</th>
				<th>真实姓名</th>
				<th>昵称</th>
				<th>性别</th>
				<th>邮箱</th>
				<!-- <th>QQ openId</th>
				<th>weibo openId</th>
				<th>微信 openId</th> -->
				<shiro:hasPermission name="drh:tUser:edit"><th>操作</th></shiro:hasPermission>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="tUser">
			<tr>
				<td><a href="${ctx}/drh/tUser/form?id=${tUser.id}">
					${tUser.username}
				</a></td>
				<td>
					${tUser.password}
				</td>
				<td>
					${fns:getDictLabel(tUser.type, '', '')}
				</td>
				<td>
					${tUser.realname}
				</td>
				<td>
					${tUser.nickname}
				</td>
				<td>
					${tUser.gender}
				</td>
				<td>
					${tUser.email}
				</td>
				<%-- <td>
					${tUser.qOpenId}
				</td>
				<td>
					${tUser.uOpenId}
				</td>
				<td>
					${tUser.wOpenId}
				</td> --%>
				<shiro:hasPermission name="drh:tUser:edit"><td>
    				<a href="${ctx}/drh/tUser/form?id=${tUser.id}">修改</a>
					<a href="${ctx}/drh/tUser/delete?id=${tUser.id}" onclick="return confirmx('确认要删除该用户表吗？', this.href)">删除</a>
				</td></shiro:hasPermission>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>