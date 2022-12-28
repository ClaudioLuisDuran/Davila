<%@ Language=VBScript %>
<% Response.Buffer = True %>

 
<% 
if Session("usuario")= "" then

yes = "yes"
Response.Redirect "index.asp?error="&yes&""

  else
end if

%>

<html>

<head>
<meta http-equiv="Content-Language" content="es">
<meta name="GENERATOR" content="Microsoft FrontPage 6.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>:: Estudio Aduanero Dávila :: Modulo de Administración Web ::</title>


<style type="text/css">
.auto-style3 {
	font-size: x-small;
	color: #004848;
	font-family: Arial, Helvetica, sans-serif;
}
.auto-style4 {
	font-family: Arial, Helvetica, sans-serif;
	font-size: x-small;
}
.auto-style5 {
	font-family: Arial, Helvetica, sans-serif;
	font-weight: bold;
	font-size: x-small;
}
.auto-style6 {
	font-family: Georgia;
	font-weight: bold;
	font-size: x-small;
	color: #FFFFFF;
}
.auto-style7 {
	font-family: Georgia;
}
.auto-style8 {
	color: #FBFFE1;
	font-family: Arial, Helvetica, sans-serif;
}
.auto-style10 {
	font-family: Arial, Helvetica, sans-serif;
}
.auto-style11 {
	font-family: Arial, Helvetica, sans-serif;
	font-weight: bold;
	font-size: x-small;
	color: #FFFFFF;
}
</style>


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
        <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="100%" height="190">
          <tr>
            <td width="100%" height="190">
          
              <p align="center"><br>
              <font color="#FFFFFF" face="Verdana">
			  <span lang="es" class="auto-style5">&gt;&gt;&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp; 
                  Administración de NEWSSLETTER&nbsp;&nbsp;&nbsp; &lt;&lt;&lt;&lt;</span></font></p>
			  <p align="center"><span class="auto-style11"><font face="Verdana">
				1º) <span style="font-weight: 400">P</span></font></span><span class="auto-style7"><span class="auto-style6"><span class="auto-style10"><font face="Verdana"><span style="font-weight: 400">ara 
			  poder enviar una nueva Newsletter debe </span>primero<span style="font-weight: 400"> 
				asignar los artículos</span> </font> </span> <a href="adminnotas.ASP"><span class="auto-style8">
				<font face="Verdana">AQUÍ</font></span></a></span></span></p>
				<p align="center"><span class="auto-style8">
				<font size="2" face="Verdana">2º) Una vez que ha 
				asignado los 4 artículos a enviar <b>puede generar</b> la nueva Newsletter haciendo
				</font><font size="2"> <b><a href="activanews.ASP">
				<font face="Verdana" color="#FBFFE1">click AQUI </font></a></b>
				</font></span><font size="2" face="Verdana"><br>
&nbsp;</font></p>

<%

set oConn =  Server.CreateObject("ADODB.Connection")


oConn.Open "DRIVER={Microsoft Access Driver (*.mdb)}; DBQ="&Server.MapPath("../db/news.mdb")

Set RSArt = oConn.Execute("select * from envios order by id_new desc") 

if not rsart.eof then

