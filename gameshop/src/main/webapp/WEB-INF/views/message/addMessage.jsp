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


<title>新增留言</title>
</head>
<body>
    <div class="container">
     <div class="row justify-content-center">
        <div class="col-10 col-md-6">
	<h1>新增留言</h1>

	<div class="card">
		<div class="card-header">請輸入資訊</div>
		<div class="card-body">
			<form:form modelAttribute="workMessages"
			class="form-control"
            action="${contextRoot}/msg/post">

				<form:input class="form-control" path="text" />

				<input type="submit" class="btn btn-primary">
			</form:form>
		</div>
	</div>


    <p />
    <div class="card">
        <div class="card-header">
            最新的 <div><fmt:formatDate pattern="yyyy/MM/dd HH:mm:ss EEEE" value="${latestMsg.added}"/>   </div>
        </div>
        <div class="card-body">
          <p class="card-text">${latestMsg.text}</p>

        </div>
      </div>


</div>
</div>
</div>
</body>
</html>
