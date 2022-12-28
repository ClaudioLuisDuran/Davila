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
              
              
              
              <% 

Set oConn = Server.CreateObject("ADODB.Connection")

' grabo nota

set RS = Server.CreateObject("ADODB.Recordset")  

oConn.Open "DRIVER={Microsoft Access Driver (*.mdb)}; DBQ="&Server.MapPath("../db/susc.mdb")

             RS.Open "listado",oConn,2,2
             
             RS.AddNew
             
             RS("email") = request("email")
             RS("fecha") = Now
             RS("activo") = True
             
             RS.Update
             RS.Close
             
set RS=nothing

oConn.Close

 
Response.Redirect "adminsusc.asp"

%>
              
 

</body>

</html>