<%@ Language=VBScript %>
<% Response.Buffer = True %>


<html>

<head>
<meta http-equiv="Content-Language" content="es">
<meta name="GENERATOR" content="Microsoft FrontPage 6.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>:: Estudio Aduanero Dávila :: Newsletter ::</title>

<SCRIPT LANGUAGE="JavaScript">

<!-- Free JavaScript Rollover Buttons from -->
<!-- http://www.creatupropiaweb.com -->

<!-- Begin

image1 = new Image();
image1.src = "images/b1_2.jpg";

image2 = new Image();
image2.src = "images/b2_2.jpg";

image3 = new Image();
image3.src = "images/b3_2.jpg";

image4 = new Image();
image4.src = "images/b4_2.jpg";

image5 = new Image();
image5.src = "images/b5_2.jpg";

image6 = new Image();
image6.src = "images/b6_2.jpg";

image7 = new Image();
image7.src = "images/b7_2.jpg";

// End -->
</script>

</head>


<%
DIM id_new
id_new = request("id_new")

DIM P
DIM S1
DIM S2
DIM S3

DIM titulo_p
DIM autor_p
DIM resumen_p
DIM texto_p

DIM titulo_s1
DIM autor_s1
DIM resumen_s1
DIM texto_s1

DIM titulo_s2
DIM autor_s2
DIM resumen_s2
DIM texto_s2

DIM titulo_s3
DIM autor_s3
DIM resumen_s3
DIM texto_s3


'Conecto y extraigo datos de la id_new

set oConn =  Server.CreateObject("ADODB.Connection")

oConn.Open "DRIVER={Microsoft Access Driver (*.mdb)}; DBQ="&Server.MapPath("db/news.mdb")

Set RSArt = oConn.Execute("select * from Envios where enviada = TRUE") 

if not rsart.eof then

DIM fechaok
DIM f

fechaok = RSArt("fecha")
'a = left(fechaok,len(fechaok)-11)
Dim dia
Dim mes
Dim anio

dia = Day(fechaok)
mes = Month(fechaok)
anio = Year(fechaok)

a = dia & "/" & mes & "/" & anio

P = RSArt("P")
S1 = RSArt("S1")
S2 = RSArt("S2")
S3 = RSArt("S3")
lecs = RSArt("lecturas")

end if
RsArt.close
set RsArt = nothing
oConn.Close
set oConn = nothing


' Conecto para extraer las notas


' Conecto para Principal


set oConn =  Server.CreateObject("ADODB.Connection")

oConn.Open "DRIVER={Microsoft Access Driver (*.mdb)}; DBQ="&Server.MapPath("db/news.mdb")

Set RSArt = oConn.Execute("select * from txt where id_nota = " & P & "") 

if not rsart.eof then

titulo_p = RSArt("titulo")
autor_p = RSArt("autor")
resumen_p = RSArt("resumen")
texto_p = RSArt("texto")
    ArreglaTexto (texto_p)
            Sub ArreglaTexto ( cadena_texto )
            texto_p = Replace (texto_p,vbCrLf, "<br>")
            texto_p = Left(texto_p, 400)
            End Sub

end if
RsArt.close
set RsArt = nothing
oConn.Close
set oConn = nothing 

' Conecto para Secundaria 1


set oConn =  Server.CreateObject("ADODB.Connection")

oConn.Open "DRIVER={Microsoft Access Driver (*.mdb)}; DBQ="&Server.MapPath("db/news.mdb")

Set RSArt = oConn.Execute("select * from txt where id_nota = " & S1 & "") 

if not rsart.eof then

titulo_s1 = RSArt("titulo")
resumen_S1 = RSArt("resumen")
    ArreglaTexto_s1 (texto_s1)
            Sub ArreglaTexto_s1 ( cadena_texto_s1 )
            resumen_S1 = Replace (resumen_S1,vbCrLf, "<br>")
            resumen_S1 = Left(resumen_S1, 400)
            End Sub

end if
RsArt.close
set RsArt = nothing
oConn.Close
set oConn = nothing	


' Conecto para Secundaria 2


set oConn =  Server.CreateObject("ADODB.Connection")

