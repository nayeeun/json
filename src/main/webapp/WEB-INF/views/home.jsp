<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
<title>Home</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
      $(document).ready( function() {
         
/*          $.ajax({ 
            type: "get", 
            url : "${pageContext.request.contextPath}/sample/getText", 
            success : function(data) { 
               // Sucess시, 처리 
               console.log(data);
               $("#hello").text(data);

            }, 
            error : function(xhr, textStatus, errorThrown){ 
               //    Error시, 처리 
                  alert(xhr); 
                  alert(textStatus);    
                  alert(errorThrown);
               } 
            });    */
         
 /*        
         $.ajax({ 
            type: "get", 
            url : "${pageContext.request.contextPath}/sample/getSample.json", 
            success : function(data) { 
               // Sucess시, 처리 
               console.log(data);
               $("#hello").text(data);

            }, 
            error : function(xhr, textStatus, errorThrown){ 
               // Error시, 처리 
                  alert(xhr); 
                  alert(textStatus);    
                  alert(errorThrown);
               } 
            });   
            
            
         $.ajax({ 
             type: "get", 
             data:{weight:100,height:130}, 
             url : "${pageContext.request.contextPath}/sample/check.json", 
             success : function(data) { 
                // Sucess시, 처리 
                console.log(data);
                $("#hello").text(data);

             }, 
             error : function(xhr, textStatus, errorThrown){ 
                // Error시, 처리 
                   alert(xhr); 
                   alert(textStatus);    
                   alert(errorThrown);
                } 
             });            
         
      } ); */
   
   </script>
</head>
<body>
	<!-- <div id="hello"></div> --> 
	Hello World!!
</body>
</html>
</body>
</html>