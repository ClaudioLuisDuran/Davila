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
<meta content="text/html; charset=windows-1252" http-equiv="Content-Type" />
<title>Envio de Newssletter</title>
</head>

<body>

<%

' ENVIO EMAIL MASIVO A SUSCRITPRES !!!!

' Creo variables propias del email

DIM cuerpo
DIM cdoHigh
DIM email

' Creo variables usadas en conexion y datos

DIM oConn
DIM RSArt
DIM id_new
id_new = request("id_new")

DIM P
DIM S1
DIM S2
DIM S3

DIM titulo_p
DIM autor_p
DIM resumen_p
DIM texto_p

DIM titulo_s1
DIM autor_s1
DIM resumen_s1
DIM texto_s1

DIM titulo_s2
DIM autor_s2
DIM resumen_s2
DIM texto_s2

DIM titulo_s3
DIM autor_s3
DIM resumen_s3
DIM texto_s3


'Conecto y extraigo datos de la id_new

set oConn =  Server.CreateObject("ADODB.Connection")

oConn.Open "DRIVER={Microsoft Access Driver (*.mdb)}; DBQ="&Server.MapPath("../db/news.mdb")

Set RSArt = oConn.Execute("select * from Envios where Id_new = " & request("id_new") & "") 

if not rsart.eof then

DIM fechaok
DIM f


fechaok = RSArt("fecha")
'a = left(fechaok,len(fechaok)-11)
Dim dia
Dim mes
Dim anio

dia = Day(fechaok)
mes = Month(fechaok)
anio = Year(fechaok)

a = dia & "/" & mes & "/" & anio


P = RSArt("P")
S1 = RSArt("S1")
S2 = RSArt("S2")
S3 = RSArt("S3")

end if
RsArt.close
set RsArt = nothing
oConn.Close
set oConn = nothing


' Conecto para extraer las notas


' Conecto para Principal


set oConn =  Server.CreateObject("ADODB.Connection")

oConn.Open "DRIVER={Microsoft Access Driver (*.mdb)}; DBQ="&Server.MapPath("../db/news.mdb")

Set RSArt = oConn.Execute("select * from txt where id_nota = " & P & "") 

if not rsart.eof then

titulo_p = RSArt("titulo")
autor_p = RSArt("autor")
resumen_p = RSArt("resumen")
texto_p = RSArt("texto")
    ArreglaTexto (texto_p)
            Sub ArreglaTexto ( cadena_texto )
            texto_p = Replace (texto_p,vbCrLf, "<br>")
            texto_p = Left(texto_p, 400)
            End Sub

end if
RsArt.close
set RsArt = nothing
oConn.Close
set oConn = nothing 

' Conecto para Secundaria 1


set oConn =  Server.CreateObject("ADODB.Connection")

oConn.Open "DRIVER={Microsoft Access Driver (*.mdb)}; DBQ="&Server.MapPath("../db/news.mdb")

Set RSArt = oConn.Execute("select * from txt where id_nota = " & S1 & "") 

if not rsart.eof then

titulo_s1 = RSArt("titulo")
resumen_S1 = RSArt("resumen")
    ArreglaTexto_s1 (texto_s1)
            Sub ArreglaTexto_s1 ( cadena_texto_s1 )
            resumen_S1 = Replace (resumen_S1,vbCrLf, "<br>")
            resumen_S1 = Left(resumen_S1, 400)
            End Sub

end if
RsArt.close
set RsArt = nothing
oConn.Close
set oConn = nothing	


' Conecto para Secundaria 2


set oConn =  Server.CreateObject("ADODB.Connection")

oConn.Open "DRIVER={Microsoft Access Driver (*.mdb)}; DBQ="&Server.MapPath("../db/news.mdb")

Set RSArt = oConn.Execute("select * from txt where id_nota = " & S2 & "") 

if not rsart.eof then

titulo_s2 = RSArt("titulo")
resumen_S2 = RSArt("resumen")
    ArreglaTexto_s2 (texto_s2)
            Sub ArreglaTexto_s2 ( cadena_texto_s2 )
            resumen_S2 = Replace (resumen_S2,vbCrLf, "<br>")
            resumen_S2 = Left(resumen_S2, 400)
            End Sub

end if
RsArt.close
set RsArt = nothing
oConn.Close
set oConn = nothing	

' Conecto para Secundaria 3


set oConn =  Server.CreateObject("ADODB.Connection")

oConn.Open "DRIVER={Microsoft Access Driver (*.mdb)}; DBQ="&Server.MapPath("../db/news.mdb")

Set RSArt = oConn.Execute("select * from txt where id_nota = " & S3 & "") 

if not rsart.eof then

titulo_s3 = RSArt("titulo")
resumen_S3 = RSArt("resumen")
    ArreglaTexto_s3 (texto_s3)
            Sub ArreglaTexto_s3 ( cadena_texto_s3 )
            resumen_S3 = Replace (resumen_S3,vbCrLf, "<br>")
            resumen_S3 = Left(resumen_S3, 400)
            End Sub

end if
RsArt.close
set RsArt = nothing
oConn.Close
set oConn = nothing	


%>  

<%

'Armo cuerpo de email

%>



<%

cuerpo = "<html><head>"
cuerpo = cuerpo & "<meta http-equiv=" & chr(34) & "Content-Language" & chr(34) & " content=" & chr(34) & "es" & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "<meta name=" & chr(34) & "GENERATOR" & chr(34) & " content=" & chr(34) & "Microsoft FrontPage 12.0" & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "<meta name=" & chr(34) & "ProgId" & chr(34) & " content=" & chr(34) & "FrontPage.Editor.Document" & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "<meta http-equiv=" & chr(34) & "Content-Type" & chr(34) & " content=" & chr(34) & "text/html; charset=windows-1252" & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "<title>:: Newsletter Estudio Aduanero Dávila ::</title>" & VbCrLf

cuerpo = cuerpo & "</head>" & VbCrLf

