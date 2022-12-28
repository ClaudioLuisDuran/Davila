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
              <font color="#FFFFFF" face="Verdana"><span lang="es"> 
              
              
              
<%

set oConn =  Server.CreateObject("ADODB.Connection")


oConn.Open "DRIVER={Microsoft Access Driver (*.mdb)}; DBQ="&Server.MapPath("../db/usuarios.mdb")

Set RSArt = oConn.Execute("select * from registrados where id = " & request("id") & "") 

if not rsart.eof then


%>  
              
              
              
              </span><b><span lang="es"><font face="Georgia" size="2">&gt;&gt;&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp; 
                  Edición de Usuario de administración&nbsp;&nbsp;&nbsp; &lt;&lt;&lt;&lt;</span></font></b></font></p>
                  

                  
              <p align="center"><b>


 </span></font></b></p>
                  
              <form method="POST" action="USRcambios.asp">
                <div align="center">
                  <center>
                  <table border="0" cellspacing="7" width="342" cellpadding="7" height="116">
                    <tr>
                      <td align="right" height="22" width="100">
                      <font face="Verdana" size="2" color="#FFFFFF">
                      <span lang="es">Usuario</span></font><span lang="es"><font face="Verdana" size="2" color="#FFFFFF"> 
                      :</font></td>
                      <td width="136" height="22">
                      <input type="text" name="usuario" size="22" value="<%=RSArt("usuario")%>"></td>
                    </tr>
                  
                      </span>           
                    <tr>
                      <td align="right" height="1" width="100">
                      <font face="Verdana" size="2" color="#FFFFFF">
                      <span lang="es">Contraseña</span></font><span lang="es"><font face="Verdana" size="2" color="#FFFFFF"> 
                      :</font></td>
                      <td width="136" height="1"><span lang="es">
                      <input type="text" name="password" size="22" value="<%=RSArt("password")%>"></span></td>
                    </tr>
                    </table>
                  </center>
                </div>
                <p align="center">
                <input type="submit" value="Cargar cambios de usuario" name="B1"></p>
                <input type="hidden" name="id" value="<%=request("id")%>">
              </form>
                  
                      </span>           
 <%else%>           
            <p align="center" style="line-height: 150%"><b>
            <font color="#FFFFFF" face="Georgia">No existen <span lang="es">esa 
            nota ...</span></font></b></p>
          <%
         end if
         RsArt.close
set RsArt = nothing
oConn.Close
set oConn = nothing%>                 
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