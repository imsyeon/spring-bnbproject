<%@page import="com.spring.web.vo.CommentVO"%>
<%@page import="java.util.List"%>
<%@page import="com.spring.web.vo.BoardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>


<!doctype html>
<html lang="en">
<head>

<title>getBoard</title>


<style>

.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
}

.button {
	display: grid;
	justify-content: end;
	padding: 10px 10px;
	margin-bottom: 20px;
	background-color: #ff385c;
	color: white;
	height: 45px;
	font-weight: 500;
	border-radius: 6px;
	border: 0;
	cursor: pointer;
	 text-align: center;
}
a{
 text-align: center;
}

.comment_content2 {
	margin: 20px 10px 20px 10px;
}

.comment_name {
	margin: 20px 10px 20px 10px;
}

.comment_box {
	margin: 20px 10px 20px 10px;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}
</style>

</head>

<body>

	<div class="comment_box">
		<hr>

		<form  id="commentForm" name="commentForm" method="post">
			<div class="comment_content2">
				<input type="text" class="form-control" id="comment" name="comment_content"
					placeholder="후기를 남겨주세요" required/>
				<div class="invalid-feedback">Valid title is required.</div>
			</div>
			<input type="hidden"  id="comment_name"  name="comment_name" value="<%=session.getAttribute("user_name")%>"/>
			<input type="hidden" name="board_idx" value="${board.board_idx}" />
			<hr>
			<a href='#' onclick="fn_comment('${result.code }')" class="button">후기남기기</a>
		</form>
	
	 <form id="commentListForm" name="commentListForm" method="post">
        <div id="commentList">
        </div>
    </form>
	</div>
	
		<script src="https://code.jquery.com/jquery-3.4.1.js" type="text/javascript"></script>
	
	<script>
/*
 * 댓글 등록하기(Ajax)
 */
function fn_comment(code){
   
    $.ajax({
        type:'POST',
        url : "<c:url value='/board/addComment.do'/>",
        data:$('#commentForm').serialize(),
        success : function(data){
        	 //console.log("fn_comment---success")
            if(data=="success")
            {
                getCommentList();
                $("#comment").val("");
            }
        },
        error:function(request,status,error){
            //alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
       }
        
    });
}
 
/**
 * 초기 페이지 로딩시 댓글 불러오기
 */
$(function(){
    
    getCommentList();
    
});
 
/**
 * 댓글 불러오기(Ajax)
 */
function getCommentList(){
    
    $.ajax({
        type:'GET',
        url : "<c:url value='/board/commentList.do'/>",
        dataType : "json",
        data:$("#commentForm").serialize(),
        contentType: "application/x-www-form-urlencoded; charset=UTF-8", 
        success : function(data){
            
            var html = "";
           
            if(data.length > 0){
                
                for(i=0; i<data.length; i++){
                    html += "<div>";
                    html += "<div><table class='table'><h6><strong>"+data[i].comment_name+"</strong></h6>";
                    html += data[i].comment_content + "<tr><td></td></tr>";
                    html += "</table></div>";
                    html += "</div>";
                }
                
            } else {
                
                html += "<div>";
                html += "<div><table class='table'><h6><strong>등록된 댓글이 없습니다.</strong></h6>";
                html += "</table></div>";
                html += "</div>";
                
            }
            
           
            $("#commentList").html(html);
            
        },
        error:function(request,status,error){
            
       }
        
    });
}
 
</script>

	
	<script src="resources/js/bootstrap.bundle.min.js"></script>


	<script src="resources/js/form-validation.js"></script>
</body>
</html>
