<%@ page language="java" import="java.util.*,it.meucci.*,java.sql.Date" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" type="image/png" href="img/icona.png"/>
<meta charset="ISO-8859-1">
<link href="css/dashsocio.css" rel="stylesheet"  type="text/css">
<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>

<title>HOME</title>
</head>
<body style="background-image: url(https://undesigns.net/wp-content/uploads/2018/02/blue-violet-motion-background-free-download-undesigns.jpg);">
<script>

<%
String username = (String)session.getAttribute("username");
GestoreFile load = new GestoreFile();
String[] datidb = load.DBSettings();
DBManager db = new DBManager(datidb[0],datidb[1],datidb[2]);
ArrayList<String[]> allenamenti= new ArrayList<String[]>();
allenamenti = db.returnTraining(username);
%>

function mostrallenanti(){
	document.getElementById("All").style.visibility='visible';
	
}
function togliallenanti(){
	document.getElementById("All").style.visibility='hidden';
}


</script>
    <header>
    <div class="icon"><img src="img/angolo.png" alt="" width="100%" height="100%"></div>
    <div class="title">GYM APP</div>
    </header>
    <nav style="text-align: right;">
    <i class="flag flag-italy"></i>
    <a href="chisiamo.jsp">CHI SIAMO</a>
    <a  href="Gestore?cmd=logout">LOGOUT</a>
   <!-- <img alt="" src="img/flags/ita.png" width="25" height="25"  style="border-radius: 50px"> -->
    </nav>
    <div style="text-align: center;width:100%;margin-top: 5%;">
           <center><div class="immaginecentrale"><center><img src="img/nopainnogain.jpg" alt="" width="100%" height="50%" style="border: 1px solid blueviolet;"></center></div> </center>
    </div>


    <div style="width:100%;margin-top: 5%;"> 
    <div class="schede">

        <button class="bottoni">ALLENAMENTI</button><br><br><br>

        <img src="img/allenamentoimg.jpg" alt="" width="80%" height="100%" class="imgschede" onmouseover="mostrallenanti()" onmouseleave="togliallenanti()">
        <br><br>
             		<div class="allenamenti" id="All">
             		<div class="scrittaallenamento">
             		<h1>PROSSIMO ALLENAMENTO:</h1>
             		</div>
 		
 			<% 
 			if(allenamenti.isEmpty()){
 				%>
 				<div class="allenamento">
 				<h3>Nessun Allenamento</h3></div>
 				<%
 			}
 			else{
 			for(int i=0;i<allenamenti.size();i++){
 			String[]allenamento = allenamenti.get(i);
 				%>	
 				<div class="allenamento">
 				<i class='fas fa-calendar-alt' style='font-size:36px' style="color:green"></i><%=allenamento[0]%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class='far fa-hourglass' style='font-size:36px'></i><%=allenamento[1] %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class='fas fa-fire-alt' style='font-size:36px'></i>  <%= allenamento[2]%></div>
 				
 			<%} }%>
    </div>
    </div>
    <div class="schede">
    
        <button class="bottoni">CORSI</button><br><br><br>
        <a href="corsiSocio.jsp"><img src="img/corsoimg.jpg" alt="" width="80%" height="100%" class="imgschede" onclick="mostracorsi()"></a>
    </div>
    </div>

	<footer>
        <table>
            <tr><td><h2>GYM APP</h2></td><td><h2>2021</h2></td><td><h2>DEVELOPER</h2> <br>NAPOLI FABIAN <br>LONGO CRISTIAN <br>CATALDO SIMONE <br>PRIMICERI SAMUEL LUIGI</td></tr>
        </table>
    </footer>
</body>
</html>