<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Espace Client</title>
<style type="text/css">
body {
	background-color: #f4f4f4;
	text-align: center;
}

.container {
	background-color: white;
	width: 400px;
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

input[type="text"] {
	width: 100%;
	padding: 8px;
	margin: 5px 0 15px 0;
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
}

.header-form {
	background-color: #f9f9f9;
	padding: 10px;
	margin-bottom: 15px;
	border-bottom: 1px solid #eee;
}
</style>
</head>
<body>

	<%
	if (request.getAttribute("erreur") != null) {
	%>
	<p class="erreur"><%= request.getAttribute("erreur") %></p>
	<%
	}
	%>

	<h2 style="color: #337ab7;">Ajouter un client :</h2>
	<div class="container">
		<div class="header-form">Espace Client :</div>
		<form action="CreerClient" method="post">
			<label>Nom</label> <input type="text" name="nom" value=""> <label>Prénom</label>
			<input type="text" name="prenom" value=""> <label>Téléphone</label>
			<input type="text" name="telephone" value=""> <label>E-mail</label>
			<input type="text" name="email" value=""> <input
				type="submit" value="Ajouter Client" class="btn-submit">
		</form>
		<p
			style="text-align: center; font-size: 12px; margin-top: 35px; color: #cd3535;">Application
			de gestion des réservations © 2026</p>
	</div>
</body>
</html>