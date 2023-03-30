<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Bibliothèque - Liste des livres</title>
	<link rel="icon" href="assets/img/icon.png">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp" crossorigin="anonymous">
</head>
<body>

	<!-- barre de navigation -->
	<jsp:include page="navbar.jsp" />
	
	<div class="m-4">
		<form class="w-50" method="post">
			<input class="form-control mt-2" type="text" placeholder="Entrez un nom de livre" name="bookName">
			<input class="form-control mt-2" type="text" placeholder="Entrez un nom d'auteur" name="authorName">
			<select class="form-select mt-2" name="genre">
			 	<c:forEach items="${ GENRES }" var="value">
			 		<option value="${ value.getId() }"><c:out value="${ value.getName() }" /></option>
			 	</c:forEach>
			</select>
			<input class="form-check-input mt-2" type="checkbox" id="flexCheckChecked" name="dispo">
			<label class="form-check-label" for="flexCheckChecked">
			    Disponible
			</label>
		    <button class="btn btn-outline-success mt-2" type="submit">Chercher</button>
		</form>
		
		<!-- liste des livres -->
		<div class="mt-4">
			<c:forEach items="${ BOOKS }" var="value">
				<div class="card" style="width: 18rem;">
				  	<div class="card-body">
				    	<h5 class="card-title"><c:out value="${ value.getTitle() }" /></h5>
				    	<p class="card-text"><c:out value="${ value.getDescription() }" /></p>
				  	</div>
				  	<div class="card-body">
				    	<a href="#" class="card-link">Card link</a>
				    	<a href="#" class="card-link">Another link</a>
			 		</div>
				</div>
			</c:forEach>
		</div>
	</div>

	<!-- import bootstrap -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js" integrity="sha384-qKXV1j0HvMUeCBQ+QVp7JcfGl760yU08IQ+GpUo5hlbpg51QRiuqHAJz8+BrxE/N" crossorigin="anonymous"></script>

</body>
</html>