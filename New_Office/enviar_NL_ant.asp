<html>
<head>
<meta content="text/html; charset=windows-1252" http-equiv="Content-Type" />
<title>Untitled 1</title>
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
a = left(fechaok,len(fechaok)-11)


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
'cuerpo = cuerpo & "<meta http-equiv=" & chr(34) & "Content-Language" & chr(34) & " content=" & chr(34) & "es" & chr(34) & ">" & VbCrLf
'cuerpo = cuerpo & "<meta name=" & chr(34) & "GENERATOR" & chr(34) & " content=" & chr(34) & "Microsoft FrontPage 12.0" & chr(34) & ">" & VbCrLf
'cuerpo = cuerpo & "<meta name=" & chr(34) & "ProgId" & chr(34) & " content=" & chr(34) & "FrontPage.Editor.Document" & chr(34) & ">" & VbCrLf
'cuerpo = cuerpo & "<meta http-equiv=" & chr(34) & "Content-Type" & chr(34) & " content=" & chr(34) & "text/html; charset=windows-1252" & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "<title>:: Newsletter Estudio Aduanero Dávila ::</title>" & VbCrLf
'cuerpo = cuerpo & "<style type=" & chr(34) & "text/css" & chr(34) & ">" & VbCrLf
'cuerpo = cuerpo & ".auto-style2 {font-size: large;}" & VbCrLf
'cuerpo = cuerpo & ".auto-style4 {text-align: left; font-family: Arial, Helvetica, sans-serif;	font-size: small;	background-color: #E4EDED;	color: #000000;}" & VbCrLf
'cuerpo = cuerpo & ".auto-style5 {font-size: small;}" & VbCrLf
'cuerpo = cuerpo & ".auto-style7 {font-family: Arial, Helvetica, sans-serif;}" & VbCrLf
'cuerpo = cuerpo & ".auto-style8 {text-decoration: underline;text-align: center;}" & VbCrLf
'cuerpo = cuerpo & ".auto-style9 {font-size: x-large;}" & VbCrLf
'cuerpo = cuerpo & ".auto-style17 {border: 1px solid #006666;font-family: Arial, Helvetica, sans-serif;font-size: small;background-color: #E4EDED;}" & VbCrLf
'cuerpo = cuerpo & ".auto-style19 {border-collapse: collapse;}" & VbCrLf
'cuerpo = cuerpo & ".auto-style14 {color: #FFFFFF;}" & VbCrLf
'cuerpo = cuerpo & ".auto-style23 {text-align: right;}" & VbCrLf
'cuerpo = cuerpo & ".auto-style25 {border-width: 0;}" & VbCrLf
'cuerpo = cuerpo & ".auto-style32 {background-color: #0C6D6D;text-align: left;}" & VbCrLf
'cuerpo = cuerpo & ".auto-style33 {font-family: Arial, Helvetica, sans-serif;font-size: large;}" & VbCrLf
'cuerpo = cuerpo & ".auto-style37 {background-color: #FFFFFF;}" & VbCrLf
'cuerpo = cuerpo & ".auto-style39 {background-color: #FAFFD2;text-align: left;font-size: x-small;color: #50418F;}" & VbCrLf
'cuerpo = cuerpo & ".auto-style40 {text-align: left;font-family: Arial, Helvetica, sans-serif;font-size: medium;}" & VbCrLf
'cuerpo = cuerpo & ".auto-style27 {text-align: justify;background-color: #E4EDED;}" & VbCrLf
'cuerpo = cuerpo & ".auto-style26 {font-size: xx-small;}" & VbCrLf
'cuerpo = cuerpo & ".auto-style41 {background-color: #E4EDED;}" & VbCrLf
'cuerpo = cuerpo & ".auto-style47 {font-family: Arial, Helvetica, sans-serif;font-size: small;color: #000000;}" & VbCrLf
'cuerpo = cuerpo & ".auto-style50 {border-color: #006666;border-width: 0;border-collapse: collapse;}" & VbCrLf
'cuerpo = cuerpo & ".auto-style52 {background-color: #FAFFD2;text-align: left;}" & VbCrLf
'cuerpo = cuerpo & ".auto-style59 {background-color: #FAFFD2;text-align: left;font-size: small;color: #50418F;}" & VbCrLf
'cuerpo = cuerpo & ".auto-style66 {background-color: #F1F0F7;}" & VbCrLf
'cuerpo = cuerpo & ".auto-style67 {background-color: #E4EDED;text-align: left;font-size: x-small;color: #50418F;}" & VbCrLf
'cuerpo = cuerpo & ".auto-style68 {background-color: #D3E2E2;}" & VbCrLf
'cuerpo = cuerpo & ".auto-style69 {font-family: Arial, Helvetica, sans-serif;font-size: small;color: #006766;}" & VbCrLf
'cuerpo = cuerpo & ".auto-style70 {text-align: center;background-color: #B3CCCC;}" & VbCrLf
'cuerpo = cuerpo & ".auto-style71 {border: 1px solid #006666;text-align: center;background-color: #D3E2E2;}" & VbCrLf
'cuerpo = cuerpo & ".auto-style73 {background-color: #E4EDED;text-align: left;color: #000000;font-family: Arial, Helvetica, sans-serif;}" & VbCrLf
'cuerpo = cuerpo & ".auto-style74 {font-family: Arial, Helvetica, sans-serif;font-size: small;background-color: #E4EDED;color: #000000;}" & VbCrLf
'cuerpo = cuerpo & ".auto-style77 {border-width: 0;background-color: #E4EDED;}" & VbCrLf
'cuerpo = cuerpo & ".auto-style79 {color: #006666;}" & VbCrLf
'cuerpo = cuerpo & ".auto-style81 {background-color: #FAFFD2;text-align: left;font-size: small;color: #000000;}" & VbCrLf
'cuerpo = cuerpo & ".auto-style83 {font-size: small;color: #006666;}" & VbCrLf
'cuerpo = cuerpo & ".auto-style84 {border: 1px solid #006666;border-collapse: collapse;}" & VbCrLf
'cuerpo = cuerpo & ".auto-style85 {border: 0 solid #006666;text-align: center;}" & VbCrLf
'cuerpo = cuerpo & ".auto-style88 {border: 0 solid #006666;text-align: left;background-color: #0C6D6D;}" & VbCrLf
'cuerpo = cuerpo & ".auto-style35 {text-decoration: none;}" & VbCrLf
'cuerpo = cuerpo & ".auto-style42 {color: #000000;}" & VbCrLf
'cuerpo = cuerpo & ".auto-style89 {border: 1px solid #006666;text-align: center;background-color: #B3CCCC;}" & VbCrLf
'cuerpo = cuerpo & ".auto-style90 {border-width: 0px;}" & VbCrLf
'cuerpo = cuerpo & ".auto-style92 {font-size: small;color: #000000;}" & VbCrLf
'cuerpo = cuerpo & ".auto-style94 {font-family: Arial, Helvetica, sans-serif;font-size: small;color: rgb(0, 0, 0);letter-spacing: normal;}" & VbCrLf
'cuerpo = cuerpo & ".auto-style97 {text-align: center;}" & VbCrLf
'cuerpo = cuerpo & ".auto-style98 {border-style: solid;border-width: 1px;margin: 1px;}" & VbCrLf
'cuerpo = cuerpo & "</style>" & VbCrLf

