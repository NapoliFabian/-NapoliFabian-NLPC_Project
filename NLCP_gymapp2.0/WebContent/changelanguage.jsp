<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
function avvisa(){
	var language = document.querySelector('input[name="flag"]:checked').value;
	if(language=="ita")alert("Lingua cambiata");
	if(language=="isp")alert("cambio de idioma");
	if(language=="ing")alert("Language changed");
};

</script>
<style>
body{
    margin: 0px;
}
.box{
    margin-left: 50px;
    width:100%;
    height: 150px;
    text-align: center;
}
.icona{
    width: 30%;
     padding: 16px;
    float: left;{
    /*border: 1px solid red;*/
}
.radiob{
width:50px;
height:50px;
}

.header{
width: 100%;
height: 100px;
background-image: linear-gradient(cadetblue,grey)
}
.icona:hover{
    background-color: cadetblue;
}
.scritta{
    padding-top: 30px;
    text-align: left;
    width: 70%;
    float: left;
    border: 1px solid red;
}
a{
    text-decoration: none;
}
</style>
<body>
    <div class="header">
      <a style="float:left" href="optionpage.html"><img src=img/back.png height="50" width="50"></a>
     
    </div>
<form action="changer" method="POST">
<!--  
<input type="radio" name="flag" value="ita">
<input type="radio" name="flag" value="eng">
<input type="radio" name="flag" value="esp">-->
<div class="box">
<div class="icona">
<img src="img\flags\ita.png" width="200" height="200"><br>
<input class="radiob" type="radio" name="flag" id="lingua" value="ita">
</div>
<div class="icona">
<img src="img\flags\esp.png" width="200" height="200"><br>
<input type="radio" class="radiob" name="flag" id="lingua" value="isp">
</div>
<div class="icona">
<img src="img\flags\ing.jpeg" width="200" height="200"><br>
<input type="radio" class="radiob" name="flag"id="lingua" value="ing">
</div>
</div>
<center>
<input type="submit" value="INVIA" onClick=avvisa()>
</center>
</form>
</body>
</html>