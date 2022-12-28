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
<meta name="GENERATOR" content="Microsoft FrontPage 12.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>:: Estudio Aduanero Dávila :: Modulo de Administración Web ::</title>


<style type="text/css">
.auto-style1 {
	font-family: Arial, Helvetica, sans-serif;
	font-weight: bold;
}
.auto-style2 {
	font-family: Arial, Helvetica, sans-serif;
}
.auto-style4 {
	font-family: Verdana;
	font-size: x-small;
	color: #FFFFFF;
}
.auto-style5 {
	background-color: #7DB769;
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
            <td>
          
              <p align="center"><br>
              <font color="#FFFFFF" face="Verdana">
			  <span lang="es" class="auto-style2"> 
              
              
              
<%

set oConn =  Server.CreateObject("ADODB.Connection")


oConn.Open "DRIVER={Microsoft Access Driver (*.mdb)}; DBQ="&Server.MapPath("../db/susc.mdb")

Set RSArt = oConn.Execute("select * from listado order by id desc") 

if not rsart.eof then


%>  
              
              
              
              </span><span lang="es" class="auto-style1"><font size="2">&gt;&gt;&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp; 
                  Administración de Suscriptores del Newsletter&nbsp;&nbsp;&nbsp; &lt;&lt;&lt;&lt;</font></span></font></p>
			  <p align="center">
			  
			  
			  
			  
			  
			  <p align="center">
              <font color="#FFFFFF" face="Verdana"><b><span lang="es"><font face="Georgia" size="2">&gt;&gt;&gt;&gt;&nbsp;&nbsp;&nbsp;Listado 
			  de suscriptores &lt;&lt;&lt;&lt;</font></span></b></font></p>
              </form>
                  
              <div align="center">
                <center>
                <table border="0" cellspacing="1" cellpadding="3" style="width: 550">
                  <tr>
                    <td align="center" bgcolor="#A0BFBF" style="width: 1329px">
                    <font color="#004848" face="Verdana"><b><span lang="es">
					<font face="Georgia" size="2"> 
					Email </font></span></b></font>
                    </td>
                    <td align="center" bgcolor="#A0BFBF" style="width: 345px">
                    ¿Activo?</td>
                    <td width="470" align="center" bgcolor="#A0BFBF">
                    Fecha</td>
                    <td width="470" align="center" bgcolor="#A0BFBF" colspan="2">
                    Acciones</td>
                  </tr>
  
 <%paso = 1
  do while not rsart.eof
  if paso = 1 then 
  estado = RSArt("activo")
  estado = Cbool(estado)%>                   
                  
                  <tr>
                    <td align="center" bgcolor="#E0EBEB" style="width: 1329px">
                    <font face="Georgia" size="2" color="#004848">
                    <span lang="es"><%=RSArt("email")%></span></font>
                    </td>
                    <td align="center" bgcolor="#E0EBEB" style="width: 345px">
                    <%=RSArt("activo")%></td>
                    <td width="470" align="center" bgcolor="#E0EBEB">
                    <%=RSArt("fecha")%></td>
                    <td align="center" bgcolor="#E0EBEB" style="width: 388px">
                    <a href='bajasusc.asp?id=<%=RSArt("id")%>&amp;activo=<%=RSArt("activo")%>'>
                    <%if estado = TRUE then%>
                    Baja
                    <%else%>
                    Alta
                    <%end if%></a></td>
                    <td width="470" align="center" bgcolor="#E0EBEB" style="width: 235px">
                    <a href='borrasusc.asp?id=<%=RSArt("id")%>' onclick="return confirm('¿Estas seguro?');" >Borrar</a></td>
                  </tr>
    <%paso = 2
    else
    estado = RSArt("activo")
    estado = Cbool(estado)%>              
                  <tr>
                    <td align="center" bgcolor="#CBDCDC" style="width: 1329px">
                    <span lang="es">
                    <font face="Georgia" size="2" color="#004848"><%=RSArt("email")%></font></span></td>
                    <td align="center" bgcolor="#CBDCDC" style="width: 345px">
                    <%=RSArt("activo")%></td>
                    <td width="470" align="center" bgcolor="#CBDCDC">
                    <%=RSArt("fecha")%></td>
                    <td align="center" bgcolor="#CBDCDC" style="width: 388px">
                    <a href='bajasusc.asp?id=<%=RSArt("id")%>&amp;activo=<%=RSArt("activo")%>'><%if estado = TRUE then%>
                    Baja
                    <%else
                    %>
                    Alta
                    <%end if%></a></td>
                    <td width="470" align="center" bgcolor="#CBDCDC" style="width: 235px">
                    <a href='borrasusc.asp?id=<%=RSArt("id")%>'  onclick="return confirm('¿Estas seguro?');">Borrar</a></td>
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
            <font color="#FFFFFF" face="Georgia">No existen suscripciones cargadas aún</font></b></p>
                  

        
                  
         <%
         end if
         RsArt.close
set RsArt = nothing
oConn.Close
set oConn = nothing%>
              <p>&nbsp;</p>

<p align="center"><br>
              <font color="#FFFFFF" face="Verdana"><span lang="es"> 
              </span><b><span lang="es"><font face="Georgia" size="2">&gt;&gt;&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp;¿Nuevo 
suscriptor? Agregue su email a continuación:&nbsp;&nbsp; &lt;&lt;&lt;&lt;</font></span></b></font></p>
                  
              <form method="post" action="cargarnuevoSUSC.ASP">
                <div align="center">
                  <center>
                  <table border="0" cellspacing="7" width="400" cellpadding="7" style="height: 49px">
                    <tr>
                      <td align="right" class="auto-style5" style="height: 61px; width: 60px;">
                      <span class="auto-style4">Email</span><span lang="es"><font face="Verdana" size="2" color="#FFFFFF"> 
                      :</font></td>
                      <td width="158" class="auto-style5" style="height: 61px">
                      <input type="text" name="email" size="17" style="width: 278px"></td>
                    </tr>
                    </span>
                    </table>
                  </center>
                </div>
                <p align="center">
                <input type="submit" value="Cargar nueva suscripción" name="B1"></p>
      
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