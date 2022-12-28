<%@LANGUAGE="VBSCRIPT" CODEPAGE="1254"%>
<%
Response.CacheControl = "no-cache"
Response.AddHeader "Pragma", "no-cache"
Response.Expires = -1
%>
<%
Function CheckCAPTCHA(valCAPTCHA)
	SessionCAPTCHA = Trim(Session("CAPTCHA"))
	Session("CAPTCHA") = vbNullString
	if Len(SessionCAPTCHA) < 1 then
        CheckCAPTCHA = False
        exit function
    end if
	if CStr(SessionCAPTCHA) = CStr(valCAPTCHA) then
	    CheckCAPTCHA = True
	else
	    CheckCAPTCHA = False
	end if
End Function
%>

<%Dim nombre
  nombre = request.form("nombre")
  Dim email
  email = request.form("email")
  Dim telefono
  telefono = request.form("telefono")
  Dim provincia
  provincia = request.form("provincia")
  Dim pais
  pais = request.form("pais")
  Dim consulta
  consulta = request.form("consulta")
  %>
<html>

<head>
<meta http-equiv="Content-Language" content="es">
<meta name="GENERATOR" content="Microsoft FrontPage 6.0">
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



</head>

<body bgcolor="#000000">

<div align="center">
  <center>
  <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="800" height="501">
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
            <td width="12%" height="126" valign="top">
            <a onmouseover="image2.src='images/b2_2.jpg';" onmouseout="image2.src='images/b2_1.jpg';" href="historia.ASP">
<img name="image2" src="images/b2_1.jpg" border=0></a></td>


            <td width="12%" height="126" valign="top">
            <a onmouseover="image3.src='images/b3_2.jpg';" onmouseout="image3.src='images/b3_1.jpg';" href="servicios.ASP">
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
        <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" height="99" width="95%">
          <tr>
            <td height="99" width="735">
            <img border="0" src="images/sevice.jpg" align="right" hspace="15" vspace="10"><p>&nbsp;</p>
            <p><img border="0" src="images/contacto.gif"></p>
            <p><img border="0" src="images/img05a.gif"></p>
            <p><img border="0" src="images/Flecha-der2.jpg"><font face="Verdana" size="2"><span lang="es"> 
            Póngase en contacto con nosotros. Puede hacerlo utilizando el 
            formulario de contacto o llamarnos a nuestras oficinas en Mendoza, 
            Argentina al (+54) 0261-4294364. Muy pronto
            </span></font><span lang="es"><font face="Verdana" size="2">
            contestaremos a sus requerimientos.</font></span></p>
			<p align="center"><a href="Newsletter.asp">
      <img border="0" src="images/newssmall.jpg" width="234" height="52"></a></p></td>
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
      <td height="294" bgcolor="#FFFFFF">
      <div align="center">
        <center>
        <table border="0" cellpadding="10" cellspacing="10" style="border-collapse: collapse" width="668" height="336">
          <tr>
            <td height="13" width="628">
            <p align="center">
            <img border="0" src="images/img05a.gif"></p>
            <p align="center">
            <img border="0" src="images/Flecha-der2.jpg"><font face="Verdana" size="2"><span lang="es">
            </span></font><span lang="es"><font face="Verdana" size="2">Los 
            campos marcados con </font></span><font face="Verdana" size="4"><span lang="es">
            <font color="#E16629">*</font></span></font><span lang="es"><font face="Verdana" size="2"> 
            son obligatorios</font></span></p>
            <p align="center">
            <span lang="es"><font face="Verdana" size="2"><%
if Request.ServerVariables("REQUEST_METHOD") = "POST" then
	strCAPTCHA = Trim(Request.Form("strCAPTCHA"))
	if CheckCAPTCHA(strCAPTCHA) = true then
	
	 Response.Redirect "enviaemail.asp?nombre=" & nombre & "&email=" & email & "&telefono=" & telefono & "&provincia=" & provincia & "&pais=" & pais & "&consulta=" & consulta

	else
		%>
   
    <b style="color:#FF0000">El código de verificación es erróneo. <br />Ingrese 
            el nuevo.</span></b><span lang="es"><span lang="es">

		<%
	end if 
end if
%> </span></span>
</font></p>
            <!--webbot BOT="GeneratedScript" PREVIEW=" " startspan --><script Language="JavaScript" Type="text/javascript"><!--