cuerpo = cuerpo & "</head>" & VbCrLf

cuerpo = cuerpo & "<body bgcolor=" & chr(34) & "#000000" & chr(34) & " style=" & chr(34) & "background-image: url('http://www.estudiodavila.com.ar/images/bkgfondo_pag.gif')" & chr(34) & ">" & VbCrLf

cuerpo = cuerpo & "<div align=" & chr(34) & "center" & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "<center>" & VbCrLf
cuerpo = cuerpo & "<table bgcolor=" & chr(34) & "#D3E2E2" & chr(34) & " border=" & chr(34) & "0" & chr(34) & " cellpadding=" & chr(34) & "0" & chr(34) & " style=" & chr(34) & "width: 840; height: 944;" & chr(34) & " class=" & chr(34) & "border-collapse: collapse;" & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "<tr>" & VbCrLf
cuerpo = cuerpo & "<td height=" & chr(34) & "31" & chr(34) & " style=" & chr(34) & "width: 875px" & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "<div align=" & chr(34) & "center" & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "<center>" & VbCrLf
cuerpo = cuerpo & "<table cellpadding=" & chr(34) & "0" & chr(34) & " cellspacing=" & chr(34) & "0" & chr(34) & " height=" & chr(34) & "126" & chr(34) & "border-color= #006666; border-width: 0; border-collapse: collapse;" & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "<tr>" & VbCrLf
cuerpo = cuerpo & "<td valign=" & chr(34) & "top" & chr(34) & " style=" & chr(34) & "height: 136px" & chr(34) & "background-color: #FFFFFF;" & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "</td>" & VbCrLf
cuerpo = cuerpo & "<td style=" & chr(34) & "height: 136 " & chr(34) & "text-align: center;" & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "<img height=" & chr(34) & "140" & chr(34) & " src=" & chr(34) & "http://www.estudiodavila.com.ar/images/supOK.jpg" & chr(34) & " width=" & chr(34) & "870" & chr(34) & chr(34) & "border-style: solid; border-width: 1px; margin: 1px;" & chr(34) & ">&nbsp; </td>" & VbCrLf
cuerpo = cuerpo & "</tr>" & VbCrLf
cuerpo = cuerpo & "<tr>" & VbCrLf
cuerpo = cuerpo & "<td valign=" & chr(34) & "top" & chr(34) & " style=" & chr(34) & "height: 6px" & chr(34) & chr(34) & "background-color: #FFFFFF;" & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "</td>" & VbCrLf
cuerpo = cuerpo & "<td style=" & chr(34) & "height: 6px; text-align=" & chr(34) &  "center" & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "</td>" & VbCrLf
cuerpo = cuerpo & "</tr>" & VbCrLf
cuerpo = cuerpo & "</table>" & VbCrLf
cuerpo = cuerpo & "</center>" & VbCrLf
cuerpo = cuerpo & "</div>" & VbCrLf
cuerpo = cuerpo & "</td>" & VbCrLf
cuerpo = cuerpo & "</tr>" & VbCrLf
cuerpo = cuerpo & "<tr>" & VbCrLf
cuerpo = cuerpo & "<td style=" & chr(34) & "height: 180px; width: 875px;" & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "<div align=" & chr(34) & "center" & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "<center>" & VbCrLf
cuerpo = cuerpo & "<style>border: 1px solid #006666; border-collapse: collapse;</style><table cellpadding=" & chr(34) & "9" & chr(34) & " cellspacing=" & chr(34) & "6" & chr(34) & " width=" & chr(34) & "100%" & chr(34) & " height=" & chr(34) & "190" & chr(34)& ">" & VbCrLf
cuerpo = cuerpo & "<tr>" & VbCrLf
cuerpo = cuerpo & "<td width=" & chr(34) & "100%" & chr(34) & " colspan=" & chr(34) & "3" & chr(34) & " rowspan=" & chr(34) & "3" & chr(34) & chr(34) & "background-color: #D3E2E2;" & chr(34) & " style=" & chr(34) & "height: 451" & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "<p>" & VbCrLf
cuerpo = cuerpo & "<style>font-family: Arial, Helvetica, sans-serif; font-size: small; color: #006766; text-align: right;</style><div class=" & chr(34) & "text-align: right;" & chr(34) & "><strong><em>Mendoza, " & a & "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br></span></em></strong></div>" & VbCrLf
cuerpo = cuerpo & "<table align=" & chr(34) & "center" & chr(34) & " cellpadding=" & chr(34) & "4" & chr(34) & " cellspacing=" & chr(34) & "1" & chr(34) & chr(34) & "border-width: 0;" & chr(34) & " style=" & chr(34) & "width: 800; height: 379" & chr(34) & ">" & VbCrLf

