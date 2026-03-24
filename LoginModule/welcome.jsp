<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<% 
	// to remove cache 
	response.setHeader("Cache-Control","no-cache,no-store,no-validate");
	
	if(session.getAttribute("username")==null){
		response.sendRedirect("login.jsp");
	}
	
	%>
	Welcome page <br>
	${username}
	
	<a href = "videos.jsp"> watch video</a>
	
	
	<form action = "logout">
		<input type = "submit" value = "logout">
	</form>
	
	

</body>
</html>