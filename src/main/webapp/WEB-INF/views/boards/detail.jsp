<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>

<input id="page" type="hidden" value="${sessionScope.referer.page}">
<input id="keyword" type="hidden" value="${sessionScope.referer.keyword}">
<div class="container">
	<br /> <br />


		<div class="d-flex">
		
			<a href="/boards/${boards.id}/updateForm" class="btn btn-warning">수정하러가기</a>

			<form>
				<input id="id" type="hidden" value="${boards.id}" />
				<button id="btnDelete" class="btn btn-danger">삭제</button>
			</form>
		</div>


	<br />
	<div class="d-flex justify-content-between">
		<h3>${boards.title}</h3>
		<div>좋아요수 : <span id="countLove">10</span> <i id="iconLove" class="fa-regular fa-heart my_pointer"></i></div>
	</div>
	<hr />

	<div>${boards.content}</div>
</div>

<script>

	$("#btnDelete").click(()=>{
		deleteById();
	});
	
	function deleteById(){
		let id = $("#id").val();
		
		let page = $("#page").val();
		let keyword = $("#keyword").val();
		
		$.ajax("/boards/" + id, {
			type: "DELETE",
			dataType: "json" // 응답 데이터
		}).done((res) => {
			if (res.code == 1) {
				//location.href = document.referrer;
				location.href = "/?page="+page+"&keyword="+keyword;  //  /?page=?&keyword=?
			} else {
				alert("글삭제 실패");
			}
		});
	}
	

	$("#iconLove").click(()=>{
		let isLovedState = $("#iconLove").hasClass("fa-solid");
		if(isLovedState){
			deleteLove();
		}else{
			insertLove();
		}
		renderLove(isLovedState);
	});
	
	function insertLove(){
		
	}
	function deleteLove(){
		
	}
	
	function renderLove(isLovedState){
		if(isLovedState == true){
			$("#iconLove").removeClass("fa-regular");
			$("#iconLove").addClass("fa-solid");
			$("#iconLove").css("color", "red");
		}else{
			$("#iconLove").removeClass("fa-solid");
			$("#iconLove").addClass("fa-regular");
			$("#iconLove").css("color", "black");
		}
	}
</script>

<%@ include file="../layout/footer.jsp"%>

