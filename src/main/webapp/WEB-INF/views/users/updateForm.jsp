<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>

<div class="container">
	<button class="btn btn-danger">회원탈퇴</button>
	<form>
		<div class="mb-3 mt-3">
			<input type="text" class="form-control" placeholder="Enter username" value="ssar" readonly="readonly">
		</div>
		<div class="mb-3">
			<input type="password" class="form-control"
				placeholder="Enter password" value="1234">
		</div>
		<div class="mb-3">
			<input type="email" class="form-control" placeholder="Enter email" value="ssar@nate.com">
		</div>
		<button type="submit" class="btn btn-primary">회원수정완료</button>
	</form>
</div>

<%@ include file="../layout/footer.jsp"%>

