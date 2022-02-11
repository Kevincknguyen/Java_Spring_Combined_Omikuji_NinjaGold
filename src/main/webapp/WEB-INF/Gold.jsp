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
	<h1><c:out value="${gold}" ></c:out></h1>
	<h1><a href=" http://localhost:8080/reset">Reset</a></h1>
	<div class="main" id="gold">
		<div>
			<form action='/riches' method='post'> 
				<h1>Farm</h1>
				<p>Yield:10-20</p>
				<input type="hidden" value=10 name="goldYield">
				<input type="hidden" value="farm" name="place">
				<input type="submit" value="Submit">
			</form>
		</div>
		
		<div>
			<form action='/riches' method='post'> 
				<h1>Cave</h1>
				<p>Yield:5-10</p>
				<input type="hidden" value=5 name="goldYield">
				<input type="hidden" value="cave" name="place">
				<input type="submit" value="Submit">
			</form>
		</div>
		
		<div>
			<form action='/riches' method='post'> 
				<h1>House</h1>
				<p>Yield: 2-5</p>
				<input type="hidden" value=2 name="goldYield">
				<input type="hidden" value="house" name="place">
				<input type="submit" value="Submit">
			</form>
		</div>
		
		<div>
			<form action='/riches' method='post'> 
				<h1>Casino</h1>
				<p>Yield: 50 give... or take!</p>
				<input type="hidden" value=0 name="goldYield">
				<input type="hidden" value="casino" name="place">
				<input type="submit" value="Submit">
			</form>
		</div>
		
		
	</div>
		<div class="message">
			
			<c:forEach var="message" items="${messages}">
				
				<h1>
					<c:out value="${message}"></c:out>
				</h1>
			
				
			
			</c:forEach>
			<
		</div>

</div>





</body>
</html>