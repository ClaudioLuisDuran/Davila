<html>

<head>
<meta http-equiv="Content-Language" content="es">
<meta name="GENERATOR" content="Microsoft FrontPage 12.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>:: Estudio Aduanero Dávila :: Comercio Exterior ::</title>

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



<style type="text/css">
.auto-style1 {
	border-collapse: collapse;
}
.auto-style2 {
	text-align: center;
	font-family: Verdana, Geneva, Tahoma, sans-serif;
	font-size: x-small;
	text-decoration: underline;
	background-color: #CCDDDD;
}
.auto-style3 {
	font-size: x-small;
}
.auto-style4 {
	color: #006666;
}
.auto-style5 {
	font-size: x-small;
	font-family: Verdana, Geneva, Tahoma, sans-serif;
}
</style>



</head>

<body bgcolor="#000000">

<div align="center">
  <center>
  <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="800" height="422">
    <tr>
      <td height="31" background="images/bg1.jpg">
      <div align="center">
        <center>
        <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="100%" height="126">
          <tr>
            <td width="12%" height="126" valign="top">
            
            <a onmouseover="image1.src='images/b1_2.jpg';" onmouseout="image1.src='images/b1_1.jpg';" href="home.ASP">
<img name="image1" src="images/b1_1.jpg" border=0></a>

            
</td>
            <td width="12%" height="126" valign="top"><a href="todas.ASP" onmouseover="image2.src='images/b2_2.jpg';"
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
        </center>
      </div>
      </td>
    </tr>
    <tr>
      <td height="141" bgcolor="#FFFFFF">
      <div align="center">
        <center>
        <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" height="99" width="679">
          <tr>
            <td height="99" width="679">
            <img border="0" src="images/diarios.jpg" align="right" hspace="10"><span lang="es">
            </span>
            <p>&nbsp;</p>
            <p><img border="0" src="images/Novedades.gif"></p>
            <p><img border="0" src="images/img05a.gif"></p>
            </td>
          </tr>
        </table>
        </center>
      </div>
      </td>
    </tr>
    <tr>
      <td height="16" bgcolor="#FFFFFF" background="images/bg3.jpg">&nbsp;</td>
    </tr>
    <tr>
      <td height="215" bgcolor="#FFFFFF" valign="top">
      <div align="center">
        <center>
        <table border="0" cellspacing="5" style="border-collapse: collapse" width="747" cellpadding="5" height="40">
          <tr>
          
          <%
          
          set oConn =  Server.CreateObject("ADODB.Connection")
oConn.Open "DRIVER={Microsoft Access Driver (*.mdb)}; DBQ="&Server.MapPath("db/news.mdb")

Dim cat
cat = request("cat")
Dim strCadenaBusqueda
strCadenaBusqueda = cat

Dim cartel
if cat = "" then
cartel = "de todas las categorías"
else
cartel = "de la categoría " & cat
end if

if cat = "" then
Set RSArt = oConn.Execute("select * from txt order by id_nota desc") 
else
Set RSArt = oConn.Execute("select * from txt where categoria LIKE '%" & strCadenaBusqueda & "%' order by id_nota desc") 

end if

          
          %>
          
          
          
            <td width="743" bgcolor="#CCDDDD" height="16"><span lang="es"><b>
            <font face="Verdana" size="2" color="#006666">Todas las notas 
            publicadas <%=cartel%></font></b></span></td>
          </tr>
          <tr>
            <td width="743" height="1">
      <hr color="#008000" width="550" size="1">
      
      
            </td>
          </tr>
        </table>
        </center>
      </div>
   
         <table align="center" style="width: 93%" cellpadding="2">
			 <tr>
				 <td style="width: 1237px">
				 
				 
				   
         <%
         



if not rsart.eof then

