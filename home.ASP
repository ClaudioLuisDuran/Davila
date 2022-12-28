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
	border-width: 0px;
}
</style>



</head>

<body bgcolor="#000000">

<div align="center">
  <center>
  <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="802" height="449">
    <tr>
      <td height="31" background="images/bg1.jpg" width="802" colspan="3">
      <div align="center">
        <center>
        <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="100%" height="126">
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
        </center>
      </div>
      </td>
    </tr>
    <tr>
      <td height="119" background="images/bg2.jpg" width="802" colspan="3">
      <div align="center">
        <center>
        <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="100%" height="209">
          <tr>
            <td width="52%" height="209">
            <div align="center">
              <center>
              <table border="1" cellspacing="5" width="386" cellpadding="5" style="border-collapse: collapse" height="211">
                <tr>
                  <td width="400" height="196">
                  <p align="center"><span lang="es">
            <object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=8,0,0,0" width="365" height="201" id="Cuadro" align="middle">
<param name="allowScriptAccess" value="sameDomain" />
<param name="movie" value="Cuadro.swf" /><param name="quality" value="medium" /><param name="bgcolor" value="#006666" /><embed src="Cuadro.swf" quality="medium" bgcolor="#006666" width="348" height="187" name="Cuadro" align="middle" allowScriptAccess="sameDomain" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" /></object>
</span></td>
                </tr>
              </table>
              </center>
            </div>
            </td>
            <td width="48%" height="209">
            
  <%

set oConn =  Server.CreateObject("ADODB.Connection")

oConn.Open "DRIVER={Microsoft Access Driver (*.mdb)}; DBQ="&Server.MapPath("db/secciones.mdb")

Set RSArt = oConn.Execute("select * from resumen order by Id") 

if not rsart.eof then

'RSArt.movefirst
'a = RSArt.recordcount

a = 5

randomize
x = Rnd*a

' Buscamos el numero entre 1 y a.
numero_azar = Int (x + 1)

RSArt.movefirst
id = 1

do while (numero_azar <> id) and not RSArt.eof
id = id + 1


rsart.movenext
loop


%>
            <div align="center">
              <center>
              <table border="0" cellspacing="3" width="94%" cellpadding="3">
                <tr>
                  <td width="100%" colspan="2"><span lang="es"><font size="1">&nbsp;&nbsp;
                  </font></span></td>
                </tr>
                <tr>
                  <td width="100%" bgcolor="#A0BFBF" colspan="2"><b>
                  <font color="#001238" size="2" face="Verdana"><span lang="es">
                  <%=RSArt("seccion")%></font></b></td>
                </tr>
                <tr>
                  <td width="100%" bgcolor="#DFEAEA" colspan="2">
                  <span lang="es">
 <font color="#001238" size="2" face="Verdana"><%=RSART("resumen")%></font></span></td>
                </tr>            
                <tr>
                  <td width="76%">
                  <p align="right">&nbsp;</td>
                  <td width="24%" bgcolor="#FFFFFF">
                  <p align="center">
 <font color="#006666" size="2" face="Verdana"><span lang="es">
                  <a href="<%=RSArt("link")%>" style="text-decoration: none">
                  <font color="#006666">Ampliar </font></a></span>
                  <a href="<%=RSArt("link")%>" style="text-decoration: none">
                  <font color="#006666"><img border="0" src="images/Flecha-der2.jpg"><span lang="es"> </span><img border="0" src="images/Flecha-der2.jpg"></font><span lang="es"><font color="#006666">
                  </font> </span></a> </font></td>
                </tr>
              </table>
              </center>
            </div>
      <hr color="#CCDDDD" width="333" size="1" style="background-color: #A0BFBF">
      
 <% if numero_azar < 5 then
 rsart.movenext
 else
 rsart.movefirst
 end if%>        
            <div align="center">
              <center>
              <table border="0" cellspacing="3" width="363" cellpadding="3">
                <tr>
                  <td width="351" bgcolor="#A0BFBF" colspan="2"><b>
                  <font color="#001238" size="2" face="Verdana"><span lang="es">
                  <%=RSArt("seccion")%></span></font></b></td>
                </tr>
                <tr>
                  <td width="351" bgcolor="#DFEAEA" colspan="2">
                  <span lang="es">
 <font color="#001238" size="2" face="Verdana"><%=RSART("resumen")%></font></span></td>
                </tr>
                <tr>
                  <td width="263">
                  <p align="right">&nbsp;</td>
                  <td width="79" bgcolor="#FFFFFF">
                  <p align="center">
 <font color="#006666" size="2" face="Verdana"><span lang="es">
                  <a href="<%=RSArt("link")%>" style="text-decoration: none">
                  <font color="#006666">Ampliar </font></a></span>
                  <a href="<%=RSArt("link")%>" style="text-decoration: none">
                  <font color="#006666"><img border="0" src="images/Flecha-der2.jpg"><span lang="es"> </span><img border="0" src="images/Flecha-der2.jpg"></font><span lang="es"><font color="#006666">
                  </font> </span></a> </font></td>
                </tr>
              </table>
              </center>
            </div>
            
 <% 
