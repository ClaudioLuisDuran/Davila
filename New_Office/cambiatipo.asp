<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta content="text/html; charset=windows-1252" http-equiv="Content-Type" />
<title>Untitled 1</title>
</head>

<body>

<% 
DIM Nuevotipo
Nuevotipo = Request("nuevotipo")

a = left(Nuevotipo,len(Nuevotipo)-2)

Nuevotipo = a

Nuevotipo = Cstr(Nuevotipo)

if Nuevotipo = "Ninguno" then
a = ""
else
end if

'response.write Nuevotipo
'response.write a

Set oConn = Server.CreateObject("ADODB.Connection")
oConn.Open "DRIVER={Microsoft Access Driver (*.mdb)}; DBQ="&Server.MapPath("../db/news.mdb")


Set RS2 = Server.CreateObject("ADODB.Recordset")
 Set rs = Server.CreateObject("ADODB.Recordset")

'SQL2 = "select * from txt where tipo = "&request.querystring("idPais")&"
SQL2 = "select * from txt where tipo =  '"&a&"'"
 SQL = "select * from txt where id_nota = " & request("id_nota") & ""

RS2.Open SQL2, oConn, 2,3,1
if not RS2.eof then
             RS2("tipo") = ""
             RS2.Update
else
end if

rs.Open SQL, oConn, 2,3,1

             rs("tipo") = a
             rs.Update

rs.Close
set rs = nothing

RS2.Close
set RS2 = nothing

oConn.Close
set oConn = nothing

'response.write Nuevotipo
'response.write a

Response.Redirect "adminnotas.ASP"

%>

</body>

</html>
