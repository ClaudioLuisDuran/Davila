<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta content="text/html; charset=windows-1252" http-equiv="Content-Type" />
<title>Untitled 1</title>
</head>

<body>

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