end if
RsArt.close
set RsArt = nothing
oConn.Close
set oConn = nothing%>            
            
            </td>
          </tr>
        </table>
        </center>
      </div>
      </td>
    </tr>
    <tr>
      <td height="1" bgcolor="#FFFFFF" background="images/bg3.jpg" width="802" colspan="3">
      <span lang="es"><font size="1" face="Adobe Caslon Pro">&nbsp; </font>
      </span></td>
    </tr>
    <tr>
      <td height="302" bgcolor="#FFFFFF" width="592" valign="top" rowspan="6">
      <div align="center">
      
              <center>
        <table border="0" cellspacing="3" width="548" height="77" cellpadding="3">
          <tr>
            <td width="520" height="20" colspan="3" bgcolor="#DFEAEA">
      <span lang="es"> <b>
 <font color="#006666" size="2" face="Verdana">Novedades</font></b></span></td>
            </tr>
          <tr>
            <td height="20" colspan="3">
      <hr color="#008000" width="550" size="1">
      
      
            </td>
          </tr>
 <%

set oConn =  Server.CreateObject("ADODB.Connection")


oConn.Open "DRIVER={Microsoft Access Driver (*.mdb)}; DBQ="&Server.MapPath("db/news.mdb")

Set RSArt = oConn.Execute("select * from txt order by id_nota desc") 

if not rsart.eof then

notas = 3
cant = 1
do while not rsart.eof and (cant < 4)
%> 

          <tr>
            <td width="85" height="37">
            <font color="#006666" size="2" face="Verdana">
            <img border="0" src="images/noticias/<%=RSArt("autor")%>.jpg"></font></td>
            <td width="386" height="37">
            &nbsp;</td>
            <td width="49" height="37">&nbsp;</td>
          </tr>
          <tr>
            <td width="543" height="24" colspan="3" bgcolor="#006666"><b><span lang="es">
            <font face="Verdana" size="2" color="#FFFFFF"><%=RSArt("titulo")%></font></span></b></u></td>
          </tr>
          <tr>
            <td width="494" height="24" bgcolor="#CCDDDD" colspan="2"><span lang="es">
            <font color="#006666" size="2" face="Verdana"><%=RSArt("resumen")%></font><font color="#006666">.</font></span></td>
            <td width="49" height="24" valign="bottom">
            <font color="#006666" size="2" face="Verdana"><img border="0" src="images/Flecha-der2.jpg"><span lang="es">
            <a href="leernota.asp?id_nota=<%=RSArt("id_nota")%>"><font color="#006666">Leer</font></a></span></font></td>
          </tr>

      
      
<% cant = cant + 1
rsart.movenext
loop
end if
RsArt.close
set RsArt = nothing
oConn.Close
set oConn = nothing%> 

        </table>
        </center>
      </div>
      <hr color="#008000" width="550" size="1" style="background-color: #A0BFBF">

      <p align="center"> <b>
      <span lang="es">
 <font color="#006666" size="2" face="Verdana">
      <a href="todas.asp" style="text-decoration: none"><font color="#006666">Ver todas las notas publicadas&nbsp;
      </font></a> </font>
      </span></b>
            <a href="todas.asp" style="text-decoration: none">
            <font color="#006666" size="2" face="Verdana"><img border="0" src="images/Flecha-der2.jpg"></font><font color="#006666">
      </font></a>     
      
      </td>
      <td height="302" bgcolor="#DFEAEA" width="1" rowspan="6">
      <p align="center">&nbsp;</td>
      <td height="52" bgcolor="#A0baba" width="234" align="center">
      <a href="Newsletter.asp">
      <img border="0" src="images/newssmall.jpg" width="234" height="52"></a></td>
      
         <tr>
      <td bgcolor="#A0baba" width="234" align="center" style="height: 34px">
      <a href="descargas.ASP">
	  <img class="auto-style1" height="52" src="images/bannerdescargas.jpg" width="234"></a><br>
	  <p>
      
      <font color="#006666" face="Verdana" size="2">
			Suscríbase gratis a nuestro Newssletter. Ingrese su email:
			</font>
		<form method="POST" action="cargarnuevoSUSC.asp">
				<p align="center"><input type="text" name="email" size="24"> </p>
				<p align="center">&nbsp;<input type="submit" value="Suscribir" name="B1"></p>
			</form>
      
      
      </td>
      
         <tr>
      <td bgcolor="#A0baba" width="234" align="center" style="height: 40px">
      <p align="center"><b><font face="Verdana" size="2" color="#006666">
		<a href="Newsletter.asp"><font color="#006666">
		<span style="text-decoration: none">Lea el último newsletter aquí</span></font></a></font></b></td>
      
         <tr>
      <td height="100" bgcolor="#FFFFFF" width="211">
      <p align="center"><span lang="es">
      
      <!-- cotizacion-dolar.com.ar 234x90px FormalCD -->
