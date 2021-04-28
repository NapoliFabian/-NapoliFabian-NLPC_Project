<%@ page language="java" import="java.util.*,it.meucci.*,java.sql.Date" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<!--  <link href="css/dashboardcss20.css" rel="stylesheet"  type="text/css"/>-->
<link rel="icon" type="image/png" href="img/icona.png"/>
<meta charset="ISO-8859-1">
<%
String color = (String)session.getAttribute("color");
String[] lang = (String[])session.getAttribute("lang"); 
%>
<style>
  
  }
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
    left: 1%;
    right: 1%;
    top:30%;
    padding-top: 1%;
    padding-bottom: 1%;
    
    
}
.box{
    width: 20%;
    height: 45%;
    background-color: white;
    float: left;
    text-align: center;
    border-radius: 0px;
    padding: 7px;
    margin-left:3%;
    margin-top: 2%;
}
footer{
    width: 100%;
    background-color: black;
    position: absolute;
  /*  bottom: 1px;*/
  top:1000px;
}
table{
width: 100%;
height: auto;
}
td{
width: 33%;
text-align: center;
padding:16px;
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
<title>CHI SIAMO</title>
<%
String username = (String)session.getAttribute("username");
String nomeapp = (String)session.getAttribute("nomeapp");
if(username!=null){
	%>
</head>
<!-- <body style="background-image: url(images/bg-00.jpg);"> -->
<body style="background-image: url(https://undesigns.net/wp-content/uploads/2018/02/blue-violet-motion-background-free-download-undesigns.jpg);">
<header>
<center><h1>GYM APP</h1></center>
<center><h3 class="sottotitolo">CHI SIAMO</h3></center>
<!--<div class="link">
 <a>OPTION</a>   
</div>-->
</header>
<ul>
    <li><span style="font-size:30px;cursor:pointer;color: white" onclick="openNav()">&#9776;</span></li>
    <li><a href="dashboard.jsp">HOME</a></li>
      <li><div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <a href="optionpage.html">OPTION</a>
  <a class="active" href="Gestore?cmd=logout">LOGOUT</a>
</div></li>
  </ul>
<div class="centrale">










    <div class="box">
    <img src="img/imagine napoli.jpg" width="250" height="250"> 
    <hr>
    <h3>FABIAN NAPOLI</h3>    
    </div>
</a>  


    <div class="box">     
    <img src="img/immagine longo.PNG" width="250" height="250">
    <hr>
    <h3>CRISTIAN LONGO</h3> 
    </div></a>
    
    
    <div class="box">
        <img src="img/immagine primiceri.PNG" width="250" height="250"> 
        <hr>
        <h3>SAMUEL PRIMICERI</h3>    
        </div></a>   




    <div class="box">
        <img src="img/immagine cataldo.jpg" width="250" height="250"> 
        <hr>
        <h3>SIMONE CATALDO</h3>    
        </div></a>   















<footer>
<br>
<table>
<tr>
<td><p style="color:white">CREATED BY<br> CATALDO, NAPOLI, LONGO, PRIMICERI<br> ALL RIGHT RESERVERD 2021</p></td>
<td><video src="img/icon/animatedicon.mp4" autoplay="autoplay" width="100" height="100"></video></td>
<td><p style="color:white">OUR WEBSITE <br></p></td>
</tr>
</table>
<br>
</footer>
<script>
function openNav() {
  document.getElementById("mySidenav").style.width = "250px";
}

function closeNav() {
  document.getElementById("mySidenav").style.width = "0";
}
</script>
</body>
<% 
}
else{
	response.sendRedirect("error.jsp");
}
%>

