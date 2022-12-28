<%@ Language=VBScript %>
<% Response.Buffer = True %>


<% 
  
'Id = Request("Id")

Set oConn = Server.CreateObject("ADODB.Connection")

oConn.Open "DRIVER={Microsoft Access Driver (*.mdb)}; DBQ="&Server.MapPath("../db/usuarios.mdb")


SQL = "DELETE FROM registrados WHERE Id = " & request("Id") & ""

oConn.Execute(SQL)

'oConn.Close
'set oConn = nothing

Response.Redirect "usuarios.asp"
 
 


%>