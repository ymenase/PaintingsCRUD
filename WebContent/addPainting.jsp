<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
		      
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="styles.css">
<link href="https://fonts.googleapis.com/css?family=Oxygen"
	rel="stylesheet">
<meta charset="UTF-8">


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add a Painting</title>
</head>
<body>

	<form action="addPaintingToGallery.do">
		Title <input type="text" name="title" value="" /> 
		Artist<input type="text"
			name="artist" value="" /> 
			Image
			<input type="text" name="image" value="" />

		<button class="button" name="add" value="add">Submit Painting</button>
	</form>

	
</body>
</html>