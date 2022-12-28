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
  <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="800" height="33">
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
            <form method="POST" action="verificacion.asp">
              <p align="center"><br>
              <font color="#FFFFFF" face="Verdana"><span lang="es">  <%
     
    error = Request("error")
    

    if error = "yes" then
    
    %></span><b><font face="Georgia" size="2"><span lang="es">****&nbsp;&nbsp; 
              Hubo un error de acceso </span></font></b><span lang="es">  ****</span></p>
                  
              <p align="center" style="line-height: 150%">
              
              
                  <b><span lang="es"><font face="Georgia" size="2">&gt;&gt;&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp; 
                  Intente de nuevo&nbsp;&nbsp;&nbsp;&nbsp; &lt;&lt;&lt;&lt;</font></b></p>
                  
         <%else
         end if%> </span></font></p>
              <p align="center">
              <font color="#FFFFFF" face="Verdana"><span lang="es">
              <font size="2">&nbsp;&nbsp;&nbsp;&nbsp; Usuario: </font> 
              <input type="text" name="usuario" size="20"></span></font></p>
              <p align="center"><font color="#FFFFFF" face="Verdana">
              <span lang="es"><font size="2">Contraseña:</font>
              <input type="password" name="password" size="20"></span></font></p>
              <p align="center"><br>
              <input type="submit" value="Ingresar" name="B1"></p>
            </form>
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
      <td height="36" bgcolor="#FFFFFF">&nbsp;</td>
    </tr>
    <tr>
      <td height="1" bgcolor="#006666">
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

</body>

</html>