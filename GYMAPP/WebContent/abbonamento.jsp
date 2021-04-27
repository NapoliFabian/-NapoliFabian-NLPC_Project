<%@ page language="java" import="java.util.*,it.meucci.*,java.sql.Date" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%!
  ArrayList <abbonamento> elenco;
  int i;
  abbonamento abb;
  Utente display;
  String nomecodf=null;
%>
<%

elenco = (ArrayList <abbonamento> )session.getAttribute("ELENCO_ABBONAMENTI");
ArrayList <Utente> soci =null;
try{
	GestoreFile load = new GestoreFile();
	String[] datidb = load.DBSettings();
	DBManager db = new DBManager(datidb[0],datidb[1],datidb[2]);
	soci = db.allSocio();
	
}
catch(Exception e){
	
}
String color = (String)session.getAttribute("color");
String[] lang = (String[])session.getAttribute("lang"); 
String filtro;
%>   
    
<!DOCTYPE html>
<html>
<head>
<link rel="icon" type="image/png" href="img/icona.png"/>
<style>
.bottoni{
width:18%;
height:22%;
top:40%;
right: 1%;
text-align: center;
/*background-color: white;*/
background-image:url(https://i2.wp.com/novocom.top/image/Y2xpcJyYXJGFydC1saWJyYXJ5LmNvbQ==/new_gallery/191-1918749_explosion-particle-irregular-background-gold-particles-transparent-background.png);
border: 1px solid black;
position: fixed;
} 
 
 </style>
	<script>
	function visualizza(){
		var selettore = document.getElementById("tiporicerca").value;
		//alert(selettore);
		if(selettore=="TUTTI"){
			 document.getElementById("disable").style.visibility = "hidden";
			 document.getElementById("active").style.visibility = "hidden";
			 document.getElementById("all").style.visibility = "visible";
			
			 window.location.assign("#all");
	}
		if(selettore=="SCADUTI"){
			 document.getElementById("disable").style.visibility = "visible";
			 document.getElementById("active").style.visibility = "hidden";
			 document.getElementById("all").style.visibility = "hidden";
			 
			 window.location.assign("#disable");

	}
		if(selettore=="ATTIVI"){
			 document.getElementById("disable").style.visibility = "hidden";
			 document.getElementById("active").style.visibility = "visible";
			 document.getElementById("all").style.visibility = "hidden";
			 
			 window.location.assign("#active");
	}
	};
	</script>
 <link href="css/tabellaCss.css" rel="stylesheet"  type="text/css">
<meta charset="ISO-8859-1">
<title><%=lang[3]%></title>

</head>

<body background="images\bg-01.jpg">
<script>
</script>
<div class="filtri">
<select id="tiporicerca" name="tipori" onchange="visualizza()" size="3" style="width:100%;height: 100%">
<option value="TUTTI" selected="selected">TUTTO</option>
<option value="SCADUTI">SCADUTI</option>
<option value="ATTIVI">ATTIVI</option>
</select>
</div>
<hr>
<!-- TABELLA TUTTI -->
    <div class="table-users" id="all">
        <div class="header"><%=lang[3]%></div>
        
        <table cellspacing="0">
			<tr>
				<th><%=lang[21]%></th>
				<th><%=lang[22]%></th>
				<th><%=lang[23]%></th>
				<th><%=lang[24]%></th>
				<th>STATO</th>
				<th colspan="6"><a href = "insertabbonamento.jsp"><img src=img/add.png height="30" width="30"></a> </th>
			</tr>
		   
     
			<% for(i=0;i<elenco.size();i++) 
			{
				 abb=(abbonamento)elenco.get(i);
			for(int j=0;j<soci.size();j++){
				display = soci.get(j);
				if(display.getCodf().equals(abb.getCodf()))
				nomecodf = abb.getCodf()+"-"+display.getNome()+display.getCognome();
			}
			
			String abb_status = "";
			 if(abb.getStato().equals("0"))
				 abb_status = "img/ABB_STATUS/rosso.jpeg";
			 else abb_status = "img/ABB_STATUS/verde.jpeg";
			
		 %>
		 
		  <tr>
			 <td><%=nomecodf%></td>
			 <td><%=abb.getInizio()%></td>
			 <td><%=abb.getFine() %></td>
			 <td><%=abb.getNomecorso() %></td>
			 <td><img alt="STATO" src="<%=abb_status%>" width="100" height="50"></td>
			  <td><a href="rinnovaAbbonamento.jsp?id=<%=abb.getIdabbonamento()%>">Rinnova</a></td>
			 
			 <td><a href="Gestore?cmd=dettaglioabb&id=<%=abb.getIdabbonamento()%>"></a></td>
		 </tr>
		 
		 <%
			 }
		 %>

        </table>
     </div>
     <br><br><br><br><br><br><br><br>
     <div class="bottoni">
  <a href="dashboard.jsp"><img src=img/ritornohome.png height="70" width="70"></a> <br>
  <h3><%=lang[19]%>: <strong style="color:red"><%=elenco.size()%></strong></h3>
 
 </div>
     <hr>
     <!-- TABELLA SCADUTI -->
	 <div class="table-users" id="disable">
        <div class="header"><%=lang[3]%></div>
        
        <table cellspacing="0">
			<tr>
				<th><%=lang[21]%></th>
				<th><%=lang[22]%></th>
				<th><%=lang[23]%></th>
				<th><%=lang[24]%></th>
				<th>STATO</th>
				<th><a href = "insertabbonamento.jsp"><img src=img/add.png height="30" width="30"></a> </th>
			</tr>
		   
     
			<%  for(i=0;i<elenco.size();i++) 
			{
				 abb=(abbonamento)elenco.get(i);
			for(int j=0;j<soci.size();j++){
				display = soci.get(j);
				if(display.getCodf().equals(abb.getCodf()))
				nomecodf = abb.getCodf()+"-"+display.getNome()+display.getCognome();
			}
			
			String abb_status = "";
			if(abb.getStato().equals("0"))
				 abb_status = "img/ABB_STATUS/rosso.jpeg";
			 else abb_status = "img/ABB_STATUS/verde.jpeg";
			 if(abb.getStato().equals("0")){
		 %>
		 
		  <tr>
			 <td><%=nomecodf%></td>
			 <td><%=abb.getInizio()%></td>
			 <td><%=abb.getFine() %></td>
			 <td><%=abb.getNomecorso() %></td>
			 <td><img alt="STATO" src="<%=abb_status%>" width="100" height="50"></td>
			 <td><a href="rinnovaAbbonamento.jsp?id=<%=abb.getIdabbonamento()%>">Rinnova</a></td>
		 </tr>
		  <%
			 }//fine if
		 %>
		 <%
			 }
		 %>

        </table>
     </div>
     <hr>
     <!-- TABELLA ATTIVI -->
      <div class="table-users" id="active">
        <div class="header"><%=lang[3]%></div>
        
        <table cellspacing="0">
			<tr>
				<th><%=lang[21]%></th>
				<th><%=lang[22]%></th>
				<th><%=lang[23]%></th>
				<th><%=lang[24]%></th>
				<th>STATO</th>
				<th><a href = "insertabbonamento.jsp"><img src=img/add.png height="30" width="30"></a> </th>
			</tr>
		   
     
			<%  for(i=0;i<elenco.size();i++) 
			{
				 abb=(abbonamento)elenco.get(i);
			for(int j=0;j<soci.size();j++){
				display = soci.get(j);
				if(display.getCodf().equals(abb.getCodf()))
				nomecodf = abb.getCodf()+"-"+display.getNome()+display.getCognome();
			}
			
			String abb_status = "";
			 if(abb.getStato().equals("0"))
				 abb_status = "img/ABB_STATUS/rosso.jpeg";
			 else abb_status = "img/ABB_STATUS/verde.jpeg";
			 if(abb.getStato().equals("1")){
				 //
		 %>
		 
		  <tr>
			 <td><%=nomecodf%></td>
			 <td><%=abb.getInizio()%></td>
			 <td><%=abb.getFine() %></td>
			 <td><%=abb.getNomecorso() %></td>
			 <td><img alt="STATO" src="<%=abb_status%>" width="100" height="50"></td>
			 
			 <td><a href="rinnovaAbbonamento.jsp?id=<%=abb.getIdabbonamento()%>">Rinnova</a></td>
		 </tr>
		 		  <%
			 }//fine if
		 %>
		 
		 <%
			 }
		 %>

        </table>
     </div>

</body>


</html>