oConn.Open "DRIVER={Microsoft Access Driver (*.mdb)}; DBQ="&Server.MapPath("db/news.mdb")

Set RSArt = oConn.Execute("select * from txt where id_nota = " & S2 & "") 

if not rsart.eof then

titulo_s2 = RSArt("titulo")
resumen_S2 = RSArt("resumen")
    ArreglaTexto_s2 (texto_s2)
            Sub ArreglaTexto_s2 ( cadena_texto_s2 )
            resumen_S2 = Replace (resumen_S2,vbCrLf, "<br>")
            resumen_S2 = Left(resumen_S2, 400)
            End Sub

end if
RsArt.close
set RsArt = nothing
oConn.Close
set oConn = nothing	

' Conecto para Secundaria 3


set oConn =  Server.CreateObject("ADODB.Connection")

oConn.Open "DRIVER={Microsoft Access Driver (*.mdb)}; DBQ="&Server.MapPath("db/news.mdb")

Set RSArt = oConn.Execute("select * from txt where id_nota = " & S3 & "") 

if not rsart.eof then

titulo_s3 = RSArt("titulo")
resumen_S3 = RSArt("resumen")
    ArreglaTexto_s3 (texto_s3)
            Sub ArreglaTexto_s3 ( cadena_texto_s3 )
            resumen_S3 = Replace (resumen_S3,vbCrLf, "<br>")
            resumen_S3 = Left(resumen_S3, 400)
            End Sub

end if
RsArt.close
set RsArt = nothing
oConn.Close
set oConn = nothing	
%>


<body bgcolor="#000000" style="background-image: url('http://www.estudiodavila.com.ar/images/bkgfondo_pag.gif')">

<div align="center">
<center>
<table border="0" cellpadding="0" style="width: 900px; height: 1333px">
<tr>
<td height="31" style="width: 896px" align="center">
<div align="center">
<center>
<table cellpadding="8" cellspacing="0" height="285" bgcolor="#E2EBEB" width="100%">
<tr>
<td style="height: 136; " bgcolor="#E2EBEB">
<div align="center">
        <table border="0" cellpadding="0" style="border-collapse: collapse" width="100" height="126" id="table1">
          <tr>
            <td width="12%" height="126" valign="top">
            
            <a href="home.asp" onmouseover="image1.src='images/b1_2.jpg';"
onmouseout="image1.src='images/b1_1.jpg';">
<img name="image1" src="images/b1_1.jpg" border=0></a>

            
</td>
            <td width="12%" height="126" valign="top"><a href="historia.asp" onmouseover="image2.src='images/b2_2.jpg';"
onmouseout="image2.src='images/b2_1.jpg';">
<img name="image2" src="images/b2_1.jpg" border=0></a></td>


            <td width="12%" height="126" valign="top"><a href="servicios.asp" onmouseover="image3.src='images/b3_2.jpg';"
onmouseout="image3.src='images/b3_1.jpg';">
<img name="image3" src="images/b3_1.jpg" border=0></a></td>

            <td width="12%" height="126" valign="top"><a href="legislacion.asp" onmouseover="image4.src='images/b4_2.jpg';"
onmouseout="image4.src='images/b4_1.jpg';">
<img name="image4" src="images/b4_1.jpg" border=0></a></td>


            <td width="13%" height="126" valign="top"><a href="novedades.asp" onmouseover="image5.src='images/b5_2.jpg';"
onmouseout="image5.src='images/b5_1.jpg';">
<img name="image5" src="images/b5_1.jpg" border=0></a></td>

            <td width="13%" height="126" valign="top"><a href="contacto.asp" onmouseover="image6.src='images/b6_2.jpg';"
onmouseout="image6.src='images/b6_1.jpg';">
<img name="image6" src="images/b6_1.jpg" border=0></a></td>
            
            <td width="13%" height="126" valign="top"><a href="privado.asp" onmouseover="image7.src='images/b7_2.jpg';"
onmouseout="image7.src='images/b7_1.jpg';">
<img name="image7" src="images/b7_1.jpg" border=0></a></td>
            
            <td width="13%" height="126" valign="top"><img border="0" src="images/logo.jpg"></td>
          </tr>
        </table>
        </div>
