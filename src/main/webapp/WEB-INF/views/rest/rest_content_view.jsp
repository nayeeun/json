<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
	    
		$("#updateForm").submit(function(event){
			
			event.preventDefault();
			
	        var bname = $("#bname").val();
	        var btitle = $("#btitle").val();
	        var bcontent = $("#bcontent").val();
	        
	        var bid = $("#bid").val();
	        
	        console.log(bcontent);	        
	        console.log($(this).attr("action"));
	        
	        var form = {
	        		bid: bid,
	        		bname: bname,
	                bcontent: bcontent,
	                btitle: btitle
	        };       
			
			
	        console.log(JSON.stringify(form));

	        $.ajax({
			    type : "PUT",
			    url : $(this).attr("action"),
			    cache : false,
			    contentType:'application/json; charset=utf-8',
 			    data: JSON.stringify(form), 
			    success: function (result) {       
					if(result == "SUCCESS"){
						//list로					
						$(location).attr('href', '${pageContext.request.contextPath}/rest/board/');				      	       
					}					        
			    },
			    error: function (e) {
			        console.log(e);
			    }
			})	       
	
	    }); // end submit()
	    
	}); // end ready()
</script>



</head>
<body>

   <table width="500" cellpadding="0" cellspacing="0" border="1">
      <form id="updateForm" action="${pageContext.request.contextPath}/rest/board/${content_view.bid}" >
         <input type="hidden" id="bid" name="bid" value="${content_view.bid}">
         <tr>
            <td> 번호 </td>
            <td> ${content_view.bid} </td>
         </tr>
         <tr>
            <td> 히트 </td>
            <td> ${content_view.bhit} </td>
         </tr>
         <tr>
            <td> 이름 </td>
            <td> <input type="text" id="bname" name="bname" value="${content_view.bname}"></td>
         </tr>
         <tr>
            <td> 제목 </td>
            <td> <input type="text" id="btitle" name="btitle" value="${content_view.btitle}"></td>
         </tr>
         <tr>
            <td> 내용 </td>
            <td> <textarea rows="10" id="bcontent" name="bcontent" >${content_view.bcontent}</textarea></td>
         </tr>
         <tr >
            <td colspan="2"> <input type="submit" value="수정"> &nbsp;&nbsp; <a href="list">목록보기</a> &nbsp;&nbsp; <a href="delete?bid=${content_view.bid}">삭제</a> &nbsp;&nbsp; <a href="reply_view?bid=${content_view.bid}">답변</a></td>
         </tr>
      </form>
   </table>
   
</body>
</html>