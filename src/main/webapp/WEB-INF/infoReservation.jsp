<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="models.Reservation"%>
<%@ page import="models.Client"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Information Reservation</title>
<style>
body {
	font-family: Arial, sans-serif;
	text-align: center;
	background-color: #f9f9f9;
}

.succes {
	color: green;
	font-weight: bold;
	font-size: 18px;
	margin-top: 20px;
}

table {
	margin: 20px auto;
	border-collapse: collapse;
	width: 80%;
	background-color: white;
}

th, td {
	border: 1px solid #ddd;
	padding: 10px;
	text-align: center;
}

th {
	background-color: #f2f2f2;
}

a {
	background-color: #337ab7;
	color: white;
	padding: 10px;
	border: none;
	width: 100%;
	border-radius: 4px;
	cursor: pointer;
	text-decoration: none;
	font-weight: bold;
}
</style>
</head>
<body>

	<%
	if (request.getAttribute("succes") != null) {
	%>
	<p class="succes"><%=request.getAttribute("succes")%></p>
	<%
	}
	%>

	<h3 style="color: brown;">Affichage des données de la réservation :</h3>

	<%
	Reservation r = (Reservation) request.getAttribute("reservation");
	if (r != null) {
		Client c = r.getClient();
	%>
	<table>
		<tr>
			<th>Nom</th>
			<th>Prénom</th>
			<th>Téléphone</th>
			<th>E-mail</th>
			<th>Type</th>
			<th>Prix</th>
			<th>Vue</th>
		</tr>
		<tr>
			<td><%=c.getNom()%></td>
			<td><%=c.getPrenom()%></td>
			<td><%=c.getTelephone()%></td>
			<td><%=c.getEmail()%></td>
			<td><%=r.getType()%></td>
			<td><%=r.getPrix()%></td>
			<td><%=r.getVue()%></td>
		</tr>
	</table>
	<%
	}
	%>
	<br>
	<a href="Reservation.jsp">Retourne au formulaire d'ajout</a>
</body>
</html>