cuerpo = cuerpo & "<body bgcolor=" & chr(34) & "#000000" & chr(34) & " style=" & chr(34) & "background-image: url('http://www.estudiodavila.com.ar/images/bkgfondo_pag.gif')" & chr(34) & ">" & VbCrLf

cuerpo = cuerpo & "<div align=" & chr(34) & "center" & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "<center>" & VbCrLf
cuerpo = cuerpo & "<table border=" & chr(34) & "0" & chr(34) & " cellpadding=" & chr(34) & "0" & chr(34) & " style=" & chr(34) & "width: 900px; height: 944" & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "<tr>" & VbCrLf
cuerpo = cuerpo & "<td height=" & chr(34) & "31" & chr(34) & " style=" & chr(34) & "width: 896px" & chr(34) & " align=" & chr(34) & "center" & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "<div align=" & chr(34) & "center" & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "<center>" & VbCrLf
cuerpo = cuerpo & "<table cellpadding=" & chr(34) & "8" & chr(34) & " cellspacing=" & chr(34) & "0" & chr(34) & " height=" & chr(34) & "126" & chr(34) & " bgcolor=" & chr(34) & "#E2EBEB" & chr(34) & " width=" & chr(34) & "100%" & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "<tr>" & VbCrLf
cuerpo = cuerpo & "<td style=" & chr(34) & "height: 136; " & chr(34) & " bgcolor=" & chr(34) & "#E2EBEB" & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "<p align=" & chr(34) & "center" & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "<img alt=" & chr(34) & "" & chr(34) & " height=" & chr(34) & "140" & chr(34) & " src=" & chr(34) & "http://www.estudiodavila.com.ar/images/supOK.jpg" & chr(34) & " width=" & chr(34) & "870" & chr(34) & "></td>" & VbCrLf
cuerpo = cuerpo & "</tr>" & VbCrLf
cuerpo = cuerpo & "</tr>" & VbCrLf
cuerpo = cuerpo & "</table>" & VbCrLf
cuerpo = cuerpo & "</center>" & VbCrLf
cuerpo = cuerpo & "</div>" & VbCrLf
cuerpo = cuerpo & "</td>" & VbCrLf
cuerpo = cuerpo & "</tr>" & VbCrLf


cuerpo = cuerpo & "<tr>" & VbCrLf
cuerpo = cuerpo & "<td style=" & chr(34) & "height: 180px; width: 896px;" & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "<div align=" & chr(34) & "center" & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "<center>" & VbCrLf
cuerpo = cuerpo & "<table cellpadding=" & chr(34) & "9" & chr(34) & " cellspacing=" & chr(34) & "6" & chr(34) & " width=" & chr(34) & "99%" & chr(34) & " height=" & chr(34) & "190" & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "<tr>" & VbCrLf
cuerpo = cuerpo & "<td width=" & chr(34) & "97%" & chr(34) & " colspan=" & chr(34) & "3" & chr(34) & " rowspan=" & chr(34) & "3" & chr(34) & " style=" & chr(34) & "height: 451" & chr(34) & " bgcolor=" & chr(34) & "#BBD0D0" & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "<p>" & VbCrLf
cuerpo = cuerpo & "<div>" & VbCrLf
cuerpo = cuerpo & "<p align=" & chr(34) & "right" & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "<strong><font face=" & chr(34) & "Verdana" & chr(34) & " size=" & chr(34) & "2" & chr(34) & "><em><span>Mendoza," & a & "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></em></font></strong></div>" & VbCrLf


