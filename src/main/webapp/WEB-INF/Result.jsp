<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/css/style.omikuji.css">
</head>
<body>
	
<div class="container">
	<div class="main" id="result">
	
		<h1>Omikuji Results</h1>
		
		<p>In <c:out value="${number}" ></c:out> years, the city of <c:out value="${city}" ></c:out> will become the hub for world finals of 
		<c:out value="${hobby}" ></c:out>. You are the leader with your co-captain <c:out value="${name}" ></c:out> and together you are at the brink of bringing
		the championship home. </br> With your mascot <c:out value="${living}" ></c:out> at your side, you turn to your team for one last huddle. As the bell rings, and the croud cheers
		you shout your battlecry: 
		</p>
		<h1><c:out value="${message}" ></c:out></h1>
		
		<a href="http://localhost:8080/">return</a>
	</div>
	
	<p>Name:<c:out value="${name}" ></c:out></p>
	
	<p>City:<c:out value="${city}" ></c:out></p>
	
	<p>Hobby:<c:out value="${hobby}" ></c:out></p>
	
	<p>Living<c:out value="${living}" ></c:out></p>
	
	<p>Number:<c:out value="${number}" ></c:out></p>
	
	<p>Message: <c:out value="${message}" ></c:out></p>
	
</div>	
</body>
</html>