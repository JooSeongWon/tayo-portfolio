<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="ko">
<head>
    <c:import url="../template/head-meta.jsp"/>
    <title>타요 - 자주묻는 질문</title>
   
<style type="text/css">

section {
    background-color: var(--color-white);
    margin-top: 20px;
    padding: 30px;
    width: 900px;
    height: 680px;
}

.wrap {
    width: 750px;
    height: 540px;
    margin: 50ps auto;
    overflow-y: scroll;
}

.child {
	padding-left: 100px;
}
.fa-arrow-down{
	float: right;
}

.answer {
	display: none;
}
</style>
    
</head>
<body>
<c:import url="../template/header.jsp"/>

<section class="all-shadow">
	<h1 class="tayo-under-line" style="text-align: center">Popular articles</h1>
	<div class="wrap">
	<c:forEach items="${list }" var="question">
		<div class="child">
			<span class="question">${question.questionContent}</span>
			<i class="fas fa-arrow-down"></i><br>
			<span class="answer">${question.answerContent }</span>
			<hr>	
		</div> <!-- child -->
	</c:forEach>
	</div> <!-- wrap -->
</section>

<script type="text/javascript">
$(document).ready(function(){
	
	const list = document.queryselectorAll('.child');
	
	for(let item of list) {
		item.getChild
	}
	
	
	
	
	
	$(".fa-arrow-down").click(function() {
		$.ajax({
				type:"post",
				url:"/question",
				data: {},
				dataType: 'html',
				success: function(data){
					
					$('.answer').show(data)
				},
				error: function(){
					alert("error")
				}
			}		
		)
	})
})
</script>
<c:import url="../template/footer.jsp"/>
</body>
</html>