cuerpo = cuerpo & "<table align=" & chr(34) & "center" & chr(34) & " cellpadding=" & chr(34) & "4" & chr(34) & " cellspacing=" & chr(34) & "1" & chr(34) & " style=" & chr(34) & "width: 862px; height: 477px" & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "<tr>" & VbCrLf
cuerpo = cuerpo & "<td colspan=" & chr(34) & "3" & chr(34) & " style=" & chr(34) & "height: 30" & chr(34) & " valign=" & chr(34) & "top" & chr(34) & " bgcolor=" & chr(34) & "#E2EBEB" & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "<img alt=" & chr(34) & "" & chr(34) & " height=" & chr(34) & "30" & chr(34) & " src=" & chr(34) & "http://www.estudiodavila.com.ar/images/destacada.jpg" & chr(34) & " width=" & chr(34) & "850" & chr(34) & ">&nbsp;</td>" & VbCrLf
cuerpo = cuerpo & "</tr>" & VbCrLf
cuerpo = cuerpo & "<tr>" & VbCrLf
cuerpo = cuerpo & "<td colspan=" & chr(34) & "2" & chr(34) & " style=" & chr(34) & "height: 146px" & chr(34) & " valign=" & chr(34) & "top" & chr(34) & " bgcolor=" & chr(34) & "#E2EBEB" & chr(34) & " width=" & chr(34) & "569" & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "<span><font size=" & chr(34) & "2" & chr(34) & " face=" & chr(34) & "Verdana" & chr(34) & "><b>" & titulo_p & "</b></font></span><font size=" & chr(34) & "2" & chr(34) & " face=" & chr(34) & "Verdana" & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "<span ><br>" & VbCrLf
cuerpo = cuerpo & "</span><strong>Fuente</strong>:&nbsp; " & autor_p & VbCrLf
cuerpo = cuerpo & "<br><br>" & VbCrLf
cuerpo = cuerpo & "<i>" & resumen_p & "</i>" & VbCrLf			  
cuerpo = cuerpo & "<br><br>" & VbCrLf            
cuerpo = cuerpo & texto_p & " ...</font><span><font size=" & chr(34) & "2" & chr(34) & " face=" & chr(34) & "Verdana" & chr(34) & "><br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font><em><font size=" & chr(34) & "2" & chr(34) & " face=" & chr(34) & "Verdana" & chr(34) & ">&nbsp;</font><font color=" & chr(34) & "#006666" & chr(34) & " size=" & chr(34) & "2" & chr(34) & " face=" & chr(34) & "Verdana" & chr(34) & "><a href='http://www.estudiodavila.com.ar/leernota.ASP?id_nota=" & P & "'><img border=" & chr(34) & "0" & chr(34) & " src=" & chr(34) & "http://www.estudiodavila.com.ar/images/Flecha-der2.jpg" & chr(34) & "></a></font><a href='http://www.estudiodavila.com.ar/leernota.ASP?id_nota=" & P & "' target=" & chr(34) & "_blank" & chr(34) & "><font size=" & chr(34) & "2" & chr(34) & " face=" & chr(34) & "Verdana" & chr(34) & ">Leer artículo completo</font></a></em></td>" & VbCrLf
cuerpo = cuerpo & "<td style=" & chr(34) & "height: 146px" & chr(34) & " valign=" & chr(34) & "top" & chr(34) & " bgcolor=" & chr(34) & "#E2EBEB" & chr(34) & " width=" & chr(34) & "276" & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "<p align=" & chr(34) & "center" & chr(34) & "><b><font face=" & chr(34) & "Verdana" & chr(34) & " size=" & chr(34) & "2" & chr(34) & " color=" & chr(34) & "#0A6C6C" & chr(34) & ">Artículos publicados por categoría</font></b></p>" & VbCrLf
cuerpo = cuerpo & "<div align=" & chr(34) & "center" & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "<table border=" & chr(34) & "0" & chr(34) & " width=" & chr(34) & "70%" & chr(34) & " id=" & chr(34) & "table1" & chr(34) & " cellspacing=" & chr(34) & "4" & chr(34) & " cellpadding=" & chr(34) & "2" & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "<tr>" & VbCrLf
cuerpo = cuerpo & "<td bgcolor=" & chr(34) & "#BBD0D0" & chr(34) & " align=" & chr(34) & "center" & chr(34) & "><font face=" & chr(34) & "Verdana" & chr(34) & " size=" & chr(34) & "2" & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "<a href=" & chr(34) & "http://www.estudiodavila.com.ar/todas.asp?cat=&quot;Exportación&quot;" & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "<font color=" & chr(34) & "#0A6C6C" & chr(34) & "><span style=" & chr(34) & "text-decoration: none" & chr(34) & ">Exportación</span></font></a></font></td>" & VbCrLf
cuerpo = cuerpo & "</tr>" & VbCrLf
cuerpo = cuerpo & "<tr>" & VbCrLf
cuerpo = cuerpo & "<td bgcolor=" & chr(34) & "#BBD0D0" & chr(34) & " align=" & chr(34) & "center" & chr(34) & "><font face=" & chr(34) & "Verdana" & chr(34) & " size=" & chr(34) & "2" & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "<a href=" & chr(34) & "http://www.estudiodavila.com.ar/todas.asp?cat=&quot;Importación&quot;" & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "<font color=" & chr(34) & "#0A6C6C" & chr(34) & "><span style=" & chr(34) & "text-decoration: none" & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "Importación</span></font></a></font></td>" & VbCrLf
cuerpo = cuerpo & "</tr>" & VbCrLf
cuerpo = cuerpo & "<tr>" & VbCrLf
cuerpo = cuerpo & "<td bgcolor=" & chr(34) & "#BBD0D0" & chr(34) & " align=" & chr(34) & "center" & chr(34) & "><font face=" & chr(34) & "Verdana" & chr(34) & " size=" & chr(34) & "2" & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "<a href=" & chr(34) & "http://www.estudiodavila.com.ar/todas.asp?cat=&quot;General&quot;" & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "<font color=" & chr(34) & "#0A6C6C" & chr(34) & "><span style=" & chr(34) & "text-decoration: none" & chr(34) & ">General</span></font></a></font></td>" & VbCrLf
cuerpo = cuerpo & "</tr>" & VbCrLf
cuerpo = cuerpo & "<tr>" & VbCrLf
cuerpo = cuerpo & "<td bgcolor=" & chr(34) & "#BBD0D0" & chr(34) & " align=" & chr(34) & "center" & chr(34) & "><font face=" & chr(34) & "Verdana" & chr(34) & " size=" & chr(34) & "2" & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "<a href=" & chr(34) & "http://www.estudiodavila.com.ar/todas.asp?cat=&quot;Cambiaria&quot;" & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "<span style=" & chr(34) & "text-decoration: none" & chr(34) & "><font color=" & chr(34) & "#0A6C6C" & chr(34) & ">Cambiaria</font></span></a></font></td>" & VbCrLf
cuerpo = cuerpo & "</tr>" & VbCrLf
cuerpo = cuerpo & "<tr>" & VbCrLf
cuerpo = cuerpo & "<td bgcolor=" & chr(34) & "#BBD0D0" & chr(34) & " align=" & chr(34) & "center" & chr(34) & "><font face=" & chr(34) & "Verdana" & chr(34) & " size=" & chr(34) & "2" & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "<a href=" & chr(34) & "http://www.estudiodavila.com.ar/todas.asp?cat=&quot;Vitivinícola y bebidas&quot;" & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "<span style=" & chr(34) & "text-decoration: none" & chr(34) & "><font color=" & chr(34) & "#0A6C6C" & chr(34) & ">Vitivinícola y bebidas</font></span></a></font></td>" & VbCrLf
cuerpo = cuerpo & "</tr>" & VbCrLf
cuerpo = cuerpo & "<tr>" & VbCrLf
cuerpo = cuerpo & "<td bgcolor=" & chr(34) & "#BBD0D0" & chr(34) & " align=" & chr(34) & "center" & chr(34) & "><font face=" & chr(34) & "Verdana" & chr(34) & " size=" & chr(34) & "2" & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "<a href=" & chr(34) & "http://www.estudiodavila.com.ar/todas.asp?cat=&quot;Prensa&quot;" & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "<span style=" & chr(34) & "text-decoration: none" & chr(34) & "><font color=" & chr(34) & "#0A6C6C" & chr(34) & ">Prensa</font></span></a></font></td>" & VbCrLf
cuerpo = cuerpo & "</tr>" & VbCrLf
cuerpo = cuerpo & "<tr>" & VbCrLf
cuerpo = cuerpo & "<td bgcolor=" & chr(34) & "#BBD0D0" & chr(34) & " align=" & chr(34) & "center" & chr(34) & "><font face=" & chr(34) & "Verdana" & chr(34) & " size=" & chr(34) & "2" & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "<a href=" & chr(34) & "http://www.estudiodavila.com.ar/todas.asp?cat=&quot;Otras Industrias&quot;" & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "<span style=" & chr(34) & "text-decoration: none" & chr(34) & "><font color=" & chr(34) & "#0A6C6C" & chr(34) & ">Otras industrias</font></span></a></font></td>" & VbCrLf
cuerpo = cuerpo & "</tr>" & VbCrLf
cuerpo = cuerpo & "<tr>" & VbCrLf
cuerpo = cuerpo & "<td bgcolor=" & chr(34) & "#BBD0D0" & chr(34) & " align=" & chr(34) & "center" & chr(34) & "><font face=" & chr(34) & "Verdana" & chr(34) & " size=" & chr(34) & "2" & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "<a href=" & chr(34) & "http://www.estudiodavila.com.ar/todas.asp" & chr(34) & "><span style=" & chr(34) & "text-decoration: none" & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "<font color=" & chr(34) & "#0A6C6C" & chr(34) & ">Todas las categorías</font></span></a></font></td>" & VbCrLf
cuerpo = cuerpo & "</tr>" & VbCrLf
cuerpo = cuerpo & "</table>" & VbCrLf
cuerpo = cuerpo & "</div>" & VbCrLf
cuerpo = cuerpo & "</td>" & VbCrLf
cuerpo = cuerpo & "</tr>" & VbCrLf
cuerpo = cuerpo & "<tr>" & VbCrLf
cuerpo = cuerpo & "<td style=" & chr(34) & "height: 6px;" & chr(34) & " colspan=" & chr(34) & "3" & chr(34) & "></td>" & VbCrLf
cuerpo = cuerpo & "</tr>" & VbCrLf


