<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<!-- Latest compiled and minified CSS -->
<html lang="en">
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="styles.css">
<link href="https://fonts.googleapis.com/css?family=Oxygen" rel="stylesheet">
<meta charset="UTF-8">
<title>Paintings</title>
</head>
<body>


	<h1>Available Paintings</h1>
				<c:forEach var="p" items="${paintings}">
					<p class="name">${a.artist}</p>
					
					${p.title}<br />
					${p.price}<br />
					${p.note} <br />

					<form action="removePaintingFromGallery.do">
						<button class="button" name="remove" value="${a.title}">Delete Painting
							</button>
					</form>
					

					<img src="${p.image}" />
					<br />
			</c:forEach>
</body>
</html>