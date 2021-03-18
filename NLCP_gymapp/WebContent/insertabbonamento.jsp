<%@ page language="java" import="java.util.*,it.meucci.*"
	contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Inserisci Abbonamento</title>
</head>
<body bgcolor="green">
	<h1>Inserimento Abbonamenti</h1>
	<br>
	<br>
	<a href="dashboard.html">Home</a>
	<br>
	<br>

	<form method="POST" action="GestioneProdotti">
		<table border="3" bordercolor="brown" bgcolor="white">


			<tr>
				<td>ID abbonamento</td>
				<td><input type="text" name="IdAbbonamento" required></td>
			</tr>

			<tr>
				<td>Inizio</td>
				<td><input type="text" name="inizioabb" required></td>
			</tr>

			<tr>
				<td>Fine</td>
				<td><input type="text" name="fineabb" required></td>
			</tr>

			<tr>
				<td>Codice Fiscale</td>
				<td><input type="text" name="CodF" required></td>
			</tr>

			<tr>
				<td>Nome corso</td>
				<td><input type="text" name="NomeCorso" required></td>
			</tr>


			<tr>
				<td colspan="2"><input type="submit" value="INVIA"> <input
					type="submit" value="ANNULLA"></td>
			</tr>

		</table>
	</form>
</body>
</html>