<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<jsp:include page="../layout/navbar.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ajax Page</title>
</head>
<body>
<div class="container">
<h1>Ajax Page</h1>

<form id="msgForm">
  <input id="myMessage" />
  <button id="submitBtn"  class="btn btn-primary">送出</button>
</form>

<table class="mytable" id="list_table_json">
 <thead>
   <tr>
     <th>留言內容</th>
     <th>留言時間</th>
   </tr>
 </thead>
 
 <tbody>
 
 
 </tbody>


</table>


<script>
  /// ###### v1 ##############
  $(document).ready(function(){
    $('#submitBtn').click(function(e){

      e.preventDefault();  // 取消原本的送出按鈕功能
      var inputText = document.getElementById('myMessage').value
      var dtoObject = {"msg":inputText}
      var dtoJsonString = JSON.stringify(dtoObject);

      $.ajax({
        url:'${contextRoot}/msg/api/post',
        method:'post',
        contentType:'application/json',  // 送過去的格式
        dataType:'json', // 傳回來的格式
        data: dtoJsonString,
        success: function(result){
          //  console.log(result)

          msg_data = '<tbody>'
          $.each(result.content,function(index, value){
            msg_data += '<tr>'
            msg_data += '<td>' + value.text + '</td>'
            msg_data += '<td>' + value.added + '</td>'
            msg_data += '</tr>'
          })

          msg_data += '</tbody>'

          var totalPages = result.totalPages;

          for(var i = 1; i<=totalPages; i++){
            msg_data += '<button>' + i + '</button>'
          }



          var myTable = document.getElementById('list_table_json');
          myTable.getElementsByTagName('tbody')[0].innerHTML = msg_data;



        },
        error: function(error){
           console.log(error)
        }
      })
     


    })

  })




// ##################### v2 fetch #####################
// var submitBtn = document.getElementById('submitBtn');

// submitBtn.addEventListener('click',(event) =>{
//   var inputText = document.getElementById('myMessage').value
//   var dtoObject = {"msg":inputText}
//   var dtoJsonString = JSON.stringify(dtoObject);
//   var url = '${contextRoot}/msg/api/post'
//   event.preventDefault();
//   fetch(url,{
//   method:'post',
//   headers:{'Content-Type':'application/json'},
//   body: dtoJsonString
// })
// .then((result) =>{
//   return result.json();
// })
// .then((returnData)=>{
//   // console.log('returnData: ', returnData)

//   document.getElementById('msgForm').reset();

//   msg_data = '<tbody>'
//   for(const [key, value]  of Object.entries(returnData.content)){
//     msg_data += '<tr>'
//     msg_data += '<td>' + value.text + '</td>'
//     msg_data += '<td>' + value.added + '</td>'
//     msg_data += '</tr>'
//   }

//   msg_data += '</tbody>'

//   var totalPages = returnData.totalPages;

//   for(var i = 1; i<=totalPages; i++){
//     msg_data += '<button>' + i + '</button>'
//   }

//   var myTable = document.getElementById('list_table_json');
//   myTable.getElementsByTagName('tbody')[0].innerHTML = msg_data;


// })
// .catch((err)=>{
//   console.log(err)
// })
// })





</script>

</div>
</body>
</html>