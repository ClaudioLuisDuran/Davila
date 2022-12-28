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
	color: #FFFFFF;
	font-weight: bold;
}
.auto-style2 {
	font-family: Arial, Helvetica, sans-serif;
	font-size: medium;
	color: #FFFFFF;
}
.auto-style3 {
	color: #FFFFFF;
}
.auto-style4 {
	font-family: Arial, Helvetica, sans-serif;
	font-weight: bold;
}
.auto-style5 {
	font-family: Arial, Helvetica, sans-serif;
	font-weight: bold;
	font-size: medium;
	color: #FFFFFF;
}
.auto-style6 {
	font-family: Arial, Helvetica, sans-serif;
	font-size: medium;
}
.auto-style7 {
	color: #FFFFFF;
	font-weight: bold;
	font-family: Arial, Helvetica, sans-serif;
}
.auto-style8 {
	font-family: Arial, Helvetica, sans-serif;
	font-weight: bold;
	font-size: medium;
}
.auto-style9 {
	font-size: medium;
}
.auto-style10 {
	color: #FFFFFF;
	font-size: medium;
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
			  <span lang="es" class="auto-style4"><font size="2">&gt;&gt;&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp; 
                  Menú&nbsp;&nbsp;&nbsp; &lt;&lt;&lt;&lt;</font></span></font></p>
                  
              <div align="center">
                <center>
                <table border="2" cellspacing="5" bordercolorlight="#FFFFFF" bordercolor="#00A6A6" cellpadding="10" style="width: 343px; height: 414px">
                    <tr>
                    <td align="center" bgcolor="#004848" class="auto-style2" style="width: 329px">
					<a href="admincateg.ASP"><span class="auto-style3"><strong>A</strong></span><span class="auto-style10"><strong>dministrar 
					categorías</strong></span></a></td>
                    </tr>
                    <tr>
                    <td align="center" bgcolor="#004848" class="auto-style2" style="width: 329px"><span lang="es">
                    <font color="#FFFFFF">
                    <a href="notanueva.asp"><font color="#FFFFFF">
					<span class="auto-style8">Cargar </span> </font></a></font>
                    <font color="#FFFFFF" size="2" class="auto-style6">
                    <a href="notanueva.asp"><b><font color="#FFFFFF">n</font></b><span class="auto-style1">uevo 
					artículo</span></a></font></span></td>
                    </tr>
                  <tr>
                    <td align="center" bgcolor="#004848" class="auto-style2" style="width: 329px"><span lang="es">
                    <font color="#FFFFFF">
                    <a href="notaresumen.ASP"><font color="#FFFFFF">
					<span class="auto-style8">Cargar nuevo RESUMEN</span></font></a></font></span></td>
                  </tr>
                  <tr>
                    <td align="center" bgcolor="#004848" class="auto-style2" style="width: 329px">
					<span lang="es" class="auto-style6">
                    <font color="#FFFFFF">
                    <a href="adminnotas.asp"><font color="#FFFFFF"><strong>Administrar 
                    articulos</strong></font></a></font></span></td>
                  </tr>
                    <tr>
                    <td align="center" bgcolor="#004848" class="auto-style2" style="width: 329px"><span lang="es">
                    <font color="#FFFFFF" size="2" class="auto-style9">
                    <a href="adminenvios.ASP"><font color="#FFFFFF">
					<span class="auto-style4">Administrar 
                    </span> 
                    </font><span class="auto-style7">Newsletter</span></a></font></span></td>
                    </tr>
                    <tr>
                    <td align="center" bgcolor="#004848" class="auto-style2" style="width: 329px">
					<span lang="es" class="auto-style8">
                    <font color="#FFFFFF">
                    <a href="adminsusc.ASP"><font color="#FFFFFF">Administrar 
                    </font></a></font>
                    </span><a href="adminsusc.asp"><span class="auto-style5">
					Suscriptores</span></a></td>
                    </tr>
                  <tr>
                    <td align="center" bgcolor="#004848" class="auto-style5" style="width: 329px">
					<span lang="es" class="auto-style8">
                    <font color="#FFFFFF">
                    <a href="usuarios.asp"><font color="#FFFFFF">Administrar 
                    usuarios</font></a></font></span></td>
                  </tr>
                  <tr>
                    <td align="center" bgcolor="#004848" class="auto-style5" style="width: 329px">
					<span lang="es" class="auto-style8">
                    <font color="#FFFFFF">
                    <a href="http://200.110.156.83/webmail" target="_blank">
                    <font color="#FFFFFF">Webmail</font></a></font></span></td>
                  </tr>
                  <tr>
                    <td align="center" bgcolor="#004848" class="auto-style5" style="width: 329px"><span lang="es">
                    <font color="#FFFFFF" size="2" class="auto-style8">&lt;&lt;
                    <a href="abandon.asp"><font color="#FFFFFF">Desconectarse</font></a> 
                    &gt;&gt;</font></span></td>
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