cuerpo = cuerpo & "<tr>" & VbCrLf
cuerpo = cuerpo & "<td style=" & chr(34) & "height: 34;" & chr(34) & " colspan=" & chr(34) & "3" & chr(34) & " bgcolor=" & chr(34) & "#0A6C6C" & chr(34) & ">&nbsp;<img alt=" & chr(34) & "" & chr(34) & " height=" & chr(34) & "30" & chr(34) & " src=" & chr(34) & "http://www.estudiodavila.com.ar/images/recursos.jpg" & chr(34) & " width=" & chr(34) & "850" & chr(34) & "></td>" & VbCrLf
cuerpo = cuerpo & "</tr>" & VbCrLf
cuerpo = cuerpo & "<tr>" & VbCrLf
cuerpo = cuerpo & "<td rowspan=" & chr(34) & "2" & chr(34) & " bgcolor=" & chr(34) & "#0A6C6C" & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "<p align=" & chr(34) & "center" & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "<img alt=" & chr(34) & " height=" & chr(34) & "30" & chr(34) & " src=" & chr(34) & "http://www.estudiodavila.com.ar/images/bannerweb.jpg" & chr(34) & " width=" & chr(34) & "276" & chr(34) & "></td>" & VbCrLf
cuerpo = cuerpo & "<td rowspan=" & chr(34) & "2" & chr(34) & " bgcolor=" & chr(34) & "#0A6C6C" & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "<p align=" & chr(34) & "center" & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "<img alt=" & chr(34) & "" & chr(34) & " height=" & chr(34) & "30" & chr(34) & " src=" & chr(34) & "http://www.estudiodavila.com.ar/images/BANNER2.jpg" & chr(34) & " width=" & chr(34) & "276" & chr(34) & "><br>" & VbCrLf
cuerpo = cuerpo & "</td>" & VbCrLf
cuerpo = cuerpo & "<td style=" & chr(34) & "height: 28;" & chr(34) & " bgcolor=" & chr(34) & "#0A6C6C" & chr(34) & " >" & VbCrLf
cuerpo = cuerpo & "<p align=" & chr(34) & "center" & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "<img alt=" & chr(34) & "" & chr(34) & " height=" & chr(34) & "30" & chr(34) & " src=" & chr(34) & "http://www.estudiodavila.com.ar/images/banner3.jpg" & chr(34) & " width=" & chr(34) & "276" & chr(34) & "></td>" & VbCrLf
cuerpo = cuerpo & "</tr>" & VbCrLf
cuerpo = cuerpo & "<tr>" & VbCrLf
cuerpo = cuerpo & "<td rowspan=" & chr(34) & "2" & chr(34) & " bgcolor=" & chr(34) & "#E2EBEB" & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "<table align=" & chr(34) & "left" & chr(34) & " style=" & chr(34) & "width: 100%" & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "<tr>" & VbCrLf
cuerpo = cuerpo & "<td>" & VbCrLf
cuerpo = cuerpo & "<span style=" & chr(34) & "border-collapse: separate; color: rgb(0, 0, 0); font-family: 'Times New Roman'; font-style: normal;  " & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "<span style=" & chr(34) & "color: rgb(52, 137, 49); font-family: Arial, Helvetica, sans-serif; " & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "<span style=" & chr(34) & "color: rgb(0, 0, 0); " & chr(34) & "><a href=" & chr(34) & "http://www.boletinoficial.gov.ar" & chr(34) & " target=" & chr(34) & "_blank" & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "<font face=" & chr(34) & "Verdana" & chr(34) & " size=" & chr(34) & "2" & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "<a target=" & chr(34) & "_blank" & chr(34) & " href=" & chr(34) & "http://www.boletinoficial.gov.ar" & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "<strong><span><font color=" & chr(34) & "#000000" & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "<span style=" & chr(34) & "text-decoration: none" & chr(34) & ">Boletín Oficial</span></strong></font></span></a></font></td>" & VbCrLf
cuerpo = cuerpo & "</tr>" & VbCrLf
cuerpo = cuerpo & "<tr>" & VbCrLf
cuerpo = cuerpo & "<td>" & VbCrLf
cuerpo = cuerpo & "<span style=" & chr(34) & "border-collapse: separate; color: rgb(0, 0, 0); font-family: 'Times New Roman'; font-style: normal; " & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "<a href=" & chr(34) & "http://www.cnce.gov.ar/" & chr(34) & " style=" & chr(34) & "text-decoration: none; " & chr(34) & " target=" & chr(34) & "_blank" & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "<span style=" & chr(34) & "font-family: Verdana; " & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "<span style=" & chr(34) & "color: rgb(0, 0, 0); " & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "<strong><font size=" & chr(34) & "2" & chr(34) & " color=" & chr(34) & "#000000" & chr(34) & ">Comisión Nacional de Comercio Exterior</font></strong></span></a></span><font size=" & chr(34) & "2" & chr(34) & " face=" & chr(34) & "Verdana" & chr(34) & "></span></font></td>" & VbCrLf
cuerpo = cuerpo & "</tr>" & VbCrLf
cuerpo = cuerpo & "<tr>" & VbCrLf
cuerpo = cuerpo & "<td style=" & chr(34) & "height: 20px" & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "<span style=" & chr(34) & "color: rgb(52, 137, 49); font-family: Verdana; " & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "<a href=" & chr(34) & "http://www.bcra.gov.ar/" & chr(34) & " style=" & chr(34) & "text-decoration: none; " & chr(34) & " target=" & chr(34) & "_blank" & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "<span style=" & chr(34) & "color: rgb(0, 0, 0); " & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "<strong><font size=" & chr(34) & "2" & chr(34) & ">Banco Central</font></strong></span></a></span></td>" & VbCrLf
cuerpo = cuerpo & "</tr>" & VbCrLf
cuerpo = cuerpo & "<tr>" & VbCrLf
cuerpo = cuerpo & "<td>" & VbCrLf
cuerpo = cuerpo & "<span style=" & chr(34) & "font-family: Verdana; border-collapse:separate; color:rgb(0, 0, 0); font-style:normal;" & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "<a href=" & chr(34) & "http://www.afip.gov.ar/" & chr(34) & " style=" & chr(34) & "text-decoration: none; " & chr(34) & " target=" & chr(34) & "_blank" & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "<span style=" & chr(34) & "color: rgb(0, 0, 0); " & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "<strong><font size=" & chr(34) & "2" & chr(34) & ">AFIP</font></strong></span></a></span></td>" & VbCrLf
cuerpo = cuerpo & "</tr>" & VbCrLf
cuerpo = cuerpo & "<tr>" & VbCrLf
cuerpo = cuerpo & "<td>" & VbCrLf
cuerpo = cuerpo & "<span style=" & chr(34) & "font-family: Verdana; border-collapse:separate; color:rgb(0, 0, 0); font-style:normal;" & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "<a href=" & chr(34) & "http://www.inv.gov.ar/" & chr(34) & " style=" & chr(34) & "text-decoration: none; " & chr(34) & " target=" & chr(34) & "_blank" & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "<span style=" & chr(34) & "color: rgb(0, 0, 0); " & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "<strong><font size=" & chr(34) & "2" & chr(34) & ">Instituto Nacional de Vitivinicultura</font></strong></span></a></span></td>" & VbCrLf
cuerpo = cuerpo & "</tr>" & VbCrLf
cuerpo = cuerpo & "</table>" & VbCrLf
cuerpo = cuerpo & "</td>" & VbCrLf
cuerpo = cuerpo & "</tr>" & VbCrLf
cuerpo = cuerpo & "<tr>" & VbCrLf
cuerpo = cuerpo & "<td bgcolor=" & chr(34) & "#E2EBEB" & chr(34) & " >" & VbCrLf
cuerpo = cuerpo & "<a href=" & chr(34) & "http://www.estudiodavila.com.ar" & chr(34) & " target=" & chr(34) & "_blank" & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "<img alt=" & chr(34) & "" & chr(34) & " height=" & chr(34) & "70" & chr(34) & " src=" & chr(34) & "http://www.estudiodavila.com.ar/images/banner1.jpg" & chr(34) & " width=" & chr(34) & "282" & chr(34) & " border=" & chr(34) & "0" & chr(34) & "></a></td>" & VbCrLf
cuerpo = cuerpo & "<td valign=" & chr(34) & "top" & chr(34) & " bgcolor=" & chr(34) & "#E2EBEB" & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "<p align=" & chr(34) & "center" & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "<br>" & VbCrLf
cuerpo = cuerpo & "<br>" & VbCrLf
cuerpo = cuerpo & "<!-- AddThis Button BEGIN -->" & VbCrLf

