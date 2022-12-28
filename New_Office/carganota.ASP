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


<style>
<!--
.auto-style2 {
	font-family: Arial, Helvetica, sans-serif;
	font-size: medium;
	color: #FFFFFF;
}
.auto-style3 {
	color: #FFFFFF;
}
.auto-style10 {
	color: #FFFFFF;
	font-size: medium;
}
.auto-style8 {
	font-family: Arial, Helvetica, sans-serif;
	font-weight: bold;
	font-size: medium;
}
.auto-style6 {
	font-family: Arial, Helvetica, sans-serif;
	font-size: medium;
}

.auto-style1 {
	color: #FFFFFF;
	font-weight: bold;
}
.auto-style9 {
	font-size: medium;
}
.auto-style4 {
	font-family: Arial, Helvetica, sans-serif;
	font-weight: bold;
}
.auto-style7 {
	color: #FFFFFF;
	font-weight: bold;
	font-family: Arial, Helvetica, sans-serif;
}
.auto-style5 {
	font-family: Arial, Helvetica, sans-serif;
	font-weight: bold;
	font-size: medium;
	color: #FFFFFF;
}
-->
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
          
              <p align="center"><font size="2" face="Verdana"><br>
              </font>
              <font color="#FFFFFF" face="Verdana"><span lang="es"> 
              
              
              
              <font size="2"> 
              
              
              
              <% 

Set oConn = Server.CreateObject("ADODB.Connection")

' grabo nota

Dim nuevacategoria 
nuevacategoria = request("categoria")

DIM Nuevotipo
Nuevotipo = Request("nuevotipo")

'a = left(Nuevotipo,len(Nuevotipo)-2)
'Nuevotipo = a
'Nuevotipo = Cstr(Nuevotipo)

if Nuevotipo = "Ninguno" then
a = ""
else

end if

' Borro tipo si ya existe

Set oConn2 = Server.CreateObject("ADODB.Connection")
oConn2.Open "DRIVER={Microsoft Access Driver (*.mdb)}; DBQ="&Server.MapPath("../db/news.mdb")


Set RS2 = Server.CreateObject("ADODB.Recordset")

SQL2 = "select * from txt where tipo =  '"&Nuevotipo&"'"

RS2.Open SQL2, oConn2, 2,3,1
if not RS2.eof then
             RS2("tipo") = ""
             RS2.Update
else
end if

RS2.Close
set RS2 = nothing
oConn2.Close
set oConn2 = nothing



set RS = Server.CreateObject("ADODB.Recordset")  

oConn.Open "DRIVER={Microsoft Access Driver (*.mdb)}; DBQ="&Server.MapPath("../db/news.mdb")

             RS.Open "txt",oConn,2,2
             
             RS.AddNew
             
             RS("titulo") = request("titulo")
             RS("autor") = request("autor")
             RS("categoria") = nuevacategoria
             RS("resumen") = request("resumen")
             RS("texto") = Session("texto")
             RS("tipo") = nuevotipo
             RS("lecturas") = 1
             RS("fecha") = Now
             
             RS.Update
             RS.Close
             
set RS=nothing

oConn.Close
Session("texto")=""

' cargo tipo


'response.write Nuevotipo
'response.write a


 
 
 
%>
              
              
              
              </font>
              
              
              
              </span><b><span lang="es"><font size="2">&gt;&gt;&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp; 
                  Nueva nota&nbsp;&nbsp;&nbsp; &lt;&lt;&lt;&lt;</font></span></b></font></p>
                  
              <p align="center"><span lang="es"><b>
              <font face="Verdana" size="2" color="#FFFFFF">Ha sido cargada con 
              éxito !</font></b></span></p>
                  
              <p align="center"><span lang="es"><b>
              <font face="Verdana" size="2" color="#FFFFFF">¿ Que desea hacer 
              ahora ?</font></b></span></p>
				<div align="center">
                <table border="2" cellspacing="5" bordercolorlight="#FFFFFF" bordercolor="#00A6A6" cellpadding="10" style="width: 343px; height: 414px" id="table1">
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
                    </font><span class="auto-style7">Newssletter</span></a></font></span></td>
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
                    <a target="_blank" href="http://www.estudiodavila.com.ar/webmail">
                    <font color="#FFFFFF">Webmail</font></a></font></span></td>
                  </tr>
                  <tr>
                    <td align="center" bgcolor="#004848" class="auto-style5" style="width: 329px"><span lang="es">
                    <font color="#FFFFFF" size="2" class="auto-style8">&lt;&lt;
                    <a href="abandon.asp"><font color="#FFFFFF">Desconectarse</font></a> 
                    &gt;&gt;</font></span></td>
                  </tr>
                </table>
                </div>
				<p><br>
				<font color="#FFFFFF" face="Verdana"><span lang="es">
              	<font size="2">&nbsp;</font></span></font></td>
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