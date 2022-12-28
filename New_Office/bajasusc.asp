<%@ Language=VBScript %>
<% Response.Buffer = True %>

 <html>

<head>
<meta name="GENERATOR" content="Microsoft FrontPage 12.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>:: Estudio Aduanero Dávila :: Modulo de Administración Web ::</title>



</head>

<body topmargin="0" leftmargin="0" background="../Home/images/back.gif" style="background-color: #008080">

<% 
DIM activo
DIM Id
Dim a1
Dim a2

Id = Request("Id")
activo = Request("activo")
a1 = Cbool(activo)


'response.write activo
'response.write a1

if a1 = FALSE then

a2 = TRUE
'response.write a2

else

a2 = FALSE
response.write a2

end if

'response.write activo

Set oConn = Server.CreateObject("ADODB.Connection")

' cambio estado de suscripcion


oConn.Open "DRIVER={Microsoft Access Driver (*.mdb)}; DBQ="&Server.MapPath("../db/susc.mdb")


 SQL = "select * from listado where Id = " & request("Id") & ""
 
set RS = Server.CreateObject("ADODB.Recordset") 
 rs.Open SQL, oConn,3,3


             
             RS("activo") = a2
             RS("fecha") = Now
                         
             RS.Update
             RS.Close
             
set RS=nothing



Response.Redirect "adminsusc.ASP"
 
%>