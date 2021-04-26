<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<link href="css/dashsocio.css" rel="stylesheet"  type="text/css">

<title>HOME</title>
</head>
<body style="background-image: url(https://undesigns.net/wp-content/uploads/2018/02/blue-violet-motion-background-free-download-undesigns.jpg);">
<script>

<%
String username = (String)session.getAttribute("username");
%>

function mostrallemanti(){

}
function mostracorsi(){
    
}

</script>
    <header>
    <div class="icon"><img src="img/angolo.png" alt="" width="100%" height="100%"></div>
    <div class="title">GYM APP</div>
    </header>
    <div style="text-align: center;width:100%;margin-top: 5%;">
           <center><div class="immaginecentrale"><center><img src="img/nopainnogain.jpg" alt="" width="100%" height="50%" style="border: 1px solid blueviolet;"></center></div> </center>
    </div>


    <div style="width:100%;margin-top: 5%;"> 
    <div class="schede">

        <button class="bottoni">ALLENAMENTI</button><br><br><br>

        <img src="img/allenamentoimg.jpg" alt="" width="80%" height="100%" class="imgschede" onclick="mostrallemanti()">
    </div>
    <div class="schede">
        <button class="bottoni">CORSI</button><br><br><br>
        <img src="img/corsoimg.jpg" alt="" width="80%" height="100%" class="imgschede" onclick="mostracorsi()">
    </div>
    </div>
	<footer>
        <table>
            <tr><td><h2>GYM APP</h2></td><td><h2>2021</h2></td><td><h2>DEVELOPER</h2> <br>NAPOLI FABIAN <br>LONGO CRISTIAN <br>CATALDO SIMONE <br>PRIMICERI SAMUEL LUIGI</td></tr>
        </table>
    </footer>
</body>
</html>