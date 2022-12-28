<%@ Language=VBScript %>
<% Response.Buffer = True %>

<%

DIM UserName 
UserName = Request.form("usuario")
DIM Password 
Password = Request.form("password")
DIM oConn
DIM RSArt
DIM yes
DIM error


set oConn =  Server.CreateObject("ADODB.Connection")

oConn.Open "DRIVER={Microsoft Access Driver (*.mdb)}; DBQ="&Server.MapPath("../db/usuarios.mdb")
Set RSArt = oconn.Execute("select * from registrados where usuario = '" & UserName & "'  and  password = '" & Password & "'  and estado = True ")

if not rsart.eof then

  Session("allow_shopp") = True
  Session("usuario") = UserName
  Session.Timeout = 600

Response.Redirect "office.asp"

Else
yes = "yes"
Response.Redirect "index.asp?error="&yes&""
End If

rsart.close
oconn.close

%>