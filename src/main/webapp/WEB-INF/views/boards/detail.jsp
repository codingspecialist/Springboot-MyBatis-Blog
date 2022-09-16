<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>

<div class="container">
	<br /> <br />


		<div class="d-flex">
		
			<a href="/boards/${boards.id}/updateForm" class="btn btn-warning">수정하러가기</a>

			<form>
				<button class="btn btn-danger">삭제</button>
			</form>
		</div>


	<br />
	<div class="d-flex justify-content-between">
		<h3>${boards.title}</h3>
		<div>좋아요수 : 10 <i id="iconHeart" class="fa-regular fa-heart"></i></div>
	</div>
	<hr />

	<div>${boards.content}</div>
</div>

<script>
	$("#iconHeart").click(()=>{
		let check = $("#iconHeart").hasClass("fa-regular");
		console.log(check);
		
		if(check == true){
			$("#iconHeart").removeClass("fa-regular");
			$("#iconHeart").addClass("fa-solid");
			$("#iconHeart").css("color", "red");
		}else{
			$("#iconHeart").removeClass("fa-solid");
			$("#iconHeart").addClass("fa-regular");
			$("#iconHeart").css("color", "black");
		}
	});
</script>

<%@ include file="../layout/footer.jsp"%>

