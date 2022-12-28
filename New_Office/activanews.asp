<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta content="text/html; charset=windows-1252" http-equiv="Content-Type" />
<title>Untitled 1</title>
</head>

<body>


<%

DIM id_P
DIM id_S1
DIM id_S2
DIM id_S3

DIM P
P = "Principal"

DIM S1
S1 = "Secundaria 1"

DIM S2
S2 = "Secundaria 2"


DIM S3
S3 = "Secundaria 3"



set oConn =  Server.CreateObject("ADODB.Connection")


oConn.Open "DRIVER={Microsoft Access Driver (*.mdb)}; DBQ="&Server.MapPath("../db/news.mdb")

Set RSArt = oConn.Execute("select * from txt order by id_nota desc") 

if not rsart.eof then

do while not rsart.eof

if RSArt("tipo")=P then
id_P = RSArt("id_nota")

else
end if

if RSArt("tipo")=S1 then
id_S1 = RSArt("id_nota")

else
end if

if RSArt("tipo")=S2 then
id_S2 = RSArt("id_nota")

else
end if

if RSArt("tipo")=S3 then
id_S3 = RSArt("id_nota")

else
end if

rsart.movenext
loop
end if

RsArt.close
set RsArt = nothing
oConn.Close
set oConn = nothing

%>


<% 

Set oConn = Server.CreateObject("ADODB.Connection")

' grabo esquema news nueva

set RS = Server.CreateObject("ADODB.Recordset")  

oConn.Open "DRIVER={Microsoft Access Driver (*.mdb)}; DBQ="&Server.MapPath("../db/news.mdb")

             RS.Open "Envios",oConn,2,2
             
             RS.AddNew
             
             RS("P") = id_P
             RS("S1") = id_S1
             RS("S2") = id_S2
             RS("S3") = id_S3
             RS("fecha") = Now
             RS("lecturas") = 0
             RS("enviada") = False
             
             RS.Update
             RS.Close
             
set RS=nothing

oConn.Close

 
Response.Redirect "adminenvios.asp"

%>

</body>

</html>
