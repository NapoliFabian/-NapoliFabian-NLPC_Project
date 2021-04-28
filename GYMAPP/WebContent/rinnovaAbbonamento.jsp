<%@ page language="java" import="java.util.*,it.meucci.*,java.sql.Date" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<% 
ArrayList <abbonamento> elenco;
elenco = (ArrayList <abbonamento> )session.getAttribute("ELENCO_ABBONAMENTI");
	String id = request.getParameter("id");
	int confronta = Integer.parseInt(id);
      abbonamento abb = null;
      abbonamento abb1 = null;
	for(int i=0;i<elenco.size();i++) 
{
	abb=(abbonamento)elenco.get(i);
	if(abb.getIdabbonamento()==confronta){
		abb1=abb;
		break;
	}
		
}
session.setAttribute("id_abb1", abb1.getIdabbonamento());
	
	

	
    
%>
<!DOCTYPE html>
<html>
<head>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">

<link rel="icon" type="image/png" href="img/icona.png"/>
<style>



.rinnova{
background:url("https://undesigns.net/wp-content/uploads/2018/02/blue-violet-motion-background-free-download-undesigns.jpg");
position:absolute;
width: 60%;
height:45%;
top:25%;
left:20%;
border-radius:30px;
font-family: Century Gothic;
}



img{
position: absolute;
right: 10%;
}

.button{
position: absolute;
right: 8%;
top: 60%;
border-radius:20px;
border-color:violet;
background-color: purple;
font-family: Century Gothic;

}
.button:hover{
background: linear-gradient(to right,purple,darkblue,purple);
}

.h2{
position: absolute;
top: 10%;
left:5%;
color: purple;
}

.h3{
position: absolute;
top:15%;
left:5%;
color:white;
font-family: fantasy;
font-size: 40px;
}


</style>




<meta charset="ISO-8859-1">
<title>Rinnova Abbonamento</title>
</head>
<body style="background-image: url(images/bg-01.jpg)";>
 <ul class="nav justify-content-center">
  <li class="nav-item">
  
  </li>
  <li class="nav-item">
     <a class="nav-link active" aria-current="page" href="abbonamento.jsp">INDIETRO</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="#"></a>
  </li>
  <li class="nav-item">
    <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true"></a>
  </li>
</ul>
<br>
<br> 

<div class="rinnova">

	<form action="Gestore" method="POST">
		<img src="https://maxcdn.icons8.com/Share/icon/nolan/Finance/bank_cards1600.png" width="140" height="140">
		
		<h3 class="h3">
		INIZIO<br>
		<input type="date" name="inizio" required><br>
		FINE<br><input type="date" name="fine" required></h3>
		<input class="button" type="submit" name="INSERT" value="RINNOVA ABBONAMENTO">
	</form>
	</div>
</body>
</html>