</td>
</tr>
<tr>
<td style="height: 117px; " bgcolor="#E2EBEB" width="97%">
<div align="center">
	<table border="0" width="100%" id="table2" cellspacing="0" cellpadding="0">
		<tr>
			<td width="571">
			<img border="0" src="images/newshome1.jpg" width="571" height="101"></td>
			<td background="images/newshome2.jpg">
			<p align="center"><font size="2" face="Verdana">
			<% DIM susc
			susc = Request("susc")
			if susc = "yes" or susc = "ops" then%>
			<font color="#FFFF00"><b>Suscripción activada! Gracias!</b></font><font color="#FF0000">
			</font>
			<%else%>
			Suscríbase gratis! 
			Ingrese su email:
			<%end if%>
			</font>
			<form method="POST" action="cargarnuevoSUSC.asp">
				<p align="center"><input type="text" name="email" size="24">&nbsp;&nbsp;
				<input type="submit" value="Suscribir" name="B1"></p>
			</form>
			</td>
		</tr>
	</table>
</div>
</td>
</tr>
</tr>
</table>
</center>
</div>
</td>
</tr>


<tr>
<td style="height: 180px; width: 896px;">
<div align="center">
<center>
<table cellpadding="9" cellspacing="6" width="99%" height="190">
<tr>
<td width="97%" colspan="3" rowspan="3" style="height: 451" bgcolor="#BBD0D0">
<p>
<div>
<p align="right">
<strong><font face="Verdana" size="2"><em><span>Mendoza, <%=a%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></em></font></strong></div>


<table align="center" cellpadding="4" cellspacing="1" style="width: 864px; height: 477px">
<tr>
<td colspan="3" style="height: 30" valign="top" bgcolor="#E2EBEB">
<img alt="" height="30" src="http://www.estudiodavila.com.ar/images/destacada.jpg" width="850">&nbsp;</td>
</tr>
<tr>
<td colspan="2" style="height: 146px" valign="top" bgcolor="#E2EBEB" width="569">
<span><font size="2" face="Verdana"><b><%=titulo_p%></b></font></span><font size="2" face="Verdana">
<span ><br>
</span><strong>Fuente</strong>:&nbsp; <%=autor_p%> 
<br><br>
<i><%=resumen_p%></i>					  
<br><br> 	             
<%=texto_p%> ...</font><span><font size="2" face="Verdana"><br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font><em><font size="2" face="Verdana">&nbsp;</font><font color="#006666" size="2" face="Verdana"><a href='http://www.estudiodavila.com.ar/leernota.ASP?id_nota=<%=P%>'><img border="0" src="http://www.estudiodavila.com.ar/images/Flecha-der2.jpg"></a></font><a href='http://www.estudiodavila.com.ar/leernota.ASP?id_nota=<%=P%>' target="_blank"><font size="2" face="Verdana">Leer artículo completo</font></a></em></td>
<td style="height: 146px" valign="top" bgcolor="#E2EBEB" width="276">
<p align="center"><b><font face="Verdana" size="2" color="#0A6C6C">Artículos 
publicados por categoría</font></b></p>
<div align="center">
	<table border="0" width="70%" id="table3" cellspacing="4" cellpadding="2">
		<tr>
			<td bgcolor="#BBD0D0" align="center"><font face="Verdana" size="2">
			<a href="todas.asp?cat=&quot;Exportación&quot;">
			<font color="#0A6C6C"><span style="text-decoration: none">
			Exportación</span></font></a></font></td>
		</tr>
		<tr>
			<td bgcolor="#BBD0D0" align="center"><font face="Verdana" size="2">
			<a href="todas.asp?cat=&quot;Importación&quot;">
			<font color="#0A6C6C"><span style="text-decoration: none">
			Importación</span></font></a></font></td>
		</tr>
		<tr>
			<td bgcolor="#BBD0D0" align="center"><font face="Verdana" size="2">
			<a href="todas.asp?cat=&quot;General&quot;"><font color="#0A6C6C">
			<span style="text-decoration: none">General</span></font></a></font></td>
		</tr>
		<tr>
			<td bgcolor="#BBD0D0" align="center"><font face="Verdana" size="2">
			<a href="todas.asp?cat=&quot;Cambiaria&quot;">
			<span style="text-decoration: none"><font color="#0A6C6C">Cambiaria</font></span></a></font></td>
		</tr>
		<tr>
			<td bgcolor="#BBD0D0" align="center"><font face="Verdana" size="2">
			<a href="todas.asp?cat=&quot;Vitivinícola y bebidas&quot;">
			<span style="text-decoration: none"><font color="#0A6C6C">
			Vitivinícola y bebidas</font></span></a></font></td>
		</tr>
		<tr>
			<td bgcolor="#BBD0D0" align="center"><font face="Verdana" size="2">
			<a href="todas.asp?cat=&quot;Prensa&quot;">
			<span style="text-decoration: none"><font color="#0A6C6C">Prensa</font></span></a></font></td>
		</tr>
		<tr>
			<td bgcolor="#BBD0D0" align="center"><font face="Verdana" size="2">
			<a href="todas.asp?cat=&quot;Otras Industrias&quot;">
			<span style="text-decoration: none"><font color="#0A6C6C">Otras 
			industrias</font></span></a></font></td>
		</tr>
		<tr>
			<td bgcolor="#BBD0D0" align="center"><font face="Verdana" size="2">
			<a href="todas.asp"><span style="text-decoration: none">
			<font color="#0A6C6C">Todas las categorías</font></span></a></font></td>
		</tr>
	</table>