%> 



				<div align="center">
                <center>
                <table border="0" cellspacing="1" width="670" cellpadding="3" style="height: 85px">
                  <tr>
                    <td align="center" bgcolor="#A0BFBF" class="auto-style5" style="width: 83px; height: 28px">
                    <font color="#004848" face="Verdana">
					<span lang="es" class="auto-style5">Nº </span></font>
                    </td>
                    <td align="center" bgcolor="#A0BFBF" style="width: 83px; height: 28px">
                    <span class="auto-style3">Creado</span><font color="#004848" face="Verdana"><span lang="es" class="auto-style5"> </span></font>
                    </td>
                    <td align="center" bgcolor="#A0BFBF" style="width: 83px; height: 28px">
                    <span class="auto-style3">Princ</span><font color="#004848" face="Verdana"><span lang="es" class="auto-style5"> </span></font>
                    </td>
                    <td align="center" bgcolor="#A0BFBF" style="width: 84px; height: 28px">
                    <span class="auto-style3">Sec 1</span><font color="#004848" face="Verdana"><span lang="es" class="auto-style5"> </span></font>
                    </td>
                    <td align="center" bgcolor="#A0BFBF" class="auto-style4" style="width: 84px; height: 28px">
                    Sec 2</td>
                    <td align="center" bgcolor="#A0BFBF" class="auto-style4" style="width: 84px; height: 28px">
                    Sec 3</td>
                    <td align="center" width="64" bgcolor="#A0BFBF" style="height: 28px; width: 84px" class="auto-style3">
                   <font color="#004848" face="Verdana">
					<span lang="es" class="auto-style4"> Envío</span></font></td>
                    <td align="center" width="64" bgcolor="#A0BFBF" style="height: 28px; width: 84px">
                    <span class="auto-style3">Lecturas web</span><font color="#004848" face="Verdana"><span lang="es" class="auto-style5"> </span></font>
                    </td>
                    <td align="center" width="64" bgcolor="#A0BFBF" style="height: 28px; width: 84px" class="auto-style3">
                    Vista web</td>
                  </tr>
  
 <%paso = 1
  do while not rsart.eof
  if paso = 1 then %>                   
                  
                  <tr>
                    <td align="center" bgcolor="#E0EBEB" class="auto-style4" style="width: 83px; height: 28px">
                    <font color="#004848">
                    <span lang="es" class="auto-style4"><%=RSArt("id_new")%></span></font></td>
                    <td align="center" bgcolor="#E0EBEB" style="width: 83px; height: 28px">
                    <span lang="es" class="auto-style4">
                    <font color="#004848"><%=RSArt("fecha")%></font></span></td>
                    <td align="center" bgcolor="#E0EBEB" style="width: 83px; height: 28px">
                    <span lang="es" class="auto-style4">
                    <font color="#004848"><%=RSArt("P")%></font></span></td>
                    <td align="center" bgcolor="#E0EBEB" style="width: 84px; height: 28px">
                    <span lang="es" class="auto-style4">
                    <font color="#004848"><%=RSArt("S1")%></font></span></td>
                    <td align="center" bgcolor="#E0EBEB" class="auto-style4" style="width: 84px; height: 28px">
                    <%=RSArt("S2")%></td>
                    <td align="center" bgcolor="#E0EBEB" class="auto-style4" style="width: 84px; height: 28px">
                    <%=RSArt("S3")%></td>
                    <td align="center" width="64" bgcolor="#E0EBEB" style="height: 28px; width: 84px">
                    <span lang="es" class="auto-style4">
                    <%if RSArt("enviada") = TRUE then%>
                    <font color="#004848">Enviado</font></span>
                    <%else%>
                    <font color="#004848">
					<a href='enviar_NL.asp?id_new=<%=RSArt("id_new")%>'><span class="auto-style4">
					<strong>Enviar</strong></span></a></font><a href='EnviarNews.asp?id_new=<%=RSArt("id_new")%>'>
					<strong>
                    <span class="auto-style4">
                    <%end if%></span></strong></a></td>
                    <td align="center" width="64" bgcolor="#E0EBEB" style="height: 28px; width: 84px">
                    <span lang="es" class="auto-style4">
                    <font color="#004848"><%=RSArt("lecturas")%></font></span></td>
                    <td align="center" width="64" bgcolor="#E0EBEB" style="height: 28px; width: 84px">
                    <span lang="es" class="auto-style4">
                    <font color="#004848">
					<a href='Newsletter.asp?id_new=<%=RSArt("id_new")%>' target="_blank">Ver</a></font></span></td>
                  </tr>
    <%paso = 2
    else%>              
                  <tr>
                    <td align="center" bgcolor="#CBDCDC" class="auto-style4" style="width: 83px; height: 29px">
                    <span lang="es" class="auto-style4">
                    <font color="#004848"><%=RSArt("id_new")%></font></span></td>
                    <td align="center" bgcolor="#CBDCDC" style="width: 83px; height: 29px">
                    <span lang="es" class="auto-style4">
                    <font color="#004848"><%=RSArt("fecha")%></font></span></td>
                    <td align="center" bgcolor="#CBDCDC" style="width: 83px; height: 29px">
                    <span lang="es" class="auto-style4">
                    <font color="#004848"><%=RSArt("P")%></font></span></td>
                    <td align="center" bgcolor="#CBDCDC" style="width: 84px; height: 29px">
                    <span lang="es" class="auto-style4">
                    <font color="#004848"><%=RSArt("S1")%></font></span></td>
                    <td align="center" bgcolor="#CBDCDC" class="auto-style4" style="width: 84px; height: 29px">
                    <%=RSArt("S2")%></td>
                    <td align="center" bgcolor="#CBDCDC" class="auto-style4" style="width: 84px; height: 29px">
                    <%=RSArt("S3")%></td>
                    <td align="center" width="64" bgcolor="#CBDCDC" style="height: 29px; width: 84px">
                    <span lang="es" class="auto-style4">
                    <%if RSArt("enviada") = TRUE then%>
                    <font color="#004848">Enviado</font></span>
                    <%else%>
                    <font color="#004848">
					<a href='enviar_NL.asp?id_new=<%=RSArt("id_new")%>'><span class="auto-style4">
					<strong>Enviar</strong></span></a></font><a href='EnviarNews.asp?id_new=<%=RSArt("id_new")%>'>
					<strong>
                    <span class="auto-style4">
                    <%end if%></span></strong></a></td>
                    <td align="center" width="64" bgcolor="#CBDCDC" style="height: 29px; width: 84px">
                    <span lang="es" class="auto-style4">
                    <font color="#004848"><%=RSArt("lecturas")%></font></span></td>
                    <td align="center" width="64" bgcolor="#CBDCDC" style="height: 29px; width: 84px">
                    <span lang="es" class="auto-style4">
                    <font color="#004848">
					<a href='Newsletter.asp?id_new=<%=RSArt("id_new")%>' target="_blank">Ver</a></font></span></td>
                  </tr>
                  
    <%paso = 1
    end if
    rsart.movenext
loop%>                  
                </table>
                </center>
              </div>
  <%else%>           
            
            <p align="center" style="line-height: 150%"><b>
            <font color="#FFFFFF" face="Georgia">No existen Newsletter cargados aún</font></b></p>

                  
         <%
         end if
         RsArt.close
set RsArt = nothing
oConn.Close
set oConn = nothing%>
              <p>&nbsp;</p>

      
              <div align="center">
                <center>
                <table border="2" cellspacing="5" width="250" bordercolorlight="#FFFFFF" bordercolor="#00A6A6" cellpadding="10">
                  <tr>
                    <td align="center" bgcolor="#004848"><span lang="es"><b>
                    <a href="New_Office.ASP">
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