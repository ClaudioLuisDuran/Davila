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

Set oConn = Server.CreateObject("ADODB.Connection")

' grabo nota

set RS = Server.CreateObject("ADODB.Recordset")  

oConn.Open "DRIVER={Microsoft Access Driver (*.mdb)}; DBQ="&Server.MapPath("../db/notas.mdb")

             RS.Open "txt",oConn,2,2
             
             RS.AddNew
             
             RS("titulo") = request("titulo")
             RS("autor") = request("autor")
             RS("resumen") = request("resumen")
             RS("texto") = Session("texto")
             RS("lecturas") = 1
             RS("fecha") = Now
             
             RS.Update
             RS.Close
             
set RS=nothing

oConn.Close
Session("texto")=""
 
%>
              
              
              
              </span><b><span lang="es"><font face="Georgia" size="2">&gt;&gt;&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp; 
                  Nueva nota&nbsp;&nbsp;&nbsp; &lt;&lt;&lt;&lt;</font></span></b></font></p>
                  
              <p align="center"><span lang="es"><b>
              <font face="Georgia" size="2" color="#FFFFFF">Ha sido cargada con 
              éxito !</font></b></span></p>
                  
              <p align="center"><span lang="es"><b>
              <font face="Georgia" size="2" color="#FFFFFF">ż Que desea hacer 
              ahora ?</font></b></span></p>
                  
              <div align="center">
                <center>
                <table border="2" cellspacing="5" width="250" bordercolorlight="#FFFFFF" bordercolor="#00A6A6" cellpadding="10">
                  <tr>
                    <td align="center" bgcolor="#004848"><b><span lang="es">
                    <font color="#FFFFFF" face="Verdana" size="2">
                    <a href="notanueva.asp"><font color="#FFFFFF">Cargar otra nota</span></font></a></font></b></td>
                  </tr>
                  <tr>
                    <td align="center" bgcolor="#004848"><b><span lang="es">
                    <font color="#FFFFFF" face="Verdana" size="2">
                    <a href="adminnotas.asp"><font color="#FFFFFF">Administrar 
                    notas</font></a></font></span></b></td>
                  </tr>
                  <tr>
                    <td align="center" bgcolor="#004848"><b><span lang="es">
                    <font color="#FFFFFF" face="Verdana" size="2">
                    <a href="usuarios.asp"><font color="#FFFFFF">Administrar 
                    usuarios</font></a></font></span></b></td>
                  </tr>
                  <tr>
                    <td align="center" bgcolor="#004848"><span lang="es"><b>
                    <font face="Verdana" size="2" color="#FFFFFF">
                    <a target="_blank" href="http://www.estudiodavila.com.ar/webmail">
                    <font color="#FFFFFF">Webmail</font></a></font></b></span></td>
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
              <p align="center">
              <font color="#FFFFFF" face="Verdana"><span lang="es">
              <font size="2">&nbsp;</font></span></font></p>
       
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