</div>
</td>
</tr>
<tr>
<td style="height: 6px;" colspan="3"></td>
</tr>


<tr>
<td style="height: 34;" colspan="3" bgcolor="#0A6C6C">&nbsp;<img alt="" height="30" src="http://www.estudiodavila.com.ar/images/recursos.jpg" width="850"></td>
</tr>
<tr>
<td rowspan="2" bgcolor="#0A6C6C" width="283">
<p align="center">
<img alt="" height="30" src="http://www.estudiodavila.com.ar/images/bannerweb.jpg" width="276"></td>
<td rowspan="2" bgcolor="#0A6C6C" width="277">
<p align="center">
<img alt="" height="30" src="http://www.estudiodavila.com.ar/images/BANNER2.jpg" width="276"><br>
</td>
<td style="height: 28;" bgcolor="#0A6C6C" width="276" >
<p align="center">
<img alt="" height="30" src="http://www.estudiodavila.com.ar/images/banner3.jpg" width="276"></td>
</tr>
<tr>
<td rowspan="2" bgcolor="#E2EBEB" width="276">
<table align="left" style="width: 100%">
<tr>
<td>
<span style="border-collapse: separate; color: rgb(0, 0, 0); font-family: 'Times New Roman'; font-style: normal;  ">
<span style="color: rgb(52, 137, 49); font-family: Arial, Helvetica, sans-serif; ">
<span style="color: rgb(0, 0, 0); "><a href="http://www.boletinoficial.gov.ar" target="_blank">
<font face="Verdana" size="2">
<a target="_blank" href="http://www.boletinoficial.gov.ar">
<strong><span><font color="#000000">
<span style="text-decoration: none">Boletín Oficial</span></strong></font></span></a></font></td>
</tr>
<tr>
<td>
<span style="border-collapse: separate; color: rgb(0, 0, 0); font-family: 'Times New Roman'; font-style: normal;  ">
<span style="color: rgb(0, 0, 0); font-family:Verdana">
<strong>
<a style="text-decoration: none; " target="_blank" href="http://www.cnce.gov.ar/"><font size="2" color="#000000">Comisión Nacional de Comercio Exterior</font></a></strong></span></span></td>
</tr>
<tr>
<td style="height: 20px">
<span style="color: rgb(52, 137, 49); font-family: Verdana; ">
<a href="http://www.bcra.gov.ar/" style="text-decoration: none; " target="_blank">
<span style="color: rgb(0, 0, 0); ">
<strong><font size="2">Banco Central</font></strong></span></a></span></td>
</tr>
<tr>
<td >
<span style="font-family: Verdana; border-collapse:separate; color:rgb(0, 0, 0); font-style:normal;">
<a href="http://www.afip.gov.ar/" style="text-decoration: none; " target="_blank">
<span style="color: rgb(0, 0, 0); ">
<strong><font size="2">AFIP</font></strong></span></a></span></td>
</tr>
<tr>
<td>
<span style="font-family: Verdana; border-collapse:separate; color:rgb(0, 0, 0); font-style:normal;">
<a href="http://www.inv.gov.ar/" style="text-decoration: none; " target="_blank">
<span style="color: rgb(0, 0, 0); ">
<strong><font size="2">Instituto Nacional de Vitivinicultura</font></strong></span></a></span></td>
</tr>
</table>
</td>
</tr>
<tr>
<td bgcolor="#E2EBEB" width="283" >
<a href="http://www.estudiodavila.com.ar" target="_blank">
<img alt="" height="70" src="http://www.estudiodavila.com.ar/images/banner1.jpg" width="282" border="0"></a></td>
<td valign="top" bgcolor="#E2EBEB" width="277">
<p align="center">
<br>
<br>
<!-- AddThis Button BEGIN -->
<a href="http://api.addthis.com/oexchange/0.8/forward/facebook/offer?pco=tbx32nj-1.0&amp;url=http%3A%2F%2Fwww.estudiodavila.com.ar&amp;pubid=peterotul" target="_blank" ><img src="http://cache.addthiscdn.com/icons/v1/thumbs/32x32/facebook.png" border="0" alt="Facebook" /></a>
<a href="http://api.addthis.com/oexchange/0.8/forward/twitter/offer?pco=tbx32nj-1.0&amp;url=http%3A%2F%2Fwww.estudiodavila.com.ar&amp;pubid=peterotul" target="_blank" ><img src="http://cache.addthiscdn.com/icons/v1/thumbs/32x32/twitter.png" border="0" alt="Twitter" /></a>
<a href="http://www.addthis.com/bookmark.php?source=tbx32nj-1.0&amp;=300&amp;pubid=peterotul&amp;url=http%3A%2F%2Fwww.estudiodavila.com.ar " target="_blank"  ><img src="http://cache.addthiscdn.com/icons/v1/thumbs/32x32/more.png" border="0" alt="More..." /></a>
<!-- AddThis Button END --></td>
</tr>
<tr>
<td colspan="3" style="height: 8px"></td>
</tr>
<tr>
<td style="height: 57px;" colspan="3" bgcolor="#E2EBEB">
<img alt="" height="30" src="http://www.estudiodavila.com.ar/images/masinfo.jpg" width="850">&nbsp;</td>
</tr>
</table>


