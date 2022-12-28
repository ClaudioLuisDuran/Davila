<%@ Language=VBScript %>
<% Response.Buffer = True %>


<html>

<head>
<meta http-equiv="Content-Language" content="es">
<meta name="GENERATOR" content="Microsoft FrontPage 6.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>:: Estudio Aduanero Dávila ::</title>


</head>

<body>
              
<% 
DIM emailok
emailok = request("email")


' verifico que no existe el email

Set oConnx = Server.CreateObject("ADODB.Connection")
Set RSArt = Server.CreateObject("ADODB.Recordset")



oConnx.Open "DRIVER={Microsoft Access Driver (*.mdb)}; DBQ="&Server.MapPath("db/Susc.mdb")
Set RSArt = oConnx.Execute("Select * from listado where email = '" & emailok & "' order by id")

if rsart.eof then

' grabo suscriptor nuevo

Set oConn = Server.CreateObject("ADODB.Connection")
set RS = Server.CreateObject("ADODB.Recordset")  

oConn.Open "DRIVER={Microsoft Access Driver (*.mdb)}; DBQ="&Server.MapPath("db/susc.mdb")

             RS.Open "listado",oConn,2,2
             
             RS.AddNew
             
             RS("email") = request("email")
             RS("fecha") = Now
             RS("activo") = True
             
             RS.Update
             RS.Close
             
set RS=nothing

oConn.Close

DIM susc

susc = "yes"

Response.Redirect "Newsletter.asp?susc=" & susc

else

susc = "ops"

Response.Redirect "Newsletter.asp?susc=" & susc

'set RSArt=nothing
'oConnx.Close

end if

%>
              
 

</body>

</html>