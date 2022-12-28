<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta content="text/html; charset=windows-1252" http-equiv="Content-Type" />
<title>Untitled 1</title>
</head>

<body>


<% 
DIM Nuevacategoria
DIM a

Nuevacategoria = Request("nuevacategoria")

a = left(Nuevacategoria,len(Nuevacategoria)-2)

Nuevacategoria = a

Nuevacategoria = Cstr(Nuevacategoria)

Set oConn = Server.CreateObject("ADODB.Connection")

oConn.Open "DRIVER={Microsoft Access Driver (*.mdb)}; DBQ="&Server.MapPath("../db/news.mdb")


Set rs = Server.CreateObject("ADODB.Recordset")

SQL = "select * from txt where id_nota = " & request("id_nota") & ""

rs.Open SQL, oConn, 2,3,1


             rs("categoria") = Nuevacategoria
             rs.Update

rs.Close
set rs = nothing

oConn.Close
set oConn = nothing

'Response.write (Request("nuevacategoria"))
'Response.write Nuevacategoria

'Response.write a

Response.Redirect "adminnotas.ASP"

%>

</body>

</html>
