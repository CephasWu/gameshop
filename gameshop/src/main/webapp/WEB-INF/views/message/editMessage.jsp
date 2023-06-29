<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<jsp:include page="../layout/navbar.jsp"></jsp:include>
<html>
<head>
<meta charset="UTF-8">
<title>EditPage</title>
</head>
<body>
<div class="container">
 <div class="row justify-content-center">
  <div class="col-10 col-md-6">

<h1>EditPage</h1>

<div class="card">
		<div class="card-header">請輸入資訊</div>
		<div class="card-body">
			<form:form modelAttribute="workMessages"
			class="form-control"
            action="${contextRoot}/msg/editPost">
            
            <form:input type="hidden" path="id" />
            <form:input type="hidden" path="added" />

				<form:input class="form-control" path="text" />

				<input type="submit">
			</form:form>
		</div>
	</div>


</div>
</div>
</div>
</body>
</html>