cuerpo = cuerpo & "<a href=" & chr(34) & "http://api.addthis.com/oexchange/0.8/forward/facebook/offer?pco=tbx32nj-1.0&amp;url=http%3A%2F%2Fwww.estudiodavila.com.ar&amp;pubid=peterotul" & chr(34) & " target=" & chr(34) & "_blank" & chr(34) & " ><img src=" & chr(34) & "http://cache.addthiscdn.com/icons/v1/thumbs/32x32/facebook.png" & chr(34) & " border=" & chr(34) & "0" & chr(34) & " alt=" & chr(34) & "Facebook" & chr(34) & " /></a>" & VbCrLf
cuerpo = cuerpo & "<a href=" & chr(34) & "http://api.addthis.com/oexchange/0.8/forward/twitter/offer?pco=tbx32nj-1.0&amp;url=http%3A%2F%2Fwww.estudiodavila.com.ar&amp;pubid=peterotul" & chr(34) & " target=" & chr(34) & "_blank" & chr(34) & " ><img src=" & chr(34) & "http://cache.addthiscdn.com/icons/v1/thumbs/32x32/twitter.png" & chr(34) & " border=" & chr(34) & "0" & chr(34) & " alt=" & chr(34) & "Twitter" & chr(34) & " /></a>" & VbCrLf
cuerpo = cuerpo & "<a href=" & chr(34) & "http://www.addthis.com/bookmark.php?source=tbx32nj-1.0&amp;=300&amp;pubid=peterotul&amp;url=http%3A%2F%2Fwww.estudiodavila.com.ar " & chr(34) & " target=" & chr(34) & "_blank" & chr(34) & "  ><img src=" & chr(34) & "http://cache.addthiscdn.com/icons/v1/thumbs/32x32/more.png" & chr(34) & " border=" & chr(34) & "0" & chr(34) & " alt=" & chr(34) & "Mas..." & chr(34) & " /></a>" & VbCrLf
cuerpo = cuerpo & "<!-- AddThis Button END --></td>" & VbCrLf
cuerpo = cuerpo & "</tr>" & VbCrLf
cuerpo = cuerpo & "<tr>" & VbCrLf
cuerpo = cuerpo & "<td colspan=" & chr(34) & "3" & chr(34) & " style=" & chr(34) & "height: 8px" & chr(34) & "></td>" & VbCrLf
cuerpo = cuerpo & "</tr>" & VbCrLf
cuerpo = cuerpo & "<tr>" & VbCrLf
cuerpo = cuerpo & "<td style=" & chr(34) & "height: 57px;" & chr(34) & " colspan=" & chr(34) & "3" & chr(34) & " bgcolor=" & chr(34) & "#E2EBEB" & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "<img alt=" & chr(34) & "" & chr(34) & " height=" & chr(34) & "30" & chr(34) & " src=" & chr(34) & "http://www.estudiodavila.com.ar/images/masinfo.jpg" & chr(34) & " width=" & chr(34) & "850" & chr(34) & ">&nbsp;</td>" & VbCrLf
cuerpo = cuerpo & "</tr>" & VbCrLf
cuerpo = cuerpo & "</table>" & VbCrLf


