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
        <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="100%" height="190">
          <tr>
            <td width="100%" height="190">
          
              <p align="center"><br>
              <font color="#FFFFFF" face="Verdana"><span lang="es"> 
              
              
              
<%

set oConn =  Server.CreateObject("ADODB.Connection")


oConn.Open "DRIVER={Microsoft Access Driver (*.mdb)}; DBQ="&Server.MapPath("../db/usuarios.mdb")

Set RSArt = oConn.Execute("select * from registrados order by id desc") 

if not rsart.eof then


%>  
              
              
              
              </span><b><span lang="es"><font face="Georgia" size="2">&gt;&gt;&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp; 
                  Administración de usuarios de administración&nbsp;&nbsp;&nbsp; &lt;&lt;&lt;&lt;</span></font></b></font></p>
                  
              <div align="center">
                <center>
                <table border="0" cellspacing="1" width="546" cellpadding="3">
                  <tr>
                    <td width="268" align="center" bgcolor="#A0BFBF">
                    <span lang="es"><b>
                    <font face="Georgia" size="2" color="#004848">Usuario</font></b></span><font color="#004848" face="Verdana"><b><span lang="es"><font face="Georgia" size="2"> </font></span></b></font>
                    </td>
                    <td align="center" width="146" bgcolor="#A0BFBF">
                    <span lang="es"><b>
                    <font face="Georgia" size="2" color="#004848">Contraseña</font></b></span><font color="#004848" face="Verdana"><b><span lang="es"><font face="Georgia" size="2"> </font></span></b></font>
                    </td>
                    <td align="center" colspan="2" width="212" bgcolor="#A0BFBF">
                    <span lang="es"><b>
                    <font face="Georgia" size="2" color="#004848">Acciones</font></b></span><font color="#004848" face="Verdana"><b><span lang="es"><font face="Georgia" size="2"> </font></span></b></font>
                    </td>
                  </tr>
  
 <%paso = 1
  do while not rsart.eof
  if paso = 1 then %>                   
                  
                  <tr>
                    <td width="268" align="center" bgcolor="#E0EBEB">
                    <font face="Georgia" size="2" color="#004848">
                    <span lang="es"><%=RSArt("usuario")%></span></font><font color="#004848" face="Verdana"><span lang="es"><font face="Georgia" size="2"> </font></span></font>
                    </td>
                    <td align="center" width="146" bgcolor="#E0EBEB">
                    <span lang="es">
                    <font face="Georgia" size="2" color="#004848">*********</font></span><font color="#004848" face="Verdana"><b><span lang="es"><font face="Georgia" size="2"> </font></span></b></font>
                    </td>
                    <td align="center" width="124" bgcolor="#E0EBEB">
                    <p align="center"><span lang="es">
                    <font face="Georgia" size="2" color="#004848">
                    <a href="borraUsr.asp?id=<%=RSart("id")%>">
                    <font color="#004848">Borrar</font></a></font></span></td>
                    <td align="center" width="85" bgcolor="#E0EBEB">
                    <span lang="es">
                    <font face="Georgia" size="2" color="#004848">
                    <a href="editarUsr.asp?id=<%=RSart("id")%>">
                    <font color="#004848">Editar</font></a></font></span><font color="#FFFFFF" face="Verdana"><b><span lang="es"><font face="Georgia" size="2"> </font></span></b></font>
                    </td>
                  </tr>
    <%paso = 2
    else%>              
                  <tr>
                    <td width="268" align="center" bgcolor="#CBDCDC">
                    <span lang="es">
                    <font face="Georgia" size="2" color="#004848"><%=RSArt("usuario")%></font></span><font face="Georgia" size="2" color="#004848"><span lang="es"> 
                    </span></font></td>
                    <td align="center" width="146" bgcolor="#CBDCDC">
                    <span lang="es">
                    <font face="Georgia" size="2" color="#004848">*********</font></span><font color="#004848" face="Verdana"><b><span lang="es"><font face="Georgia" size="2"> </font></span></b></font>
                    </td>
                    <td align="center" width="124" bgcolor="#CBDCDC">
                    <span lang="es">
                    <font face="Georgia" size="2" color="#004848">
                    <a href="borraUsr.asp?id=<%=RSart("id")%>">
                    <font color="#004848">Borrar</font></a></font></span></td>
                    <td align="center" width="85" bgcolor="#CBDCDC">
                    <span lang="es">
                    <font face="Georgia" size="2" color="#004848">
                    <a href="editarUsr.asp?id=<%=RSart("id")%>">
                    <font color="#004848">Editar</font></a></font></span><font color="#FFFFFF" face="Verdana"><b><span lang="es"><font face="Georgia" size="2"> </font></span></b></font>
                    </td>
                  </tr>
                  
    <%paso = 1
    end if
    rsart.movenext
loop%>                  
                </table>
                </center>
              </div>
              <p align="center"><span lang="es"><b>
              <font face="Georgia" color="#FFFFFF"><a href="USRnuevo.ASP">
              <font color="#E0EBEB">¿ Desea agregar un nuevo usuarios de 
              administración ?</font></a></font></b></span><b><font color="#FFFFFF" face="Georgia"><span lang="es"><a href="USRnuevo.ASP"><font color="#E0EBEB">
              </font></a></span></font></b></p>
  <%else%>           
            
            <p align="center" style="line-height: 150%"><b>
            <font color="#FFFFFF" face="Georgia">No existen <span lang="es">mas 
            usuarios ...</span></font></b></p>
                  
             
                  
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
              <font color="#FFFFFF" face="Verdana"><span lang="es"> </span> </font></p>
       
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