cuerpo = cuerpo & "<tr>" & VbCrLf
cuerpo = cuerpo & "<td text-align: left;font-family: Arial, Helvetica, sans-serif;font-size: medium; colspan=" & chr(34) & "3" & chr(34) & " style=" & chr(34) & "height: 30" & chr(34) & " valign=" & chr(34) & "top" & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "<img height=" & chr(34) & "30" & chr(34) & " src=" & chr(34) & "http://www.estudiodavila.com.ar/images/destacada.jpg" & chr(34) & " width=" & chr(34) & "850" & chr(34) & ">&nbsp;</td>" & VbCrLf
cuerpo = cuerpo & "</tr>" & VbCrLf
cuerpo = cuerpo & "<tr>" & VbCrLf
cuerpo = cuerpo & "<td text-align: left; font-family: Arial, Helvetica, sans-serif;	font-size: small; background-color: #E4EDED;	color: #000000; colspan=" & chr(34) & "3" & chr(34) & " style=" & chr(34) & "height: 146px" & chr(34) & " valign=" & chr(34) & "top" & chr(34) & ">" & VbCrLf
cuerpo = cuerpo & "<span text-decoration: underline;text-align: center;>" & VbCrLf
cuerpo = cuerpo & "<span font-size: x-large;>" & titulo_P & "</span></span>" & VbCrLf
cuerpo = cuerpo & "<span font-size: small;><br>" & VbCrLf
cuerpo = cuerpo & "</span><strong>Fuente</strong>:&nbsp; " & fuente_P & " <br><br>" & VbCrLf
cuerpo = cuerpo & "<i>" & cadenai & "</i>" & VbCrLf
cuerpo = cuerpo & "<br><br> " & VbCrLf
cuerpo = cuerpo & cadena_P & " ...<span font-size: large;><br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" & VbCrLf
cuerpo = cuerpo & "<em><span font-size: small;>&nbsp;&nbsp;&nbsp;&nbsp;<font color=" & chr(34) & "#006666" & chr(34) & " size=" & chr(34) & "2" & chr(34) & " face=" & chr(34) & "Verdana" & chr(34) & "><a href='http://www.estudiodavila.com.ar/leernota.ASP?id_nota=" & P &"'><img border=" & chr(34) & "0" & chr(34) & " src=" & chr(34) & "http://www.estudiodavila.com.ar/images/Flecha-der2.jpg" & chr(34) & "></a></font><a href='http://www.estudiodavila.com.ar/leernota.ASP?id_nota=" &P & "' target=" & chr(34) & "_blank" & chr(34) & "><span color: #000000;>" & VbCrLf 
cuerpo = cuerpo & "Leer artículo completo</span></a></span></em></td>" & VbCrLf
cuerpo = cuerpo & "</tr>" & VbCrLf
cuerpo = cuerpo & "<tr>" & VbCrLf
cuerpo = cuerpo & "<td style=" & chr(34) & "height: 6px;" & chr(34) & " colspan=" & chr(34) & "3" & chr(34) & "></td>" & VbCrLf
cuerpo = cuerpo & "</tr>" & VbCrLf

