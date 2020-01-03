<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 제이쿼리 -->
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<!-- 합쳐지고 최소화된 최신  css -->
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" />
<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css" />
<!--합쳐지고 최소화된 최신 자바스크립트   -->
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js" />
<!-- 참고 사이트 : https://araikuma.tistory.com/56 -->
</head>
<body>
<form role="form" method="post" autocomplete="off">
<div class="form-group">
	<p>
		<label for="userId">아이디</label>
		<input type="text" id="userId" name="userId" />
	</p>
</div>
<div class="form-group">	
	<p>
		<label for="userPass">패스워드</label>
		<input type="password" id="userPass" name="userPass" />
	</p>
</div>	
<div class="form-group">
	<p>
		<label for="userName">닉네임</label>
		<input type="text" id="userName" name="userName" />
	</p>
</div>	
	<p>
		<button type="submit">가입</button>
	</p>
	<p>
		<a href="/">처음으로</a>
	</p>
</form>

</body>
</html>