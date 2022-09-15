<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>

<div class="container">
	<br />
	<button id="btnDelete" class="btn btn-danger">회원탈퇴</button>
	<form>
		<input id="id" type="hidden" value="${users.id}" />
		<div class="mb-3 mt-3">
			<input type="text" class="form-control" placeholder="Enter username" value="${users.username}"
				readonly="readonly">
		</div>
		<div class="mb-3">
			<input id="password" type="password" class="form-control" placeholder="Enter password"
				value="${users.password}">
		</div>
		<div class="mb-3">
			<input id="email" type="email" class="form-control" placeholder="Enter email"
				value="${users.email}">
		</div>
		<button id="btnUpdate" type="button" class="btn btn-primary">회원수정완료</button>
	</form>
</div>

<script>
	$("#btnDelete").click(()=>{		
		let id = $("#id").val();
		
		$.ajax("/users/"+id,{
			type: "DELETE",
			dataType: "json" // 응답 데이터
		}).done((res)=>{
			if(res.code == 1){
				alert("회원탈퇴 완료");
				location.href = "/";
			}else{
				alert("회원탈퇴 실패"); 
			}
		});
	});
	

	$("#btnUpdate").click(()=>{
		let data = {
				password: $("#password").val(),
				email: $("#email").val()
		};
		
		
		let id = $("#id").val();
		
		$.ajax("/users/"+id,{
			type: "PUT",
			dataType: "json", // 응답 데이터
			data: JSON.stringify(data), // http body에 들고갈 요청 데이터
			headers : { // http header에 들고갈 요청 데이터
			      "Content-Type" : "application/json; charset=utf-8"
			}
		}).done((res)=>{
			if(res.code == 1){
				alert("회원 수정 완료");
				location.reload(); // f5
			}else{
				alert("업데이트에 실패하였습니다"); 
			}
		});
	});
</script>

<%@ include file="../layout/footer.jsp"%>

