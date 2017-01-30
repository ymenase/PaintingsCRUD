<%@ page language="java" 
		 contentType="text/html; charset=UTF-8"
    	 pageEncoding="UTF-8"%>
    	 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" 
	       prefix="c" %>
	       
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" 
			  content="text/html; charset=UTF-8">
			  
		<!-- Latest compiled and minified CSS -->
		<link rel="stylesheet" 
			  href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" 
			  integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" 
			  crossorigin="anonymous">
		
		<!-- Optional theme -->
		<link rel="stylesheet" 
			  href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" 
			  integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" 
			  crossorigin="anonymous">
		
		<!-- Other CSS -->	  
		<link rel="stylesheet" 
			  href="styles.css" />
		
		<title>Edit Painting</title>
	</head>
<body>


	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-4">
				<img class="img-circle" src="${painting.image}" />
			</div>
			<div class="col-sm-4">
				<ul>
					<li>Current Information</li>
					<li>Title: ${painting.title}</li>
					<li>Artist: ${painting.artist}</li>
					<li>Price: ${painting.price}</li>
					<li>Notes: ${painting.note}</li>
				</ul>
			</div>
			<div class="col-sm-4">
				<form action="update.do" method="POST">
				<input type="hidden" name="oldName" value="${p.title}">
				<div class="form-group">
			      	<input type="text" 
			      		   id="pTitle" 
			      		   name="title" 
			      		   value="${painting.title}">
				</div>
				<div class="form-group">
			        <input type="text" 
			        	   id="pArtist" 
			        	   name="artist" 
			        	   value="${painting.artist}">
				</div>
				<div class="form-group">
					<input type="text" 
						   id="pPrice" 
						   name="price" 
						   value="${painting.price}">
				</div>
				<div class="form-group">
					<input type="text" 
						   id="pNote" 
						   name="note" 
						   value="${painting.note}">
				</div>
				<div class="form-group">
					<input type="text" 
						   id="pImage" 
						   name="image" 
						   value="${painting.image}">
				</div>
			        <input type="submit" value="Submit" />
			    
			    </form>
	      	
	     	</div>
	 	</div>
	 </div>
	 
	
</body>
</html>