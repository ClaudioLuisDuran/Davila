<%@ Language=VBScript %>
<% Response.Buffer = True %>


<% 
  
'Id = Request("Id")

Set oConn = Server.CreateObject("ADODB.Connection")

oConn.Open "DRIVER={Microsoft Access Driver (*.mdb)}; DBQ="&Server.MapPath("../db/susc.mdb")


SQL = "DELETE FROM listado WHERE Id = " & request("Id") & ""

oConn.Execute(SQL)

'oConn.Close
'set oConn = nothing

Response.Redirect "adminsusc.asp"
 
 


%>