cuerpo = cuerpo & "<div align=" & chr(34) & "center" & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "<table cellpadding=" & chr(34) & "2" & chr(34) & " cellspacing=" & chr(34) & "3" & chr(34) & " width=" & chr(34) & "865" & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "<td style=" & chr(34) & "width: 276; height: 108px;" & chr(34) & " valign=" & chr(34) & "top" & chr(34) & " bgcolor=" & chr(34) & "#E2EBEB" & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "<span>" & VbCrLf
cuerpo = cuerpo & "<strong><font size=" & chr(34) & "2" & chr(34) & " face=" & chr(34) & "Verdana" & chr(34) & ">"  & titulo_s1  & "</font></strong></span><font face=" & chr(34) & "Verdana" & chr(34) & "><font size=" & chr(34) & "2" & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "<br>" & VbCrLf
cuerpo = cuerpo & "</font>" & VbCrLf
cuerpo = cuerpo & "<span>" & VbCrLf
cuerpo = cuerpo & "<font size=" & chr(34) & "2" & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "<br> " & VbCrLf
cuerpo = cuerpo & resumen_s1  & "&nbsp; </font><em><font size=" & chr(34) & "2" & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "<br><br> " & VbCrLf
cuerpo = cuerpo & "<font color=" & chr(34) & "#006666" & chr(34) & ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" & VbCrLf
cuerpo = cuerpo & "<a href='http://www.estudiodavila.com.ar/leernota.ASP?id_nota="  & S1  & "' target=" & chr(34) & "_blank" & chr(34) & "><img border=" & chr(34) & "0" & chr(34) & " src=" & chr(34) & "http://www.estudiodavila.com.ar/images/Flecha-der2.jpg" & chr(34) & " align=" & chr(34) & "top" & chr(34) & "> " & VbCrLf
cuerpo = cuerpo & "</a></font></font>" & VbCrLf
cuerpo = cuerpo & "<a href='http://www.estudiodavila.com.ar/leernota.ASP?id_nota="  & S1  & "' target=" & chr(34) & "_blank" & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "<font size=" & chr(34) & "2" & chr(34) & ">Leer completo</font></a></em></span></font></td>" & VbCrLf


cuerpo = cuerpo & "<td style=" & chr(34) & "width: 276; height: 108px;" & chr(34) & " valign=" & chr(34) & "top" & chr(34) & " bgcolor=" & chr(34) & "#E2EBEB" & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "<span>" & VbCrLf
cuerpo = cuerpo & "<b><font size=" & chr(34) & "2" & chr(34) & " face=" & chr(34) & "Verdana" & chr(34) & ">"  & titulo_s2  & "</font></b><font face=" & chr(34) & "Verdana" & chr(34) & " size=" & chr(34) & "2" & chr(34) & "></font></span>" & VbCrLf
cuerpo = cuerpo & "<font face=" & chr(34) & "Verdana" & chr(34) & " size=" & chr(34) & "2" & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "<br><br>" & VbCrLf
cuerpo = cuerpo & "<span>" & VbCrLf
cuerpo = cuerpo & resumen_s2  & "&nbsp; </span></font><em>" & VbCrLf
cuerpo = cuerpo & "<font size=" & chr(34) & "2" & chr(34) & "><font face=" & chr(34) & "Verdana" & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "<br><br></font> " & VbCrLf
cuerpo = cuerpo & "<font color=" & chr(34) & "#006666" & chr(34) & " face=" & chr(34) & "Verdana" & chr(34) & ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; " & VbCrLf
cuerpo = cuerpo & "<a href='http://www.estudiodavila.com.ar/leernota.ASP?id_nota="  & S2  & "' target=" & chr(34) & "_blank" & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "<img border=" & chr(34) & "0" & chr(34) & " src=" & chr(34) & "http://www.estudiodavila.com.ar/images/Flecha-der2.jpg" & chr(34) & " align=" & chr(34) & "top" & chr(34) & " height=" & chr(34) & "7" & chr(34) & "><span>" & VbCrLf
cuerpo = cuerpo & "</span></a></font> " & VbCrLf
cuerpo = cuerpo & "</font><font face=" & chr(34) & "Verdana" & chr(34) & "> " & VbCrLf
cuerpo = cuerpo & "<span><a href='http://www.estudiodavila.com.ar/leernota.ASP?id_nota="  & S2  & "' target=" & chr(34) & "_blank" & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "<font size=" & chr(34) & "2" & chr(34) & ">Leer completo</font></a></span></font></em></td>" & VbCrLf