<div align="center">
<table cellpadding="2" cellspacing="3" width="865">
<td style="width: 276; height: 108px;" valign="top" bgcolor="#E2EBEB">
<span >
<strong><font size="2" face="Verdana"><%=titulo_s1%></font></strong></span><font face="Verdana"><font size="2">
<br>
</font>
<span>
<font size="2">
<br> 
<%=resumen_s1%>&nbsp; </font><em><font size="2">
<br> <br> 
<font color="#006666">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href='http://www.estudiodavila.com.ar/leernota.ASP?id_nota=<%=S1%>' target="_blank"><img border="0" src="http://www.estudiodavila.com.ar/images/Flecha-der2.jpg" align="top"> 
</a></font></font>
<a href='http://www.estudiodavila.com.ar/leernota.ASP?id_nota=<%=S1%>' target="_blank">
<font size="2">Leer completo</font></a></em></span></font></td>


<td style="width: 276; height: 108px;" valign="top" bgcolor="#E2EBEB">
<span>
<b><font size="2" face="Verdana"><%=titulo_s2%></font></b><font face="Verdana" size="2"></font></span>
<font face="Verdana" size="2">
<br><br>
<span>
<%=resumen_s2%> &nbsp; </span></font><em>
<font size="2"><font face="Verdana">
<br><br></font> 
<font color="#006666" face="Verdana">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
<a href='http://www.estudiodavila.com.ar/leernota.ASP?id_nota=<%=S2%>' target="_blank">
<img border="0" src="http://www.estudiodavila.com.ar/images/Flecha-der2.jpg" align="top" height="7"><span>
</span></a></font> 
</font><font face="Verdana"> 
<span><a href='http://www.estudiodavila.com.ar/leernota.ASP?id_nota=<%=S2%>' target="_blank">
<font size="2">Leer completo</font></a></span></font></em></td>


