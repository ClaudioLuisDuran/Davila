<%@ Language=VBScript %>
<% Response.Buffer = True %>


<% 
  
Id = Request("Id")

Set oConn = Server.CreateObject("ADODB.Connection")

oConn.Open "DRIVER={Microsoft Access Driver (*.mdb)}; DBQ="&Server.MapPath("../db/notas.mdb")


SQL = "DELETE FROM txt WHERE Id_nota = " & request("Id_nota") & ""

oConn.Execute(SQL)

'oConn.Close
'set oConn = nothing

Response.Redirect "adminnotas.asp"
 
 


%>