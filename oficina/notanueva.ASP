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

<%
Dim titulo
  titulo = request.form("titulo")
  Dim autor
  autor = request.form("autor")
  Dim resumen
  resumen = request.form("resumen")
  Dim texto
  texto = request.form("texto")
  Session("texto") = texto
  %>



<html>

<head>
<meta http-equiv="Content-Language" content="es">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>:: Estudio Aduanero Dávila :: Modulo de Administración Web ::</title>


</head>

<body bgcolor="#000000">

<div align="center">
  <center>
  <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="800" height="1">
    <tr>
      <td height="31" background="../images/bg1.jpg">
      <div align="center">
        <center>
        <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="100%" height="126">
          <tr>
            <td width="87%" height="126" valign="top">
            
            &nbsp;<p align="center"><b><font color="#006666" size="4" face="Verdana">
            <span lang="es">Módulo de Administración Web </span></font></b>
            <p align="center"><b><font color="#006666" size="4" face="Verdana">
            <span lang="es">Estudio Dávila</span></font></b></td>
            
            <td width="13%" height="126" valign="top"><img border="0" src="../images/logo.jpg"></td>
          </tr>
        </table>
        </center>
      </div>
      </td>
    </tr>
    <tr>
      <td height="210" background="../images/bg2.jpg">
      <div align="center">
        <center>
        <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="100%" height="178">
          <tr>
            <td width="100%" height="178">
          
              <p align="center"><br>
              <font color="#FFFFFF" face="Verdana"><span lang="es">  
              
              
              </span><b><span lang="es"><font face="Georgia" size="2">&gt;&gt;&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp; 
                  Publicar nueva nota&nbsp;&nbsp; &lt;&lt;&lt;&lt;</font></span></b></font></p>
                  
              <p align="center"><span lang="es"><b>
              <font face="Georgia" size="2" color="#FFFFFF">
              
              <%
if Request.ServerVariables("REQUEST_METHOD") = "POST" then
	strCAPTCHA = Trim(Request.Form("strCAPTCHA"))
	if CheckCAPTCHA(strCAPTCHA) = true then 
	 Response.Redirect "carganota.ASP?titulo=" & titulo & "&autor=" & autor & "&resumen=" & resumen
	else
		%> </font></b></span><b>
              <span lang="es">
              <font face="Georgia" size="2" color="#FFFF00">
              
              ATENCIÓN</font><font face="Georgia" size="2" color="#FFFFFF">
              
              :</font></span><font face="Georgia" size="2" color="#FFFF00"><span lang="es"> El código de verificación es erróneo. <br />Ingrese 
            el nuevo.
