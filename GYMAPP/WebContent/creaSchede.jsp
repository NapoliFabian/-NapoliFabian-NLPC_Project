<%@ page language="java" import="java.util.*,it.meucci.*,java.sql.Date" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" type="image/png" href="img/icona.png"/>
<meta charset="ISO-8859-1">
<title>Crea Schede</title>
<%
ArrayList<Utente> soci = new ArrayList<Utente>();
try {
	GestoreFile load = new GestoreFile();
	String[] datidb = load.DBSettings();
	DBManager db = new DBManager(datidb[0],datidb[1],datidb[2]);
	soci= db.allSocio();	
} catch (Exception e) {
	System.out.println(e.getMessage());
}


%>  
<style>
  html {
  scroll-behavior: smooth;
}
  
ul {
list-style-type: none;
margin: 0;
padding: 0;
overflow: hidden;
background: linear-gradient(to right,blueviolet,blue);
}

li {
float: left;
}

li a {
display: block;
color: white;
text-align: center;
padding: 14px 16px;
font-family:Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif;
text-decoration: none;
}

li a:hover {
background-color: #111;
}
h1{
   /* width: 20%;
    height: 5%;*/
    margin: 0px;
    color: white;
    font-family:Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif;
    font-size: 40px;
    padding-top: 1%;
}
.sottotitolo{
   /* width: 20%;
    height: 5%;*/
    margin: 0px;
    color: white;
    font-family:Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif;
   /* font-size: 40px;
    padding-top: 1%;*/
}
body{
    margin: 0px;
}
header{

    background: linear-gradient(to right,blueviolet,blue);
    opacity: 0.8;
  height:100px; 
}
.link{
    float: right;
    width: auto;
    height: auto;
}
.centrale{

    position: absolute;
    left: 10%;
    right: 10%;
    top:30%;
    padding-top: 1%;
    padding-bottom: 1%;
}
/*.box{
    width: 20%;
    height: 45%;
    background-color: white;
    float: left;
    text-align: center;
    border-radius: 50px;
    padding: 7px;
    margin-left: 9%;
    margin-top: 2%;
}
.box:hover{
    background-color: dodgerblue;
}*/

.img{

position: absolute;
width: 15%;
height: 15%;
border: 0px solid black;
right:5%;
top:40%;

}

footer{
    width: 100%;
    background-color: black;
    position: absolute;
  /*  bottom: 1px;*/
  top:1299;
}



 th input{
color: blue;

}
input{

font-family: Century Gothic;
font-weight: bold;
background: transparent;
border: 0px;
text-align: center;

}
table{
border-collapse:collapse;
margin-top:50px ;
margin-bottom: 50px;
font-family: Century Gothic;
box-shadow: 10px 10px 5px rgba(210, 215, 211,0.2);
border-color:bluviolet;
border-width: inherit;
}

.tableFoother{
width: 100%;
height: auto;
}
td{

width: 33%;
text-align: center;
padding:16px;

}

td {
background-color: #A0D2EE
}

th{
color:blue;
font-weight: bold;
background: linear-gradient(to right,blueviolet,#A0D2EE,blueviolet );
/*background: linear-gradient(to right,blueviolet,blue)*/

}
.sidenav {
  height: 100%;
  width: 0;
  position: fixed;
  z-index: 1;
  top: 0;
  left: 0;
  background-color: #111;
  overflow-x: hidden;
  transition: 0.5s;
  padding-top: 60px;
}

.sidenav a {
  padding: 8px 8px 8px 32px;
  text-decoration: none;
  font-size: 25px;
  color: #818181;
  display: block;
  transition: 0.3s;
}

.sidenav a:hover {
  color: #f1f1f1;
}

.sidenav .closebtn {
  position: absolute;
  top: 0;
  right: 25px;
  font-size: 36px;
  margin-left: 50px;
}

@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
}
</style>
<% 
String[] lang = (String[])session.getAttribute("lang");
String username = (String)session.getAttribute("username");
%>
</head>

<body>

	<header>
<center><h1>GYM APP</h1></center>
<center><h3 class="sottotitolo"><%=lang[0]%> <%=username%></h3></center>
<!--<div class="link">
 <a>OPTION</a>   
</div>-->
</header>

	<ul>
    <li><span style="font-size:30px;cursor:pointer;color: white" onclick="openNav()">&#9776;</span></li>
    <li><a href="dashboard.jsp">DASHBOARD</a></li>
    <br><br>

    
    
	<form action ="pdfclienti" method="POST">
	<div class="img">
  <!--  <img alt="" src="https://img.icons8.com/ios/452/print--v1.png" width="70" height="70">
    <input type="submit" name="stampa" value="STAMPA SCHEDA">
   <input type="image" name="stampa" value="STAMPA SCHEDA"  src="https://img.icons8.com/ios/452/print--v1.png" width="70" height="70">
   <input type="submit" style="background: url(https://img.icons8.com/ios/452/print--v1.png))">-->
     <input type="image" name="stampa" value="STAMPA SCHEDA"  src="img/stampa.png" width="70" height="70">
    
    
    </div>
	<center><table border="1"> 
	<tr>
		<th colspan="2">
			<input class="headerTbl" name="region" size="40" placeholder="INSERISCI LA REGIONE MUSCOLARE">
		</th>
	</tr>
	<!--  -->
	<tr>
		<th>
			ESERCIZIO
		</th>
		<th>
			SERIE E RIPETIZIONI
		</th>
	</tr>
	
	<%
for(int i=0;i<5;i++){
%>
	 
	
	
<%
//for(int i=0;i<20;i++){

%>
<tr>
<td><input type="" name="es<%=i%>" placeholder="INSERISCI L'ESERCIZIO"></td>
<td><input type = "text" name="rip<%=i%>" placeholder="SERIE E RIPETIZIONI "></td>
</tr>
<%
}
%>
	


</table></center>







</table>
</form>

	<footer>
<br>
<table class="tableFoother">
<tr>
<td><p style="color:white">CREATED BY<br> CATALDO, NAPOLI, LONGO, PRIMICERI<br> ALL RIGHT RESERVERD 2021</p></td>
<td><video src="img/icon/animatedicon.mp4" autoplay="autoplay" width="100" height="100"></video></td>
<td><p style="color:white">OUR WEBSITE <br></p></td>
</tr>
</table>
<br>
</footer>
  </ul>
</body>
</html>