'cuerpo = cuerpo & "<tr>" & VbCrLf
'cuerpo = cuerpo & "<td style=" & chr(34) & "height: 34;" & chr(34) & " colspan=" & chr(34) & "3" & chr(34) & ">" & VbCrLf
'cuerpo = cuerpo & "&nbsp;<img alt=" & chr(34) & "" & chr(34) & " height=" & chr(34) & "30" & chr(34) & " src=" & chr(34) & "http://www.estudiodavila.com.ar/images/recursos.jpg" & chr(34) & " width=" & chr(34) & "850" & chr(34) & "></td>" & VbCrLf
'cuerpo = cuerpo & "</tr>" & VbCrLf
'cuerpo = cuerpo & "<tr>" & VbCrLf
'cuerpo = cuerpo & "<td class=" & chr(34) & "auto-style32" & chr(34) & " rowspan=" & chr(34) & "2" & chr(34) & ">" & VbCrLf
'cuerpo = cuerpo & "<img alt=" & chr(34) & "" & chr(34) & " height=" & chr(34) & "30" & chr(34) & " src=" & chr(34) & "http://www.estudiodavila.com.ar/images/bannerweb.jpg" & chr(34) & " width=" & chr(34) & "276" & chr(34) & "></td>" & VbCrLf
'cuerpo = cuerpo & "<td class=" & chr(34) & "auto-style88" & chr(34) & " rowspan=" & chr(34) & "2" & chr(34) & ">" & VbCrLf
'cuerpo = cuerpo & "<img alt=" & chr(34) & "" & chr(34) & " height=" & chr(34) & "30" & chr(34) & " src=" & chr(34) & "http://www.estudiodavila.com.ar/images/BANNER2.jpg" & chr(34) & " width=" & chr(34) & "276" & chr(34) & "><br>" & VbCrLf
'cuerpo = cuerpo & "</td>" & VbCrLf
'cuerpo = cuerpo & "<td style=" & chr(34) & "height: 28;" & chr(34) & " class=" & chr(34) & "auto-style32" & chr(34) & ">" & VbCrLf
'cuerpo = cuerpo & "<img alt=" & chr(34) & "" & chr(34) & " height=" & chr(34) & "30" & chr(34) & " src=" & chr(34) & "http://www.estudiodavila.com.ar/images/banner3.jpg" & chr(34) & " width=" & chr(34) & "276" & chr(34) & "></td>" & VbCrLf
'cuerpo = cuerpo & "</tr>" & VbCrLf
'cuerpo = cuerpo & "<tr>" & VbCrLf
'cuerpo = cuerpo & "<td class=" & chr(34) & "auto-style41" & chr(34) & " rowspan=" & chr(34) & "2" & chr(34) & ">" & VbCrLf
'cuerpo = cuerpo & "<table align=" & chr(34) & "left" & chr(34) & " style=" & chr(34) & "width: 100%" & chr(34) & ">" & VbCrLf
'cuerpo = cuerpo & "<tr>" & VbCrLf
'cuerpo = cuerpo & "<td class=" & chr(34) & "auto-style5" & chr(34) & ">" & VbCrLf
'cuerpo = cuerpo & "<span class=" & chr(34) & "Apple-style-span" & chr(34) & " style=" & chr(34) & "border-collapse: separate; color: rgb(0, 0, 0); font-family: 'Times New Roman'; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: 2; text-align: -webkit-auto; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-border-horizontal-spacing: 0px; -webkit-border-vertical-spacing: 0px; -webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; font-size: medium; " & chr(34) & ">" & VbCrLf
'cuerpo = cuerpo & "<span class=" & chr(34) & "auto-style5" & chr(34) & " style=" & chr(34) & "color: rgb(52, 137, 49); font-family: Arial, Helvetica, sans-serif; " & chr(34) & ">" & VbCrLf
'cuerpo = cuerpo & "<span class=" & chr(34) & "auto-style42" & chr(34) & " style=" & chr(34) & "color: rgb(0, 0, 0); " & chr(34) & ">" & VbCrLf
'cuerpo = cuerpo & "<a class=" & chr(34) & "auto-style35" & chr(34) & " href=" & chr(34) & "http://www.boletinoficial.gov.ar" & chr(34) & chr(34) & " target=" & chr(34) & "_blank" & chr(34) & ">" & VbCrLf
'cuerpo = cuerpo & "<span class=" & chr(34) & "auto-style94" & chr(34) & " style=" & chr(34) & "border-collapse: separate; font-variant: normal; font-weight: normal; line-height: normal; orphans: 2; text-align: -webkit-auto; text-indent: 0px; white-space: normal; widows: 2; word-spacing: 0px; -webkit-border-horizontal-spacing: 0px; -webkit-border-vertical-spacing: 0px; -webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; " & chr(34) & "><strong>e</strong></span><strong><span class=" & chr(34) & "auto-style94" & chr(34) & ">tín" & chr(34) & VbCrLf 
'cuerpo = cuerpo & "Oficial</span></strong></a></td>" & VbCrLf
'cuerpo = cuerpo & "</tr>" & VbCrLf
'cuerpo = cuerpo & "<tr>" & VbCrLf
'cuerpo = cuerpo & "<td class=" & chr(34) & "auto-style5" & chr(34) & ">" & VbCrLf
'cuerpo = cuerpo & "<span class=" & chr(34) & "Apple-style-span" & chr(34) & " style=" & chr(34) & "border-collapse: separate; color: rgb(0, 0, 0); font-family: 'Times New Roman'; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: 2; text-align: -webkit-auto; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-border-horizontal-spacing: 0px; -webkit-border-vertical-spacing: 0px; -webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; font-size: medium; " & chr(34) & ">" & VbCrLf
'cuerpo = cuerpo & "<span class=" & chr(34) & "auto-style5" & chr(34) & " style=" & chr(34) & "font-family: Arial, Helvetica, sans-serif; " & chr(34) & ">" & VbCrLf
'cuerpo = cuerpo & "<a class=" & chr(34) & "auto-style35" & chr(34) & " href=" & chr(34) & "http://www.mecon.gov.ar/cnce/" & chr(34) & chr(34) & " style=" & chr(34) & "text-decoration: none; " & chr(34) & " target=" & chr(34) & "_blank" & chr(34) & ">" & VbCrLf
'cuerpo = cuerpo & "<span class=" & chr(34) & "auto-style42" & chr(34) & " style=" & chr(34) & "color: rgb(0, 0, 0); " & chr(34) & ">" & VbCrLf
'cuerpo = cuerpo & "<strong>Comisión Nacional de Comercio Exterior</strong></span></a></span></span></td>" & VbCrLf
'cuerpo = cuerpo & "</tr>" & VbCrLf
'cuerpo = cuerpo & "<tr>" & VbCrLf
'cuerpo = cuerpo & "<td class=" & chr(34) & "auto-style5" & chr(34) & " style=" & chr(34) & "height: 20px" & chr(34) & ">" & VbCrLf
'cuerpo = cuerpo & "<span class=" & chr(34) & "Apple-style-span" & chr(34) & " style=" & chr(34) & "border-collapse: separate; color: rgb(0, 0, 0); font-family: 'Times New Roman'; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: 2; text-align: -webkit-auto; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-border-horizontal-spacing: 0px; -webkit-border-vertical-spacing: 0px; -webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; font-size: medium; " & chr(34) & ">" & VbCrLf
'cuerpo = cuerpo & "<span class=" & chr(34) & "auto-style5" & chr(34) & " style=" & chr(34) & "color: rgb(52, 137, 49); font-family: Arial, Helvetica, sans-serif; " & chr(34) & ">" & VbCrLf
'cuerpo = cuerpo & "<a class=" & chr(34) & "auto-style35" & chr(34) & " href=" & chr(34) & "http://www.bcra.gov.ar/" & chr(34) & " style=" & chr(34) & "text-decoration: none; " & chr(34) & " target=" & chr(34) & "_blank" & chr(34) & ">" & VbCrLf
'cuerpo = cuerpo & "<span class=" & chr(34) & "auto-style42" & chr(34) & " style=" & chr(34) & "color: rgb(0, 0, 0); " & chr(34) & ">" & VbCrLf
'cuerpo = cuerpo & "<strong>Banco Central</strong></span></a></span></span></td>" & VbCrLf
'cuerpo = cuerpo & "</tr>" & VbCrLf
'cuerpo = cuerpo & "<tr>" & VbCrLf
'cuerpo = cuerpo & "<td class=" & chr(34) & "auto-style5" & chr(34) & ">" & VbCrLf
'cuerpo = cuerpo & "<span class=" & chr(34) & "Apple-style-span" & chr(34) & " style=" & chr(34) & "border-collapse: separate; color: rgb(0, 0, 0); font-family: 'Times New Roman'; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: 2; text-align: -webkit-auto; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-border-horizontal-spacing: 0px; -webkit-border-vertical-spacing: 0px; -webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; font-size: medium; " & chr(34) & ">" & VbCrLf
'cuerpo = cuerpo & "<span class=" & chr(34) & "auto-style5" & chr(34) & " style=" & chr(34) & "font-family: Arial, Helvetica, sans-serif; " & chr(34) & ">" & VbCrLf
'cuerpo = cuerpo & "<a class=" & chr(34) & "auto-style35" & chr(34) & " href=" & chr(34) & "http://www.afip.gov.ar/" & chr(34) & " style=" & chr(34) & "text-decoration: none; " & chr(34) & " target=" & chr(34) & "_blank" & chr(34) & ">" & VbCrLf
'cuerpo = cuerpo & "<span class=" & chr(34) & "auto-style42" & chr(34) & " style=" & chr(34) & "color: rgb(0, 0, 0); " & chr(34) & ">" & VbCrLf
'cuerpo = cuerpo & "<strong>AFIP</strong></span></a></span></span></td>" & VbCrLf
'cuerpo = cuerpo & "</tr>" & VbCrLf
'cuerpo = cuerpo & "<tr>" & VbCrLf
'cuerpo = cuerpo & "<td class=" & chr(34) & "auto-style5" & chr(34) & ">" & VbCrLf
'cuerpo = cuerpo & "<span class=" & chr(34) & "Apple-style-span" & chr(34) & " style=" & chr(34) & "border-collapse: separate; color: rgb(0, 0, 0); font-family: 'Times New Roman'; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: 2; text-align: -webkit-auto; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-border-horizontal-spacing: 0px; -webkit-border-vertical-spacing: 0px; -webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; font-size: medium; " & chr(34) & ">" & VbCrLf
'cuerpo = cuerpo & "<span class=" & chr(34) & "auto-style5" & chr(34) & " style=" & chr(34) & "font-family: Arial, Helvetica, sans-serif; " & chr(34) & ">" & VbCrLf
'cuerpo = cuerpo & "<a class=" & chr(34) & "auto-style35" & chr(34) & " href=" & chr(34) & "http://www.inv.gov.ar/" & chr(34) & " style=" & chr(34) & "text-decoration: none; " & chr(34) & " target=" & chr(34) & "_blank" & chr(34) & ">" & VbCrLf
'cuerpo = cuerpo & "<span class=" & chr(34) & "auto-style42" & chr(34) & " style=" & chr(34) & "color: rgb(0, 0, 0); " & chr(34) & ">" & VbCrLf
'cuerpo = cuerpo & "<strong>Instituto Nacional de Vitivinicultura</strong></span></a></span></span></td>" & VbCrLf
'cuerpo = cuerpo & "</tr>" & VbCrLf
'cuerpo = cuerpo & "</table>" & VbCrLf
'cuerpo = cuerpo & "</td>" & VbCrLf
'cuerpo = cuerpo & "</tr>" & VbCrLf
'cuerpo = cuerpo & "<tr>" & VbCrLf
'cuerpo = cuerpo & "<td class=" & chr(34) & "auto-style70" & chr(34) & ">" & VbCrLf
'cuerpo = cuerpo & "<a href=" & chr(34) & "http://www.estudiodavila.com.ar" & chr(34) & " target=" & chr(34) & "_blank" & chr(34) & ">" & VbCrLf
'cuerpo = cuerpo & "<img alt=" & chr(34) & "" & chr(34) & " class=" & chr(34) & "auto-style90" & chr(34) & " height=" & chr(34) & "70" & chr(34) & " src=" & chr(34) & "http://www.estudiodavila.com.ar/images/banner1.jpg" & chr(34) & " width=" & chr(34) & "282" & chr(34) & "></a></td>" & VbCrLf
'cuerpo = cuerpo & "<td class=" & chr(34) & "auto-style89" & chr(34) & " valign=" & chr(34) & "top" & chr(34) & ">" & VbCrLf
'cuerpo = cuerpo & "<br><br>" & VbCrLf
'cuerpo = cuerpo & "<!-- AddThis Button BEGIN -->" & VbCrLf
'cuerpo = cuerpo & "<a href=" & chr(34) & "http://api.addthis.com/oexchange/0.8/forward/facebook/offer?pco=tbx32nj-1.0&amp;url=http%3A%2F%2Fwww.estudiodavila.com.ar&amp;pubid=peterotul" & chr(34) & " target=" & chr(34) & "_blank" & chr(34) & " ><img src=" & chr(34) & "http://cache.addthiscdn.com/icons/v1/thumbs/32x32/facebook.png" & chr(34) & " border=" & chr(34) & "0" & chr(34) & " alt=" & chr(34) & "Facebook" & chr(34) & " /></a>" & VbCrLf
'cuerpo = cuerpo & "<a href=" & chr(34) & "http://api.addthis.com/oexchange/0.8/forward/twitter/offer?pco=tbx32nj-1.0&amp;url=http%3A%2F%2Fwww.estudiodavila.com.ar&amp;pubid=peterotul" & chr(34) & " target=" & chr(34) & "_blank" & chr(34) & " ><img src=" & chr(34) & "http://cache.addthiscdn.com/icons/v1/thumbs/32x32/twitter.png" & chr(34) & " border=" & chr(34) & "0" & chr(34) & " alt=" & chr(34) & "Twitter" & chr(34) & " /></a>" & VbCrLf
'cuerpo = cuerpo & "<a href=" & chr(34) & "http://www.addthis.com/bookmark.php?source=tbx32nj-1.0&amp;=300&amp;pubid=peterotul&amp;url=http%3A%2F%2Fwww.estudiodavila.com.ar " & chr(34) & " target=" & chr(34) & "_blank" & chr(34) & "  ><img src=" & chr(34) & "http://cache.addthiscdn.com/icons/v1/thumbs/32x32/more.png" & chr(34) & " border=" & chr(34) & "0" & chr(34) & " alt=" & chr(34) & "More..." & chr(34) & " /></a>" & VbCrLf
'cuerpo = cuerpo & "<!-- AddThis Button END --></td>" & VbCrLf
'cuerpo = cuerpo & "</tr>" & VbCrLf
'cuerpo = cuerpo & "<tr>" & VbCrLf
'cuerpo = cuerpo & "<td colspan=" & chr(34) & "3" & chr(34) & " style=" & chr(34) & "height: 7px" & chr(34) & "></td>" & VbCrLf
'cuerpo = cuerpo & "</tr>" & VbCrLf
'cuerpo = cuerpo & "<tr>" & VbCrLf
'cuerpo = cuerpo & "<td class=" & chr(34) & "auto-style33" & chr(34) & " style=" & chr(34) & "height: 36;" & chr(34) & " colspan=" & chr(34) & "3" & chr(34) & ">" & VbCrLf
'cuerpo = cuerpo & "<img alt=" & chr(34) & "" & chr(34) & " height=" & chr(34) & "30" & chr(34) & " src=" & chr(34) & "http://www.estudiodavila.com.ar/images/masinfo.jpg" & chr(34) & " width=" & chr(34) & "850" & chr(34) & ">&nbsp;</td>" & VbCrLf
'cuerpo = cuerpo & "</tr>" & VbCrLf

