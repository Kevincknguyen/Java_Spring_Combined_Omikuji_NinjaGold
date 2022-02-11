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
	<div class="main" id="form">
    <h3>Fortune</h3>
    <form action='/process' method='post'>
    
    <div>
    	<label>Choose a number from 5-25:</label><br/>
    	<input type="number" name='number' min=5 max=25 placeholder=5-25>
    </div>
    
    
    <div>
    	<label>City:</label><br/>
    	<input type="text" name='city'>
    </div>
    
	<div>
    	<label>Name of any real person:</label><br/>
    	<input type="text" name='name'>
    </div>
    
	<div>
    	<label>Hobby or Proefssional endeavor:</label><br/>
    	<input type="text" name='hobby'>
    </div>
    
   <div>
    	<label>Any living thing:</label><br/>
    	<input type="text" name='living'>
    </div>
    
    <div>
    	<label>Message:</label><br/>
    	<input type="textarea" name='message'>
    </div>
    
    
    
    
    
    	<input type='submit' value='Submit'>
    </form>
    	
	</div>
    	
 </div>
    	


</body>
</html>