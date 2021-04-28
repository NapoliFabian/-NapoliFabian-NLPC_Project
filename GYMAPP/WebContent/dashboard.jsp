<%@ page language="java" import="java.util.*,it.meucci.*,java.sql.Date" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<!--  <link href="css/dashboardcss20.css" rel="stylesheet"  type="text/css"/>-->
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
    left: 10%;
    right: 10%;
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
    border-radius: 50px;
    padding: 7px;
    margin-left: 9%;
    margin-top: 2%;
}
.box:hover{
    background-color: dodgerblue;
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
<title>DASHBOARD</title>
<%
String username = (String)session.getAttribute("username");
String nomeapp = (String)session.getAttribute("nomeapp");
if(username!=null){
	%>
</head>
<!-- <body style="background-image: url(images/bg-00.jpg);"> -->
<link rel="icon" type="image/png" href="img/icona.png"/>
<body style="background-image: url(https://undesigns.net/wp-content/uploads/2018/02/blue-violet-motion-background-free-download-undesigns.jpg);">
<header>
<center><h1>GYM APP</h1></center>
<center><h3 class="sottotitolo"><%=lang[0]%> <%=username%></h3></center>
<!--<div class="link">
 <a>OPTION</a>   
</div>-->
</header>
<ul>
    <li><span style="font-size:30px;cursor:pointer;color: white" onclick="openNav()">&#9776;</span></li>
    <li><a href="#news">UPDATE</a></li>
    <li><a href="chisiamo.jsp">ABOUT US</a></li>
      <li><div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <a href="optionpage.html">OPTION</a>
  <a class="active" href="Gestore?cmd=logout">LOGOUT</a>
</div></li>
  </ul>
<div class="centrale">
<a href="Gestore?cmd=allsoc">
    <div class="box">
    <img src="https://png.pngtree.com/png-vector/20190214/ourlarge/pngtree-people-icon-business-corporate-team-working-together-social-network-png-image_448381.jpg" width="150" height="150"> 
    <hr>
    <h3><%=lang[1]%></h3>    
    </div>
</a>  
<a href="Gestore?cmd=allis">
    <div class="box">     
    <img src="https://pngimage.net/wp-content/uploads/2018/06/member-icon-png-5.png" width="150" height="150">
    <hr>
    <h3><%=lang[2]%></h3> 
    </div></a>
<a href="Gestore?cmd=allabb">
    <div class="box">
        <img src="https://maxcdn.icons8.com/Share/icon/nolan/Finance/bank_cards1600.png" width="150" height="150"> 
        <hr>
        <h3><%=lang[3]%></h3>    
        </div></a>   
<a href="Gestore?cmd=allal"> <div class="box">
        <img src="https://www.mfsano.it/wp-content/uploads/2019/05/icona-corsi-collettivi.png" width="150" height="150"> 
        <hr>
        <h3><%=lang[4]%></h3>    
        </div></a>
<a href="Gestore?cmd=allco"><div class="box">
        <img src="https://th.bing.com/th/id/R5441f608cebb76e0d993f1ca69f529d5?rik=1hbECR3MWxppMg&riu=http%3a%2f%2fcdn.onlinewebfonts.com%2fsvg%2fimg_498796.png&ehk=cYG%2fRrv7wQmlB3SWFl%2f0CxMf50J38SIQboJj15cjxBQ%3d&risl=&pid=ImgRaw" width="150" height="150"> 
        <hr>
        <h3><%=lang[5]%></h3>    
        </div></a>   
        
<a href="creaSchede.jsp">
<div class="box">
        <img src="https://www.fitcoachonline.it/wp-content/uploads/2020/05/icone-fitcoach-02.png" width="150" height="150"> 
        <hr>
        <h3><%=lang[6]%></h3>    
        </div></a>
</div>

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

</html>