cuerpo = cuerpo & "<td style=" & chr(34) & "width: 289px; height: 108px" & chr(34) & " valign=" & chr(34) & "top" & chr(34) & " bgcolor=" & chr(34) & "#E2EBEB" & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "<span>" & VbCrLf
cuerpo = cuerpo & "<font size=" & chr(34) & "2" & chr(34) & " face=" & chr(34) & "Verdana" & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "<b>"  & titulo_s3  & "</b></font></span>" & VbCrLf
cuerpo = cuerpo & "<font face=" & chr(34) & "Verdana" & chr(34) & " size=" & chr(34) & "2" & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "<br><br>" & VbCrLf
cuerpo = cuerpo & "<span>" & VbCrLf
cuerpo = cuerpo & resumen_s3  & " &nbsp; </span></font>" & VbCrLf
cuerpo = cuerpo & "<em><font size=" & chr(34) & "2" & chr(34) & "><font face=" & chr(34) & "Verdana" & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "<br><br></font> " & VbCrLf
cuerpo = cuerpo & "<font color=" & chr(34) & "#006666" & chr(34) & " face=" & chr(34) & "Verdana" & chr(34) & ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;" & VbCrLf
cuerpo = cuerpo & "<a href='http://www.estudiodavila.com.ar/leernota.ASP?id_nota=" & S3  & "' target=" & chr(34) & "_blank" & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "<img border=" & chr(34) & "0" & chr(34) & " src=" & chr(34) & "http://www.estudiodavila.com.ar/images/Flecha-der2.jpg" & chr(34) & " align=" & chr(34) & "top" & chr(34) & " height=" & chr(34) & "7" & chr(34) & "></a></font></font><a href='http://www.estudiodavila.com.ar/leernota.ASP?id_nota=" & S3  & "' target=" & chr(34) & "_blank" & chr(34) & "><span><font color=" & chr(34) & "#006666" & chr(34) & " size=" & chr(34) & "2" & chr(34) & " face=" & chr(34) & "Verdana" & chr(34) & "> </font> " & VbCrLf
cuerpo = cuerpo & "<font size=" & chr(34) & "2" & chr(34) & " face=" & chr(34) & "Verdana" & chr(34) & ">Leer completo</font></span></a></em></td>" & VbCrLf
cuerpo = cuerpo & "</tr>" & VbCrLf
cuerpo = cuerpo & "</table>" & VbCrLf
cuerpo = cuerpo & "</div>" & VbCrLf
cuerpo = cuerpo & "</td>" & VbCrLf
cuerpo = cuerpo & "</tr>" & VbCrLf
cuerpo = cuerpo & "</table>" & VbCrLf
cuerpo = cuerpo & "</center>" & VbCrLf
cuerpo = cuerpo & "</div>" & VbCrLf
cuerpo = cuerpo & "</td>" & VbCrLf
cuerpo = cuerpo & "</tr>" & VbCrLf