<td style="width: 289px; height: 108px" valign="top" bgcolor="#E2EBEB">
<span>
<font size="2" face="Verdana">
<b><%=titulo_s3%></b></font></span>
<font face="Verdana" size="2">
<br> 
<br>
<span>
<%=resumen_s3%> &nbsp; </span></font>
<em>
<font size="2"><font face="Verdana">
<br><br></font> 
<font color="#006666" face="Verdana">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
<a href='http://www.estudiodavila.com.ar/leernota.ASP?id_nota=<%=S3%>' target="_blank">
<img border="0" src="http://www.estudiodavila.com.ar/images/Flecha-der2.jpg" align="top" height="7"></a></font></font><a href='http://www.estudiodavila.com.ar/leernota.ASP?id_nota=<%=S3%>' target="_blank"><span><font color="#006666" size="2" face="Verdana"> </font> 
<font size="2" face="Verdana">Leer completo</font></span></a></em></td>
</tr>
</table>
</div>
</td>
</tr>
</table>
</center>
</div>
</td>
</tr>


<tr>
<td style="height: 3px; width: 896px"></td>
</tr>
<tr>
<td style="height: 290px; width: 896px" bgcolor="#E2EBEB">
<font size="2">
&nbsp;<div align="center">
<table cellpadding="15" cellspacing="0" style="width: 90%" border="1" bordercolor="#0A6C6C">
<tr>
<td style="width: 744; height: 141;">
<font face="Verdana"><span lang="es">
<font size="2"><em>La información contenida en este newsletter es 
recopilada y enviada por Estudio Dávila a su lista de clientes y 
suscriptores. El propósito del mismo es proporcionar información 
general sobre temas específicos referidos a nuestra área de 
servicios y no constituyen un tratamiento exhaustivo de dicho tema 
o temas. La información contenida en este material no intenta 
conformar un asesoramiento o servicio profesional de comercio 
exterior ni tiene como fín ser considerada como una base confiable 
o como la única base para cualquier decisión que pueda afectar a 
quién lo reciba o a sus negocios. Antes de tomar cualquier 
decisión o acción que pudiera afectar sus finanzas personales o 
negocios, deberán consultar a un asesor profesional de Estudio 
Dávila. Este material y la información contenida en el mismo están 
emitidos tal como aquí se presentan. Estudio Dávila no efectúa 
ninguna manifestación o garantía expresado implícita con relación 
a este material o a la información contenida en el mismo. Sin 
limitar lo antedicho, Estudio Dávila no garantiza que este 
material o la información contenida en el mismo estén libres de 
errores o que reúnan ciertos criterios específicos de rendimiento 
o de calidad. Estudio Dávila expresamente se abstiene de expresar 
cualquier garantía implícita, incluyendo sin limitaciones 
garantías de valor comercial, propiedad, adecuación a un propósito 
particular, no-infracción, compatibilidad, seguridad y exactitud.</em></font></span></font></td>
</tr>
</table>
</div>
</td>
</tr>
<tr>
<td style="height: 1px; width: 896px">
</td>
</tr>
<tr>
<td style="height: 102px; width: 896px" align="center" bgcolor="#BBD0D0">
<span lang="es"><font size="2">
<font face="Verdana"><b>© 2013 . Estudio Dávila</b><br></font>
<font color="#FFFFFF" face="Verdana"><a href="http://www.estudiodavila.com.ar">
<font color="#000000">www.estudiodavila.com.ar</font></a></font></font></span><font face="Verdana" size="2"><br>
</font>
<span style="border-collapse: separate; font-family: 'Verdana'; font-style: normal; ">
<font size="2">(+54) 0261-4294364 . Mendoza. Argentina</font></span></td>
</tr>
</table>
</center>
</div>

</body>
</html>