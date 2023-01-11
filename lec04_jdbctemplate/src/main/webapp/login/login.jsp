<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<title>Spring Framework</title>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">	
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" 
		integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" 
		crossorigin="anonymous">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>	
</head>
<body>
	<div class="container" align="center">
		<div class="mt-4 p-5 bg-primary text-white rounded">
			<h3>LOG IN</h3>
			<c:if test="${ sessionScope.user.getId() != null }">
				<h5>${ sessionScope.user.getName() }님 환영합니다!</h5>			
			</c:if>
		</div>
		<br>
		
		<form action="login.do" method="post">
			<div class="row justify-content-md-center">
				<input type="text" class="col-2 input-group-text me-3" name="id" value="admin@gmail.com">
				<input type="password" class="col-2 input-group-text me-3" name="password" value="12345">
				<c:if test="${ sessionScope.user.getId() == null }">
					<input type="submit" class="col-1 btn btn-primary" value="login">
				</c:if>
				<c:if test="${ sessionScope.user.getId() != null }">
					<a href="logout.do" class="col-1 btn btn-primary">logout</a>
				</c:if>
			</div>	
		</form>
		
	</div>
</body>
</html>		