cuerpo = cuerpo & "<tr>" & VbCrLf
cuerpo = cuerpo & "<td style=" & chr(34) & "height: 3px; width: 896px" & chr(34) & "></td>" & VbCrLf
cuerpo = cuerpo & "</tr>" & VbCrLf
cuerpo = cuerpo & "<tr>" & VbCrLf
cuerpo = cuerpo & "<td style=" & chr(34) & "height: 370px; width: 896px" & chr(34) & " bgcolor=" & chr(34) & "#E2EBEB" & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "<p align=" & chr(34) & "center" & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "<font size=" & chr(34) & "2" & chr(34) & "><br><br><font face=" & chr(34) & "Verdana" & chr(34) & "><span >Si considera que este email ha llegado a usted por error o ya no desea seguir " & VbCrLf
cuerpo = cuerpo & "recibiéndolo, puede <a href=" & chr(34) & "http://www.estudiodavila.com/desuscripcion.asp" & chr(34) & ">desuscribirse haciendo clik aquí</a></strong>.</span></font></p>" & VbCrLf
cuerpo = cuerpo & "<div align=" & chr(34) & "center" & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "<table cellpadding=" & chr(34) & "15" & chr(34) & " cellspacing=" & chr(34) & "0" & chr(34) & " style=" & chr(34) & "width: 90%" & chr(34) & " border=" & chr(34) & "1" & chr(34) & " bordercolor=" & chr(34) & "#0A6C6C" & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "<tr>" & VbCrLf
cuerpo = cuerpo & "<td style=" & chr(34) & "width: 744; height: 141;" & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "<font face=" & chr(34) & "Verdana" & chr(34) & "><span lang=" & chr(34) & "es" & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "<font size=" & chr(34) & "2" & chr(34) & "><em>La información contenida en este newsletter es " & VbCrLf
cuerpo = cuerpo & "recopilada y enviada por Estudio Dávila a su lista de clientes y " & VbCrLf
cuerpo = cuerpo & "suscriptores. El propósito del mismo es proporcionar información " & VbCrLf
cuerpo = cuerpo & "general sobre temas específicos referidos a nuestra área de " & VbCrLf
cuerpo = cuerpo & "servicios y no constituyen un tratamiento exhaustivo de dicho tema " & VbCrLf
cuerpo = cuerpo & "o temas. La información contenida en este material no intenta " & VbCrLf
cuerpo = cuerpo & "conformar un asesoramiento o servicio profesional de comercio " & VbCrLf
cuerpo = cuerpo & "exterior ni tiene como fín ser considerada como una base confiable " & VbCrLf
cuerpo = cuerpo & "o como la única base para cualquier decisión que pueda afectar a " & VbCrLf
cuerpo = cuerpo & "quién lo reciba o a sus negocios. Antes de tomar cualquier " & VbCrLf
cuerpo = cuerpo & "decisión o acción que pudiera afectar sus finanzas personales o " & VbCrLf
cuerpo = cuerpo & "negocios, deberán consultar a un asesor profesional de Estudio " & VbCrLf
cuerpo = cuerpo & "Dávila. Este material y la información contenida en el mismo están " & VbCrLf
cuerpo = cuerpo & "emitidos tal como aquí se presentan. Estudio Dávila no efectúa " & VbCrLf
cuerpo = cuerpo & "ninguna manifestación o garantía expresado implícita con relación " & VbCrLf
cuerpo = cuerpo & "a este material o a la información contenida en el mismo. Sin " & VbCrLf
cuerpo = cuerpo & "limitar lo antedicho, Estudio Dávila no garantiza que este " & VbCrLf
cuerpo = cuerpo & "material o la información contenida en el mismo estén libres de " & VbCrLf
cuerpo = cuerpo & "errores o que reúnan ciertos criterios específicos de rendimiento " & VbCrLf
cuerpo = cuerpo & "o de calidad. Estudio Dávila expresamente se abstiene de expresar " & VbCrLf
cuerpo = cuerpo & "cualquier garantía implícita, incluyendo sin limitaciones " & VbCrLf
cuerpo = cuerpo & "garantías de valor comercial, propiedad, adecuación a un propósito " & VbCrLf
cuerpo = cuerpo & "particular, no-infracción, compatibilidad, seguridad y exactitud.</em></font></span></font></td>" & VbCrLf
cuerpo = cuerpo & "</tr>" & VbCrLf
cuerpo = cuerpo & "</table>" & VbCrLf
cuerpo = cuerpo & "</div>" & VbCrLf
cuerpo = cuerpo & "<p>&nbsp;</td>" & VbCrLf
cuerpo = cuerpo & "</tr>" & VbCrLf
cuerpo = cuerpo & "<tr>" & VbCrLf
cuerpo = cuerpo & "<td style=" & chr(34) & "height: 4px; width: 896px" & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "</td>" & VbCrLf
cuerpo = cuerpo & "</tr>" & VbCrLf
cuerpo = cuerpo & "<tr>" & VbCrLf
cuerpo = cuerpo & "<td style=" & chr(34) & "height: 114px; width: 896px" & chr(34) & " align=" & chr(34) & "center" & chr(34) & " bgcolor=" & chr(34) & "#BBD0D0" & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "<span lang=" & chr(34) & "es" & chr(34) & "><font size=" & chr(34) & "2" & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "<font face=" & chr(34) & "Verdana" & chr(34) & "><b>© 2013 . Estudio Dávila</b><br></font>" & VbCrLf
cuerpo = cuerpo & "<font color=" & chr(34) & "#FFFFFF" & chr(34) & " face=" & chr(34) & "Verdana" & chr(34) & "><a href=" & chr(34) & "http://www.estudiodavila.com.ar" & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "<font color=" & chr(34) & "#000000" & chr(34) & ">www.estudiodavila.com.ar</font></a></font></font></span><font face=" & chr(34) & "Verdana" & chr(34) & " size=" & chr(34) & "2" & chr(34) & "><br>" & VbCrLf
cuerpo = cuerpo & "</font>" & VbCrLf
cuerpo = cuerpo & "<span style=" & chr(34) & "border-collapse: separate; font-family: 'Verdana'; font-style: normal; " & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "<font size=" & chr(34) & "2" & chr(34) & ">(+54) 0261-4294364 . Mendoza. Argentina</font></span></td>" & VbCrLf
cuerpo = cuerpo & "</tr>" & VbCrLf
cuerpo = cuerpo & "</table>" & VbCrLf
cuerpo = cuerpo & "</center>" & VbCrLf
cuerpo = cuerpo & "</div>" & VbCrLf


cuerpo = cuerpo & "</body>" & VbCrLf
cuerpo = cuerpo & "</html>" & VbCrLf

%>

<%

set oConn = Server.CreateObject("ADODB.Connection")
oConn.Open "DRIVER={Microsoft Access Driver (*.mdb)}; DBQ="&Server.MapPath("../db/Susc.mdb")
Set RSArt = Server.CreateObject("ADODB.Recordset")
SQL3 = "Select * from listado where activo = True order by id"
RSArt.Open SQL3, oConn, 1, 3
do while not RSArt.eof
email = RSArt("email")

'Mando emails

Dim objMail

Set objMail = CreateObject("CDONTS.NewMail")

objMail.From = "informes@estudiodavila.com.ar"
objMail.To = email
'objMail.To = "info@luxmedia.com.ar"
objMail.Subject = "[ Newsletter ] - http://www.estudiodavila.com.ar"
objMail.Body = cuerpo
objMail.BodyFormat=0
objMail.MailFormat=0
objMail.importance = cdoHigh
objMail.Send
Set objMail = nothing

rsart.movenext
loop

Rsart.close
set Rsart = nothing
oConn.close
set oConn = nothing

' Conectar para marcar como ENVIADO

set oConn =  Server.CreateObject("ADODB.Connection")
oConn.Open "DRIVER={Microsoft Access Driver (*.mdb)}; DBQ="&Server.MapPath("../db/news.mdb")

SQL = "select * from envios where Id_new = " & request("id_new") & ""
 
set RS = Server.CreateObject("ADODB.Recordset") 
rs.Open SQL, oConn,3,3
             
             RS("enviada") = TRUE
                                     
             RS.Update
             RS.Close
             
set RS=nothing

'Volver a Administracion de Newsletter

Response.Redirect "adminenvios.ASP"

%></body></html>