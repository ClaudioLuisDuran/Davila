<%@ Language=VBScript %>
<% Response.Buffer = True %>

 <html>

<head>
<meta name="GENERATOR" content="Microsoft FrontPage 12.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>:: Estudio Aduanero Dávila :: Modulo de Administración Web ::</title>



</head>

<body bgcolor="#000000" topmargin="0" leftmargin="0" background="../Home/images/back.gif">

<% 

'Id = Request("Id")



Set oConn = Server.CreateObject("ADODB.Connection")

' grabo escrito


oConn.Open "DRIVER={Microsoft Access Driver (*.mdb)}; DBQ="&Server.MapPath("../db/news.mdb")


 SQL = "select * from txt where Id_nota = " & request("Id_nota") & ""
 
 set RS = Server.CreateObject("ADODB.Recordset") 
 rs.Open SQL, oConn,3,3
             
             RS("titulo") = request.form("titulo")
             RS("autor") = request.form("autor")
             RS("resumen") = request.form("resumen")
             RS("texto") = request.form("texto")
             
             RS.Update
             RS.Close
             
set RS=nothing



Response.Redirect "adminnotas.ASP"
 
%>