function FrontPage_Form1_Validator(theForm)
{

  if (theForm.nombre.value == "")
  {
    alert("Please enter a value for the \"nombre\" field.");
    theForm.nombre.focus();
    return (false);
  }

  if (theForm.email.value == "")
  {
    alert("Please enter a value for the \"email\" field.");
    theForm.email.focus();
    return (false);
  }

  if (theForm.consulta.value == "")
  {
    alert("Please enter a value for the \"consulta\" field.");
    theForm.consulta.focus();
    return (false);
  }
  return (true);
}
//--></script><!--webbot BOT="GeneratedScript" endspan --><form method="POST" action="contacto.asp" onsubmit="return FrontPage_Form1_Validator(this)" language="JavaScript" name="FrontPage_Form1">
              <div align="center">
                <center>
                <table border="0" cellpadding="6" cellspacing="0" style="border-collapse: collapse" width="549">
                  <tr>
                    <td width="215" valign="top"><img border="0" src="images/Flecha-der2.jpg"><font face="Verdana" size="2"><span lang="es"> 
                    Su nombre completo </font>
                    <font color="#E16629" face="Verdana">*</font><font face="Verdana" size="2"> 
                    :</font></span></td>
                    <td width="334" valign="top">
                    <!--webbot bot="Validation" b-value-required="TRUE" --><input type="text" name="nombre" size="35" value="<%=nombre%>"></td>
                  </tr>
                  <tr>
                    <td width="215" valign="top"><img border="0" src="images/Flecha-der2.jpg"><font face="Verdana" size="2"><span lang="es"> </span></font>
                    <span lang="es"><font face="Verdana" size="2">Su email
                    </font></span><font face="Verdana"><span lang="es">
                    <font color="#E16629">*</font></span></font><font face="Verdana" size="2"><span lang="es"> 
                    :</span></font></td>
                    <td width="334" valign="top">
                    <!--webbot bot="Validation" b-value-required="TRUE" --><input type="text" name="email" size="35" value="<%=email%>"></td>
                  </tr>
                  <tr>
                    <td width="215" valign="top"><img border="0" src="images/Flecha-der2.jpg"><font face="Verdana" size="2"><span lang="es"> 
                    Su teléfono :</span></font></td>
                    <td width="334" valign="top">
                    <input type="text" name="telefono" size="35" value="<%=telefono%>"></td>
                  </tr>
                  <tr>
                    <td width="215" valign="top"><img border="0" src="images/Flecha-der2.jpg"><font face="Verdana" size="2"><span lang="es"> </span></font>
                    <span lang="es"><font face="Verdana" size="2">Provincia / 
                    Región : </font></span></td>
                    <td width="334" valign="top">
                    <input type="text" name="provincia" size="35" value="<%=provincia%>"></td>
                  </tr>
                  <tr>
                    <td width="215" valign="top"><img border="0" src="images/Flecha-der2.jpg"><font face="Verdana" size="2"><span lang="es"> </span></font>
                    <span lang="es"><font face="Verdana" size="2">País : </font>
                    </span></td>
                    <td width="334" valign="top">
                    <input type="text" name="pais" size="35" value="<%=pais%>"></td>
                  </tr>
                  <tr>
                    <td width="215" valign="top"><img border="0" src="images/Flecha-der2.jpg"><font face="Verdana" size="2"><span lang="es"> </span></font>
                    <span lang="es"><font face="Verdana" size="2">Su consulta
                    </font></span><font face="Verdana"><span lang="es">
                    <font color="#E16629">*</font></span></font><font face="Verdana" size="2"><span lang="es"> 
                    :</span></font></td>
                    <td width="334" valign="top">
                    <!--webbot bot="Validation" b-value-required="TRUE" --><textarea rows="9" name="consulta" cols="30"><%=consulta%></textarea></td>
                  </tr>
                  <tr>
                    <td width="215" valign="top"><img border="0" src="images/Flecha-der2.jpg"><font face="Verdana" size="2"><span lang="es"> </span></font>
                    <span lang="es"><font face="Verdana" size="2">Código de 
                    verificación</font></span><font face="Verdana"><span lang="es"><font color="#E16629">*</font></span></font><font face="Verdana" size="2"><span lang="es"> 
                    :</span></font><p><span lang="es">
                    <font face="Verdana" size="2">(para evitar el SPAM)</font></span></td>
                    <td width="334" valign="top">
                    <p align="center">
                    <span lang="es">&nbsp;<font color="#006666" size="2" face="Verdana">Escriba abajo estos caracteres</font> </span>
                    <img src="aspcaptcha.asp" alt="This Is CAPTCHA Image" width="86" height="21" /></p>
                    <p align="center">
                    <span lang="es"> <input name="strCAPTCHA" type="text" id="strCAPTCHA" maxlength="8" size="20" /> </span></p>
                    </td>
                  </tr>
                </table>
                </center>
              </div>
              <p align="center"><input type="submit" value="Enviar" name="B1"></p>
            </form>
            <p align="center"><img border="0" src="images/img06a.gif"></td>
          </tr>
        </table>
        </center>
      </div>
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