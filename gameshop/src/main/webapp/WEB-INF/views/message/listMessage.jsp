<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<jsp:include page="../layout/navbar.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container">
 <div class="row justify-content-center">
  <div class="col-10 col-md-6">
<h1>list page</h1>

<c:forEach var="message" items="${page.content}">
 <div class="card">
        <div class="card-header">
            最新的 <div><fmt:formatDate pattern="yyyy/MM/dd HH:mm:ss EEEE" value="${message.added}" />   </div>
        </div>
        <div class="card-body">
          <p class="card-text">${message.text}</p>
          <a  class="btn btn-primary" href="${contextRoot}/msg/edit/${message.id}" >編輯</a>
          <a  class="btn btn-primary" onclick="return confirm('確定刪除嗎?')" href="${contextRoot}/msg/delete?id=${message.id}">刪除</a>
        </div>
      </div>

</c:forEach>


<!-- page.totalPages -->

<c:forEach var="pageNumber" begin="1" end="${page.totalPages}">
    
  
  
  <c:choose>
    <c:when test="${pageNumber-1 != page.number }">
         <a href="${contextRoot}/msg/page?p=${pageNumber}"  class="btn btn-primary">${pageNumber}</a>
    </c:when>
    
    <c:otherwise>
          ${pageNumber}
    </c:otherwise>
  
  </c:choose>
  
  <c:if test="${pageNumber != page.totalPages}">
     👻
  </c:if>
  

</c:forEach>
</div>
</div>
</div>
</body>
</html>