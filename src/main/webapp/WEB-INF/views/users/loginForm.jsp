<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>

<div class="container">
	<form>
		<div class="mb-3 mt-3">
			<input id="username"
				type="text" class="form-control"
				placeholder="Enter username">
		</div>
		<div class="mb-3">
			<input id="password"
				type="password" class="form-control" 
				placeholder="Enter password" >
		</div>
		<button id="btnLogin" type="button" class="btn btn-primary">로그인</button>
	</form>
</div>

<script>
	$("#btnLogin").click(()=>{		
		let data = {
				username: $("#username").val(),
				password: $("#password").val()
		};
		
		$.ajax("/login",{
			type: "POST",
			dataType: "json", // 응답 데이터
			data: JSON.stringify(data), // http body에 들고갈 요청 데이터
			headers : { // http header에 들고갈 요청 데이터
			      "Content-Type" : "application/json; charset=utf-8"
			}
		}).done((res)=>{
			if(res.code == 1){
				location.href = "/";
			}else{
				alert("로그인 실패, 아이디 패스워드를 확인해주세요"); 
			}
		});
	});
</script>

<%@ include file="../layout/footer.jsp"%>

