<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Espace Reservation</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f4f4f4;
	text-align: center;
}

.container {
	background-color: white;
	width: 450px;
	margin: 20px auto;
	padding: 20px;
	box-shadow: 0px 0px 10px #ccc;
	border-radius: 5px;
	text-align: left;
}

.erreur {
	color: red;
	font-weight: bold;
	text-align: center;
}

input[type="text"], select {
	width: 100%;
	padding: 8px;
	margin: 5px 0 10px 0;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}

.btn-submit {
	background-color: #5cb85c;
	color: white;
	padding: 10px;
	border: none;
	width: 100%;
	border-radius: 4px;
	cursor: pointer;
	font-weight: bold;
	margin-top: 10px;
}

.header-form {
	background-color: #93fdff;
	padding: 10px;
	margin-bottom: 10px;
	border-bottom: 1px solid #93fdff;
	font-weight: bold;
	color: #2600fb;
}
</style>
</head>
<body>
	<%
	if (request.getAttribute("erreur") != null) {
	%>
	<p class="erreur"><%=request.getAttribute("erreur")%></p>
	<%
	}
	%>

	<h2 style="color: #337ab7;">Ajouter une réservation :</h2>

	<div class="container">
		<form action="CreerReservation" method="post">
			<div class="header-form">Espace Client :</div>
			<label>Nom</label> <input type="text" name="nom"> <label>Prénom</label>
			<input type="text" name="prenom"> <label>Téléphone</label> <input
				type="text" name="telephone"> <label>E-mail</label> <input
				type="text" name="email"> <label>Type</label> <select
				name="type">
				<option value="Single">Chambre Single</option>
				<option value="Double">Chambre Double</option>
				<option value="Suite">Chambre Suite</option>
				<option value="Familiale">Chambre Familiale</option>
			</select> <label>Prix</label> <input type="text" name="prix"> <label>Vue</label>
			<select name="vue">
				<option value="Mer">Vue sur Mer</option>
				<option value="Piscine">Vue sur Piscine</option>
				<option value="Jardin">Vue sur Jardin</option>
				<option value="Ville">Vue sur Ville</option>
			</select> <input type="submit" value="Ajouter Réservation" class="btn-submit">
		</form>
		<p
			style="text-align: center; font-size: 12px; margin-top: 35px; color: #cd3535;">Application
			de gestion des réservations © 2026</p>
	</div>
</body>
</html>