<%end if
end if%>
 </span></font></b><span lang="es"><span lang="es"></p>
                  
              <form method="POST" action="notanueva.asp">
                <div align="center">
                  <center>
                  <table border="0" cellspacing="7" width="789" cellpadding="7" height="552">
                    <tr>
                      <td align="right" height="22" width="164"><span lang="es">
                      <font face="Verdana" size="2" color="#FFFFFF">Título :</font></span></td>
                      <td width="519" height="22">
                      <input type="text" name="titulo" size="72" value="<%=titulo%>"></td>
                      <td width="36" height="22">&nbsp;</td>
                    </tr>
                    <tr>
                      <td align="right" height="19" width="164"><span lang="es">
                      <font face="Verdana" size="2" color="#FFFFFF">Autor :</font></span></td>
                      <td width="519" height="19"><select size="1" name="autor">
                      <option selected value="<%=autor%>"><%=autor%></option>
                      <option value="AFIP">AFIP</option>
                      <option value="Tarifar">Tarifar</option>
                      <option value="Boletin Oficial">Boletin Oficial</option>
                      <option value="BAE">BAE</option>
                      <option value="InfoBae Profesional">InfoBae Profesional
                      </option>
                      <option value="TELAM">TELAM</option>
                      <option value="CDA-Argentina">CDA-Argentina</option>
                      <option value="SENASA">SENASA</option>
                      <option value="LA NACION">LA NACION</option>
                      <option value="CRONISTA">CRONISTA</option>
                      <option value="CERA">CERA</option>
                      <option value="EXPORTAR">EXPORTAR.ORG</option>
                      <option value="CAMBRAS">CAMBRAS</option>
                      <option value="BAIREXPORT">BAIREXPORT</option>
                      <option value="Otro">Otro</option>
                      <option value="PCRAM">PCRAM</option>
                      </select></td>
                      <td width="36" height="19">&nbsp;</td>
                    </tr>
                    <tr>
                      <td align="right" height="36" width="164"><span lang="es">
                      <font face="Verdana" size="2" color="#FFFFFF">Resumen :</font></span></td>
                      <td width="519" height="36">
                      <textarea rows="2" name="resumen" cols="61"><%=resumen%></textarea></td>
                      <td width="36" height="36">&nbsp;</td>
                    </tr>
                    <tr>
                      <td align="right" height="1" width="164"><span lang="es">
                      <font face="Verdana" size="2" color="#FFFFFF">Texto de la 
                      nota :</font></span></td>
                      <td width="519" rowspan="4" height="338">
                      <textarea rows="30" name="texto" cols="61"><%=Session("texto")%></textarea></td>
                      <td width="36" height="1"></td>
                    </tr>
                    <tr>
                      <td align="right" height="105" width="164">&nbsp;</td>
                      <td width="36" height="105">&nbsp;</td>
                    </tr>
                    <tr>
                      <td align="right" height="105" width="164">&nbsp;</td>
                      <td width="36" height="105">&nbsp;</td>
                    </tr>
                    <tr>
                      <td align="right" height="108" width="164">&nbsp;</td>
                      <td width="36" height="108">&nbsp;</td>
                    </tr>
                    <tr>
                      <td align="right" height="32" width="164"><span lang="es">
                      <font face="Verdana" size="2" color="#FFFFFF">Código de 
                      verificación : </font></span></td>
                      </span></span>
                      <td width="519" height="32"><span lang="es">
                      <p align="left">
                    <font color="#FFFFFF">&nbsp;</font><font color="#FFFFFF" size="2" face="Verdana">Escriba abajo estos caracteres 
                    &gt;&gt; </font>&nbsp;<img src="aspcaptcha.asp" alt="This Is CAPTCHA Image" width="86" height="21" /></p>
                    <p align="center">
                    <span lang="es"> <input name="strCAPTCHA" type="text" id="strCAPTCHA" maxlength="8" size="20" /></span></td>
                      <span lang="es"><span lang="es">
                      <td width="36" height="32">&nbsp;</td>
                    </tr>
                  </table>
                  </center>
                </div>
                <p align="center">
                <input type="submit" value="Cargar nueva nota" name="B1"></p>
                <input type="hidden" name="textook" value="<%=texto%>">
              </form>
            
              <div align="center">
                <center>
                <table border="2" cellspacing="5" width="250" bordercolorlight="#FFFFFF" bordercolor="#00A6A6" cellpadding="10">
                  <tr>
                    <td align="center" bgcolor="#004848">
                    <span lang="es"><b>
                    <a href="office.ASP">
                    <font face="Verdana" size="2" color="#FFFFFF">Volver al menú 
                    de administración</font></a></b></span></td>
                  </tr>
                  <tr>
                    <td align="center" bgcolor="#004848"><b><span lang="es">
                    <font color="#FFFFFF" face="Verdana" size="2">&lt;&lt;
                    <a href="abandon.asp"><font color="#FFFFFF">Desconectarse</font></a> 
                    &gt;&gt;</font></span></b></td>
                  </tr>
                </table>
                </center>
              </div>
              <font color="#FFFFFF" face="Verdana"><span lang="es">
                  
       </span> </font></p>
                     
            </td>
          </tr>
        </table>
        </center>
      </div>
      </td>
    </tr>
    <tr>
      <td height="1" bgcolor="#FFFFFF" background="../images/bg3.jpg">&nbsp;</td>
    </tr>
    <tr>
      <td height="1" bgcolor="#FFFFFF">&nbsp;</td>
    </tr>
    <tr>
      <td height="1" bgcolor="#006666">&nbsp;</td>
    </tr>
  </table>
  </center>
</div>

</body>

</html>