<%@ page language="java" import="java.util.*,it.meucci.*"
	contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Inserisci Soci</title>
</head>
<body bgcolor="green">
	<h1>Inserimento soci</h1>
	<br>
	<br>
	<a href="socio.jsp">Home</a>
	<br>
	<br>

	<form method="POST" action="GestioneProdotti">
		<table border="3" bordercolor="brown" bgcolor="white">


			<tr>
				<td>ID Socio</td>
				<td><input type="text" name="IdSocio" required></td>
			</tr>

			<tr>
				<td>Nome</td>
				<td><input type="text" name="Nome" required></td>
			</tr>

			<tr>
				<td>Cognome</td>
				<td><input type="text" name="Cognome" required></td>
			</tr>

			<tr>
				<td>Telefono</td>
				<td><input type="text" name="Telefono" required></td>
			</tr>

			<tr>
				<td>Sesso</td>
				<td><input type="text" name="Sesso" required></td>
			</tr>

			<tr>
				<td>Data di nascita</td>
				<td><input type="text" name="DataDiNascita" required></td>
			</tr>


			<tr>
				<td colspan="2"><input type="submit" value="INVIA"> <input
					type="submit" value="ANNULLA"></td>
			</tr>

		</table>
	</form>
</body>
</html>