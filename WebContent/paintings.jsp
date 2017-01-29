<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<!-- Latest compiled and minified CSS -->
<html lang="en">
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

<link rel="stylesheet" href="styles.css" />
<title>Paintings</title>
</head>
<body>

		
		
		<h1>Available Painting Information</h1>
		<c:forEach var="p" items="${paintings}">
			<div class="container-fluid">
				<div id="row">
					<div class="col-sm-4">
						<img class="img-circle" src="${p.image}"  />
					</div>
					<div class="col-sm-4">
	
						<p class="title">${p.title}</p>

						${p.artist}<br /> ${p.price}<br /> ${p.note} <br /> 
</div>
					<div class="col-sm-4">
				<form action="removePaintingFromGallery.do">
					<button class="button" name="remove" value="${p.title}">Delete
						Painting</button>
				</form>
<form action="updatePaintingNotes.do">
						Current Note: ${a.note} <br /> <input type="text" name="note"
							value="" /> <input type="hidden" name="name" value="${a.name}" />
						<button class="button" name="update" value="update">Update
							${p.title} Notes</button>
					</form>

					<form action="clearPaintingNotes.do">
						<button class="button" name="clear" value="${a.name}">Clear
							${p.title} Notes</button>
					</form>

					<br />
				</div>
				</div>
			</div>
		</c:forEach>
		
		
	<h1>Add Paintings</h1>
	
		<form method="link" action="addPainting.jsp">
			<input type="submit" value="Add Painting">
		</form>
</body>
</html>