 <%@ Language=VBScript %>
<% Response.Buffer = True %>

<html>

<head>
<meta http-equiv="Content-Language" content="es">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>:: Estudio Aduanero Dávila :: Comercio Exterior ::</title>
 <%

DIM cuerpo

  Dim nombre
  nombre = request("nombre")
  Dim email
  email = request("email")
  Dim telefono
  telefono = request("telefono")
  Dim provincia
  provincia = request("provincia")
  Dim pais
  pais = request("pais")
  Dim consulta
  consulta = request("consulta")

DIM cdoHigh

cuerpo = VbCrLf
cuerpo = cuerpo & "Email generado desde la web www.estudiodavila.com.ar" & VbCrLf & VbCrLf
cuerpo = cuerpo & "Nombre = "  & nombre & VbCrLf
cuerpo = cuerpo & "Teléfono = "  & telefono & VbCrLf
cuerpo = cuerpo & "email = "  & email & VbCrLf
cuerpo = cuerpo & "Provincia / Region = "  & provincia & VbCrLf
cuerpo = cuerpo & "Pais = "  & pais & VbCrLf
cuerpo = cuerpo & "Consulta/Mensaje = "  & consulta & VbCrLf & VbCrLf

' Mando email

Dim objMail
Set objMail = CreateObject("CDONTS.NewMail")
objMail.From = email
objMail.To = "silvana@estudiodavila.com.ar"
'objMail.To = "duranclaudio@ciudad.com.ar"
objMail.Subject = "[ Nuevo Contacto] - http://www.estudiodavila.com.ar"
objMail.Body = cuerpo
objMail.importance = cdoHigh
objMail.Send
Set objMail = nothing

response.redirect "gracias.asp"
%>