<div style="border: 1px solid rgb(90, 90, 90); background:
rgb(160, 191, 191) none repeat scroll 0% 50%; text-align: center; width:
234px; height: 90px; line-height: 100%;"><script
type="text/javascript" language="JavaScript1.1"
src="http://www.cotizacion-dolar.com.ar/recursos-webmaster/formal-cd/dolar_euro_234x90.js"></script><small><a
style="border: 0px none ; font-size: 8pt; color: rgb(79, 0, 0);
text-decoration: none; font-family: sans-serif,Helvetica,Arial;"
href="http://www.cotizacion-dolar.com.ar" target="_top"
title="Cotizaci&oacute;n actualizada del d&oacute;lar,
euro, real, peso uruguayo, peso chileno en
Argentina">cotizacion</a>
- <a style="border: 0px none ; font-size: 8pt; color: rgb(79, 0,
0); text-decoration: none; font-family: sans-serif,Helvetica,Arial;"
href="http://www.cotizacion-dolar.com.ar/cotizacion_hoy.php"
target="_top" title="Cotizaci&oacute;n del d&oacute;lar
hoy - ver m&aacute;s monedas">dolar
hoy</a></small></div><!--
fin código -->
      </span></td>
    </tr>
      
      
      <tr>
      <td height="150" bgcolor="#A0BABA" width="234">
      <div align="center">
        <center>
        <table border="0" cellspacing="3" width="179" cellpadding="3">
          <tr>
            <td width="175">
            <span lang="es">
            <div style='width: 180px; height: 150px; background-image: url(&#039;http://vortex.accuweather.com/adcbin/netweather_v2/backgrounds/fall1_180x150_bg.jpg&#039;); background-repeat: no-repeat; background-color: #E3B589' ><div style='height: 138px;' ><script src='http://netweather.accuweather.com/adcbin/netweather_v2/netweatherV2.asp?partner=netweather&tStyle=normal&logo=1&zipcode=SAM|AR|AR013|MENDOZA|&lang=esp&size=8&theme=fall1&metric=1&target=_self'></script></div><div style='text-align: center; font-family: arial, helvetica, verdana, sans-serif; font-size: 10px; line-height: 12px; color: #0000FF;' ><a style='color: #0000FF' href='http://www.accuweather.com/world-index-forecast.asp?partner=netweather&locCode=SAM|AR|AR013|MENDOZA|&metric=1' >Weather Forecast</a> | <a style='color: #0000FF' href='http://www.accuweather.com/maps-satellite.asp' >Weather Maps</a></div></div></span></td>
          </tr>
          
           <tr>
      <td height="12" bgcolor="#A0BABA" width="234">
      
          
        </table>
        </center>
    </span></td>
      </tr>
 <p align="center"><span lang="es"></span></tr>
    <tr>
      <td align="center" height="19" bgcolor="#006666" width="802">
<!-- Histats.com  START  -->
<a href="http://www.histats.com/es/" target="_blank" title="contador pagina web" ><script  type="text/javascript" language="javascript">
var s_sid = 657888;var st_dominio = 4;
var cimg = 152;var cwi =85;var che =17;
      </script></a>
<script  type="text/javascript" language="javascript" src="http://s11.histats.com/js9.js"></script>
<noscript>
      <a href="http://www.histats.com/es/" target="_blank">
<img  src="http://s103.histats.com/stats/0.gif?657888&1" alt="contador pagina web" border="0"></a></noscript>
<!-- Histats.com  END  -->
</td>
</tr>

</div>

   

</body>

</html>