notas = 3
'cant = 1
'do while not rsart.eof and (cant < 4)
do while not rsart.eof
%> 
   <div align="center">
        <center>
        <table border="0" cellpadding="3" cellspacing="3" style="width: 100%;" height="2" class="auto-style1">
          <tr>
            <td width="713" height="17" colspan="2">
            <font color="#006666" size="2" face="Verdana">
            <img border="0" src="images/noticias/<%=RSArt("autor")%>.jpg"></font><span lang="es"><i><font face="Verdana" size="2" color="#006666"> </font></i>
            <font face="Verdana" size="1" color="#006666">( Publicada el&nbsp;<%=RSArt("fecha")%>&nbsp; )</font></span></td>
          </tr>
          <tr>
            <td width="731" height="24" colspan="2" bgcolor="#006666"><b><span lang="es">
            <font face="Verdana" size="2" color="#FFFFFF"><%=RSArt("titulo")%></font></span></b></u></td>
          </tr>
          <tr>
            <td width="614" height="24" bgcolor="#CCDDDD"><span lang="es">
            <font color="#006666" size="2" face="Verdana"><%=RSArt("resumen")%></font><font color="#006666">.</font></span></td>
            <td width="108" height="24" valign="bottom">
            <p align="center">
            <font color="#006666" size="2" face="Verdana"><img border="0" src="images/Flecha-der2.jpg"><span lang="es">
            <a href="leernota.asp?id_nota=<%=RSArt("id_nota")%>"><font color="#006666">Leer</font></a></span></font></td>
          </tr>
        </table>
        </center>
      </div>
      <hr color="#008000" width="550" size="1" style="background-color: #A0BFBF">
<% 'cant = cant + 1
rsart.movenext
loop
else%>

<%
end if
RsArt.close
set RsArt = nothing
oConn.Close
set oConn = nothing%> 
				 
				 
				 </td>
				 <td style="width: 246" class="auto-style2" valign="top">
				 <strong><span class="auto-style4">CATEGORIAS</span><br>
				 </strong>
				 <table align="center" style="width: 90%">
				
				 <%

set oConn =  Server.CreateObject("ADODB.Connection")
oConn.Open "DRIVER={Microsoft Access Driver (*.mdb)}; DBQ="&Server.MapPath("db/news.mdb")
Set RS = oConn.Execute("select * from categorias") 
if not RS.eof then
do while not rs.eof%>
					 <tr>
						 <td class="auto-style3">
						 <a href='todas.asp?cat=<%=RS("categoria")%>'><%=RS("categoria")%></a></td>
					 </tr>
<%rs.movenext
loop
else%>

  <span class="auto-style5">No existen aún artículos en esa categoría. 
			Disculpe. </span></p>
	  <p align="center">
            
            <img border="0" src="images/img05a.gif"></p>

<%
end if
Rs.close
set Rs = nothing%>				 
				 <tr>
						 <td class="auto-style3">
						 <a href='todas.asp'>Todas</a></td>
					 </tr>

                    </table>
				 </td>
			 </tr>
	  </table>

      
            <p align="center">
            
         
	  <p align="center">
            
            <img border="0" src="images/img05a.gif"></p>
            <p align="center"><a href="Newsletter.asp">
      <img border="0" src="images/newssmall.jpg" width="234" height="52"></a></p>
		<p align="center"><b><font color="#006666">
            <a href="javascript:history.back()" style="text-decoration: none">
            <font color="#006666">
            <img border="0" src="images/Flecha-der2.jpg" width="7" height="10"></font><span lang="es"><font color="#006666" face="Verdana" size="2"> </font></span>
            </a></font></b><span lang="es"><b>
            <a href="javascript:history.back()" style="text-decoration: none">
            <font face="Verdana" size="2" color="#006666">Volver a la página 
            anterior</font></a></b></span></p>
            <p align="center">
            <img border="0" src="images/img05a.gif"></p>
            <p align="center">&nbsp;</p>
      </td>
    </tr>
    <tr>
      <td height="19" bgcolor="#006666">
      <p align="center"><span lang="es"><!-- Histats.com  START  -->
<a href="http://www.histats.com/es/" target="_blank" title="contador pagina web" ><script  type="text/javascript" language="javascript">
var s_sid = 657888;var st_dominio = 4;
var cimg = 152;var cwi =85;var che =17;
      </script></a>
<script  type="text/javascript" language="javascript" src="http://s11.histats.com/js9.js"></script>
<noscript>
      <a href="http://www.histats.com/es/" target="_blank">
<img  src="http://s103.histats.com/stats/0.gif?657888&1" alt="contador pagina web" border="0"></a></noscript>
<!-- Histats.com  END  --></span></td>
    </tr>
  </table>
  </center>
</div>

<p align="center">&nbsp;</p>

</body>

</html>