'cuerpo = cuerpo & "<table cellpadding=" & chr(34) & "2" & chr(34) & " cellspacing=" & chr(34) & "3" & chr(34) & ">" & VbCrLf
'cuerpo = cuerpo & "<td style=" & chr(34) & "width: 276; height: 108px;" & chr(34) & " class=" & chr(34) & "auto-style4" & chr(34) & " valign=" & chr(34) & "top" & chr(34) & ">" & VbCrLf
'cuerpo = cuerpo & "<span class=" & chr(34) & "auto-style47" & chr(34) & ">" & VbCrLf
'cuerpo = cuerpo & "<strong>" & Titulo_S1 & "</strong></span>" & VbCrLf
'cuerpo = cuerpo & "<br class=" & chr(34) & "auto-style47" & chr(34) & ">" & VbCrLf
'cuerpo = cuerpo & "<span class=" & chr(34) & "auto-style7" & chr(34) & ">" & VbCrLf
'cuerpo = cuerpo & "<span class=" & chr(34) & "auto-style5" & chr(34) & ">" & VbCrLf
'cuerpo = cuerpo & "<span class=" & chr(34) & "auto-style42" & chr(34) & ">" & VbCrLf
'cuerpo = cuerpo & "<br> " & VbCrLf
'cuerpo = cuerpo & cadena_s1 & "&nbsp; </span></span><em><span class=" & chr(34) & "auto-style2" & chr(34) & ">" & VbCrLf
'cuerpo = cuerpo & "<br> <br> " & VbCrLf
'cuerpo = cuerpo & "<span class=" & chr(34) & "auto-style5" & chr(34) & ">" & VbCrLf
'cuerpo = cuerpo & "<font color=" & chr(34) & "#006666" & chr(34) & " size=" & chr(34) & "2" & chr(34) & " class=" & chr(34) & "auto-style7" & chr(34) & ">" & VbCrLf
'cuerpo = cuerpo & "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" & VbCrLf
'cuerpo = cuerpo & "<a href='http://www.estudiodavila.com.ar/leernota.ASP?id_nota=" & id_nota_s1 & " target=" & chr(34) & "_blank" & chr(34) & "><img border=" & chr(34) & "0" & chr(34) & " src=" & chr(34) & "http://www.estudiodavila.com.ar/images/Flecha-der2.jpg" & chr(34) & " align=" & chr(34) & "top" & chr(34) & " class=" & chr(34) & "auto-style92" & chr(34) & "><span class=" & chr(34) & "auto-style92" & chr(34) & ">" & VbCrLf
'cuerpo = cuerpo & "</span> " & VbCrLf
'cuerpo = cuerpo & "</a> </font> " & VbCrLf
'cuerpo = cuerpo & "</span></span>" & VbCrLf
'cuerpo = cuerpo & "<a href='http://www.estudiodavila.com.ar/leernota.ASP?id_nota=" & id_nota_S1 & "' target=" & chr(34) & "_blank" & chr(34) & ">" & VbCrLf
'cuerpo = cuerpo & "<span class=" & chr(34) & "auto-style92" & chr(34) & ">Leer completo</span></a></em></span></td>" & VbCrLf
'cuerpo = cuerpo & "<td style=" & chr(34) & "width: 276; height: 108px;" & chr(34) & " class=" & chr(34) & "auto-style4" & chr(34) & " valign=" & chr(34) & "top" & chr(34) & ">" & VbCrLf
'cuerpo = cuerpo & "<span class=" & chr(34) & "auto-style47" & chr(34) & ">" & VbCrLf
'cuerpo = cuerpo & "<b>" & Titulo_S2 & "</b>" & VbCrLf
'cuerpo = cuerpo & "</span>" & VbCrLf
'cuerpo = cuerpo & "<br> " & VbCrLf
'cuerpo = cuerpo & "<br class=" & chr(34) & "auto-style47" & chr(34) & ">" & VbCrLf
'cuerpo = cuerpo & "<span class=" & chr(34) & "auto-style7" & chr(34) & ">" & VbCrLf
'cuerpo = cuerpo & "<span class=" & chr(34) & "auto-style5" & chr(34) & ">" & VbCrLf
'cuerpo = cuerpo & "<span class=" & chr(34) & "auto-style42" & chr(34) & ">" & VbCrLf
'cuerpo = cuerpo & cadenas_S2 & "&nbsp; </span></span></span><em>" & VbCrLf
'cuerpo = cuerpo & "<br> <br> " & VbCrLf
'cuerpo = cuerpo & "<font color=" & chr(34) & "#006666" & chr(34) & " size=" & chr(34) & "2" & chr(34) & " face=" & chr(34) & "Verdana" & chr(34) & ">" & VbCrLf
'cuerpo = cuerpo & "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;" & VbCrLf
'cuerpo = cuerpo & "<a href='http://www.estudiodavila.com.ar/leernota.ASP?id_nota= &id_nota_S2 & "' target=" & chr(34) & "_blank" & chr(34) & ">" & VbCrLf
'cuerpo = cuerpo & "<img border=" & chr(34) & "0" & chr(34) & " src=" & chr(34) & "http://www.estudiodavila.com.ar/images/Flecha-der2.jpg" & chr(34) & " align=" & chr(34) & "top" & chr(34) & " class=" & chr(34) & "auto-style92" & chr(34) & " height=" & chr(34) & "7" & chr(34) & "><span class=" & chr(34) & "auto-style74" & chr(34) & ">" & VbCrLf
'cuerpo = cuerpo & "</span> " & VbCrLf
'cuerpo = cuerpo & "</a> </font> " & VbCrLf
'cuerpo = cuerpo & "<span class=" & chr(34) & "auto-style59" & chr(34) & ">" & VbCrLf
'cuerpo = cuerpo & "<a href='http://www.estudiodavila.com.ar/leernota.ASP?id_nota=" & id_nota_S2 & "' target=" & chr(34) & "_blank" & chr(34) & ">" & VbCrLf
'cuerpo = cuerpo & "<span class=" & chr(34) & "auto-style73" & chr(34) & ">Leer completo</span></a></span></em></td>" & VbCrLf
'cuerpo = cuerpo & "<td style=" & chr(34) & "width: 276; height: 108px;" & chr(34) & " class=" & chr(34) & "auto-style67" & chr(34) & " valign=" & chr(34) & "top" & chr(34) & ">" & VbCrLf
'cuerpo = cuerpo & "<span class=" & chr(34) & "auto-style81" & chr(34) & ">" & VbCrLf
'cuerpo = cuerpo & "<span class=" & chr(34) & "auto-style7" & chr(34) & ">" & VbCrLf
'cuerpo = cuerpo & "<span class=" & chr(34) & "auto-style66" & chr(34) & ">" & VbCrLf
'cuerpo = cuerpo & "</span>" & VbCrLf
'cuerpo = cuerpo & "</span>" & VbCrLf
'cuerpo = cuerpo & "</span>" & VbCrLf
'cuerpo = cuerpo & "<span class=" & chr(34) & "auto-style47" & chr(34) & ">" & VbCrLf
'cuerpo = cuerpo & "<b>" & Titulo_S3 & "</b>" & VbCrLf
'cuerpo = cuerpo & "</span>" & VbCrLf
'cuerpo = cuerpo & "<br> " & VbCrLf
'cuerpo = cuerpo & "<br class=" & chr(34) & "auto-style47" & chr(34) & ">" & VbCrLf
'cuerpo = cuerpo & "<span class=" & chr(34) & "auto-style7" & chr(34) & ">" & VbCrLf
'cuerpo = cuerpo & "<span class=" & chr(34) & "auto-style5" & chr(34) & ">" & VbCrLf
'cuerpo = cuerpo & "<span class=" & chr(34) & "auto-style42" & chr(34) & ">" & VbCrLf
'cuerpo = cuerpo & cadena_S3 & "&nbsp; </span></span></span>" & VbCrLf
'cuerpo = cuerpo & "<em>" & VbCrLf
'cuerpo = cuerpo & "<br> <br> " & VbCrLf
'cuerpo = cuerpo & "<font color=" & chr(34) & "#006666" & chr(34) & " size=" & chr(34) & "2" & chr(34) & " face=" & chr(34) & "Verdana" & chr(34) & ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;" & VbCrLf
'cuerpo = cuerpo & "<a href='http://www.estudiodavila.com.ar/leernota.ASP?id_nota=" & id_nota_S3 & "' target=" & chr(34) & "_blank" & chr(34) & ">" & VbCrLf
'cuerpo = cuerpo & "<img border=" & chr(34) & "0" & chr(34) & " src=" & chr(34) & "http://www.estudiodavila.com.ar/images/Flecha-der2.jpg" & chr(34) & " align=" & chr(34) & "top" & chr(34) & " class=" & chr(34) & "auto-style92" & chr(34) & " height=" & chr(34) & "7" & chr(34) & "></a></font><a href='http://www.estudiodavila.com.ar/leernota.ASP?id_nota=" & id_nota_S3 & "' target=" & chr(34) & "_blank" & chr(34) & "><span class=" & chr(34) & "auto-style39" & chr(34) & "><font color=" & chr(34) & "#006666" & chr(34) & " size=" & chr(34) & "2" & chr(34) & " face=" & chr(34) & "Verdana" & chr(34) & "><span class=" & chr(34) & "auto-style74" & chr(34) & ">" & VbCrLf
'cuerpo = cuerpo & "</span> </font> " & VbCrLf
'cuerpo = cuerpo & "</span>" & VbCrLf
'cuerpo = cuerpo & "<span class=" & chr(34) & "auto-style52" & chr(34) & "><span class=" & chr(34) & "auto-style4" & chr(34) & ">Leer completo</span></span></a></em></td>" & VbCrLf
'cuerpo = cuerpo & "</tr>" & VbCrLf
'cuerpo = cuerpo & "</table>" & VbCrLf
'cuerpo = cuerpo & "</td>" & VbCrLf
'cuerpo = cuerpo & "</tr>" & VbCrLf
'cuerpo = cuerpo & "</table>" & VbCrLf
'cuerpo = cuerpo & "</center>" & VbCrLf
'cuerpo = cuerpo & "</div>" & VbCrLf
'cuerpo = cuerpo & "</td>" & VbCrLf
'cuerpo = cuerpo & "</tr>" & VbCrLf
'cuerpo = cuerpo & "<tr>" & VbCrLf
'cuerpo = cuerpo & "<td style=" & chr(34) & "height: 14; width: 875;" & chr(34) & "></td>" & VbCrLf
'cuerpo = cuerpo & "</tr>" & VbCrLf
'cuerpo = cuerpo & "<tr>" & VbCrLf
'cuerpo = cuerpo & "<td class=" & chr(34) & "auto-style17" & chr(34) & " style=" & chr(34) & "height: 54; width: 875;" & chr(34) & ">" & VbCrLf
'cuerpo = cuerpo & "<font size=" & chr(34) & "2" & chr(34) & "><br><br><span class=" & chr(34) & "auto-style79" & chr(34) & ">Si considera que este email ha llegado a usted por error o " & VbCrLf
'cuerpo = cuerpo & "ya no desea seguir recibiendolo, puede </span> <span class=" & chr(34) & "auto-style8" & chr(34) & "><strong>" & VbCrLf
'cuerpo = cuerpo & "<a href=" & chr(34) & "desuscripcion.asp" & chr(34) & "><span class=" & chr(34) & "auto-style79" & chr(34) & ">desuscribirse haciendo clik aquí</span></a></strong></span><span class=" & chr(34) & "auto-style79" & chr(34) & ">.</span></font><table align=" & chr(34) & "center" & chr(34) & " cellpadding=" & chr(34) & "15" & chr(34) & " cellspacing=" & chr(34) & "15" & chr(34) & " class=" & chr(34) & "auto-style77" & chr(34) & " style=" & chr(34) & "width: 90%" & chr(34) & ">" & VbCrLf
'cuerpo = cuerpo & "<tr>" & VbCrLf
'cuerpo = cuerpo & "<td class=" & chr(34) & "auto-style27" & chr(34) & " style=" & chr(34) & "width: 744; height: 141;" & chr(34) & ">" & VbCrLf
'cuerpo = cuerpo & "<font face=" & chr(34) & "Verdana" & chr(34) & "><span lang=" & chr(34) & "es" & chr(34) & " class=" & chr(34) & "auto-style79" & chr(34) & ">" & VbCrLf
'cuerpo = cuerpo & "<font size=" & chr(34) & "2" & chr(34) & " class=" & chr(34) & "auto-style26" & chr(34) & "><em>La información contenida en este newsletter es " & VbCrLf
'cuerpo = cuerpo & "recopilada y enviada por Estudio Dávila a su lista de clientes y " & VbCrLf
'cuerpo = cuerpo & "suscriptores. El propósito del mismo es proporcionar información " & VbCrLf
'cuerpo = cuerpo & "general sobre temas específicos referidos a nuestra área de " & VbCrLf
'cuerpo = cuerpo & "servicios y no constituyen un tratamiento exhaustivo de dicho tema " & VbCrLf
'cuerpo = cuerpo & "o temas. La información contenida en este material no intenta " & VbCrLf
'cuerpo = cuerpo & "conformar un asesoramiento o servicio profesional de comercio " & VbCrLf
'cuerpo = cuerpo & "exterior ni tiene como fín ser considerada como una base confiable " & VbCrLf
'cuerpo = cuerpo & "o como la única base para cualquier decisión que pueda afectar a " & VbCrLf
'cuerpo = cuerpo & "quién lo reciba o a sus negocios. Antes de tomar cualquier " & VbCrLf
'cuerpo = cuerpo & "decisión o acción que pudiera afectar sus finanzas personales o " & VbCrLf
'cuerpo = cuerpo & "negocios, deberán consultar a un asesor profesional de Estudio " & VbCrLf
'cuerpo = cuerpo & "Dávila. Este material y la información contenida en el mismo están " & VbCrLf
'cuerpo = cuerpo & "emitidos tal como aquí se presentan. Estudio Dávila no efectúa " & VbCrLf
'cuerpo = cuerpo & "ninguna manifestación o garantía expresado implícita con relación " & VbCrLf
'cuerpo = cuerpo & "a este material o a la información contenida en el mismo. Sin " & VbCrLf
'cuerpo = cuerpo & "limitar lo antedicho, Estudio Dávila no garantiza que este " & VbCrLf
'cuerpo = cuerpo & "material o la información contenida en el mismo estén libres de " & VbCrLf
'cuerpo = cuerpo & "errores o que reúnan ciertos criterios específicos de rendimiento " & VbCrLf
'cuerpo = cuerpo & "o de calidad. Estudio Dávila expresamente se abstiene de expresar " & VbCrLf
'cuerpo = cuerpo & "cualquier garantía implícita, incluyendo sin limitaciones " & VbCrLf
'cuerpo = cuerpo & "garantías de valor comercial, propiedad, adecuación a un propósito " & VbCrLf
'cuerpo = cuerpo & "particular, no-infracción, compatibilidad, seguridad y exactitud.</em></font></span></font></td>" & VbCrLf
'cuerpo = cuerpo & "</tr>" & VbCrLf
'cuerpo = cuerpo & "</table>" & VbCrLf
'cuerpo = cuerpo & "</td>" & VbCrLf
'cuerpo = cuerpo & "</tr>" & VbCrLf
'cuerpo = cuerpo & "<tr>" & VbCrLf
'cuerpo = cuerpo & "<td class=" & chr(34) & "auto-style85" & chr(34) & " style=" & chr(34) & "height: 12px; width: 875;" & chr(34) & ">" & VbCrLf
'cuerpo = cuerpo & "</td>" & VbCrLf
'cuerpo = cuerpo & "</tr>" & VbCrLf
'cuerpo = cuerpo & "<tr>" & VbCrLf
'cuerpo = cuerpo & "<td class=" & chr(34) & "auto-style71" & chr(34) & " style=" & chr(34) & "height: 106; width: 875;" & chr(34) & ">" & VbCrLf
'cuerpo = cuerpo & "<font color=" & chr(34) & "#FFFFFF" & chr(34) & " face=" & chr(34) & "Verdana" & chr(34) & "><span lang=" & chr(34) & "es" & chr(34) & ">" & VbCrLf
'cuerpo = cuerpo & "<font size=" & chr(34) & "2" & chr(34) & " class=" & chr(34) & "auto-style5" & chr(34) & "><span class=" & chr(34) & "auto-style79" & chr(34) & ">© 2013 . Estudio Dávila. <br>" & VbCrLf
'cuerpo = cuerpo & "</span>" & VbCrLf
'cuerpo = cuerpo & "<span class=" & chr(34) & "auto-style14" & chr(34) & "><a href=" & chr(34) & "http://www.estudiodavila.com.ar" & chr(34) & ">" & VbCrLf
'cuerpo = cuerpo & "<span class=" & chr(34) & "auto-style79" & chr(34) & ">www.estudiodavila.com.ar</span></a></span></font></span></font><br class=" & chr(34) & "auto-style83" & chr(34) & ">" & VbCrLf
'cuerpo = cuerpo & "<span class=" & chr(34) & "Apple-style-span" & chr(34) & " style=" & chr(34) & "border-collapse: collapse; font-family: Verdana; font-size: small; " & chr(34) & ">" & VbCrLf
'cuerpo = cuerpo & "<span class=" & chr(34) & "auto-style79" & chr(34) & " style=" & chr(34) & "border-collapse: separate; font-family: 'Times New Roman'; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: 2; text-align: -webkit-auto; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-border-horizontal-spacing: 0px; -webkit-border-vertical-spacing: 0px; -webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; font-size: medium;" & chr(34) & ">" & VbCrLf
'cuerpo = cuerpo & "(+54) 0261-4294364 . Mendoza. Argentina</span></span></td>" & VbCrLf
'cuerpo = cuerpo & "</tr>" & VbCrLf
'cuerpo = cuerpo & "</table>" & VbCrLf
'cuerpo = cuerpo & "</center>" & VbCrLf
'cuerpo = cuerpo & "</div>" & VbCrLf
'cuerpo = cuerpo & "</body>" & VbCrLf
'cuerpo = cuerpo & "</html>" & VbCrLf

%>

<%

set oConn = Server.CreateObject("ADODB.Connection")

oConn.Open "DRIVER={Microsoft Access Driver (*.mdb)}; DBQ="&Server.MapPath("../db/Susc.mdb")

Set RSArt = Server.CreateObject("ADODB.Recordset")

SQL3 = "Select * from listado where activo = True order by id"

RSArt.Open SQL3, oConn, 1, 3

do while not RSArt.eof

  email = RSArt("email")





' Mando email
Dim objMail

Set objMail = CreateObject("CDONTS.NewMail")

objMail.From = "news@estudiodavila.com.ar"
'objMail.To = email
objMail.To = "info@luxmedia.com.ar"
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


Response.Redirect "New_Office.asp"



%>

</body>

</html>
