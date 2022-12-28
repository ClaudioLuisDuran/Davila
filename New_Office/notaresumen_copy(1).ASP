<%@LANGUAGE="VBSCRIPT" CODEPAGE="1254"%>

<html>

<head>
<meta http-equiv="Content-Language" content="es">
<meta name="GENERATOR" content="Microsoft FrontPage 12.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>:: Estudio Aduanero Dávila :: Modulo de Administración Web ::</title>


<style type="text/css">
.auto-style2 {
	font-family: Georgia;
	font-weight: bold;
	font-size: x-small;
	color: #FFFFFF;
}
.auto-style4 {
	font-family: Arial, Helvetica, sans-serif;
	font-size: small;
}
.auto-style5 {
	font-family: Georgia;
	font-weight: bold;
	font-size: x-small;
	color: #FFFFFF;
	text-align: left;
}
.auto-style6 {
	font-family: Georgia;
	font-weight: bold;
	font-size: x-small;
	color: #FFFFFF;
	text-align: center;
}
</style>


</head>

<body bgcolor="#000000">

<div align="center">
  <center>
  <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="800" height="1">
    <tr>
      <td height="31" background="../images/bg1.jpg">
      <div align="center">
        <center>
        <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="100%" height="126">
          <tr>
            <td width="87%" height="126" valign="top">
            
            &nbsp;<p align="center"><b><font color="#006666" size="4" face="Verdana">
            <span lang="es">Módulo de Administración Web </span></font></b>
            <p align="center"><b><font color="#006666" size="4" face="Verdana">
            <span lang="es">Estudio Dávila</span></font></b></td>
            
            <td width="13%" height="126" valign="top"><img border="0" src="../images/logo.jpg"></td>
          </tr>
        </table>
        </center>
      </div>
      </td>
    </tr>
    <tr>
      <td height="210" background="../images/bg2.jpg">
      <div align="center">
        <center>
        <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="100%" height="178">
          <tr>
            <td width="100%" height="178" class="auto-style4">
          
              <p align="center"><br>
              <font color="#FFFFFF" face="Verdana"><b><span lang="es"><font face="Georgia" size="2">&gt;&gt;&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp;RESUMEN 
			  DE TITULOS&nbsp; &lt;&lt;&lt;&lt;</font></span></b></font></p>
			  <p align="center" class="auto-style2">(De los últimos 4 
			  Newsletter)</p>
			  
			  <%

  ' ELIJO 4 ULTIMOS NEWS
        
        Dim texto
        texto = ""
        paso = 1
  		set oConn =  Server.CreateObject("ADODB.Connection")
		oConn.Open "DRIVER={Microsoft Access Driver (*.mdb)}; DBQ="&Server.MapPath("../db/news.mdb")
		Set RSArt = oConn.Execute("select * from Envios where enviada = TRUE order by id_new DESC") 
		if not rsart.eof then
		
		do while paso < 5
		Dim x
		P = Rsart("P")
  		S1 = Rsart("S1")
  		S2 = Rsart("S2")
  		S3 = Rsart("S3")
  		 		
  		    control = 1	
  		    do while control < 5
  		    
  		    if control = 1 then
  		    x = P
  		    end if
  		    if control = 2 then
  		    x = S1
  		    end if
			if control = 3 then
  		    x = S2
  		    end if
			if control = 4 then
  		    x = S3
  		    end if

  			set oConn2 =  Server.CreateObject("ADODB.Connection")
			oConn2.Open "DRIVER={Microsoft Access Driver (*.mdb)}; DBQ="&Server.MapPath("../db/news.mdb")
			Set RSArt2 = oConn.Execute("select * from txt where Id_nota = " & x & "")
			if not rsart2.eof then
			Titulo = Rsart2("titulo")
			end if %>
			
			  <p class="auto-style5">
			  <%Response.write "<a href='http://www.estudiodavila.com.ar/leernota.asp?id_nota=" & x & "'><span class=" & chr(34) & "auto-style3" & chr(34) & ">" & Titulo & "</span></a>"%> 
			  </p>
			
			<%
			texto = texto + "<a href='http://www.estudiodavila.com.ar/leernota.asp?id_nota=" & x & "'><span class=" & chr(34) & "auto-style3" & chr(34) & ">" & Titulo & "</span></a>" & "<br>"			
			%>
			
			
			<%
			control = control + 1
			RsArt2.close
			'rsart2.movenext
			oConn2.Close
			set oConn2 = nothing
			loop
	  		

		paso = paso + 1		
		rsart.movenext
		loop
		end if
		RsArt.close
		set RsArt = nothing
		oConn.Close
		set oConn = nothing

  %>

			  
			  <p class="auto-style5">
			  &nbsp;</p>
			  <p class="auto-style5">
			  &nbsp;</p>
			  <p class="auto-style6">
			  <span lang="es"><span lang="es">
                      <textarea name="texto" style="width: 500px; height: 83px"><%=texto%></textarea></span></span>
			  &nbsp;</p>
			  <p class="auto-style5">
			  &nbsp;</p>
                  
              <p align="center"><span lang="es"><b>
              <font face="Georgia" size="2" color="#FFFFFF">
              
    </font></b>
                  
              <form method="POST" action="notaresumen_copy(1).ASP">
                <div align="center">
                  <center>
                  <span lang="es">
                    
                <table border="2" cellspacing="5" width="250" bordercolorlight="#FFFFFF" bordercolor="#00A6A6" cellpadding="10">
                  <tr>
                    <td align="center" bgcolor="#004848">
                    <span lang="es"><b>
                    <a href="New_Office.ASP">
                    <font face="Verdana" size="2" color="#FFFFFF">Volver al menú 
                    de administración</font></a></b></span></td>
                  </tr>
                  <tr>
                    <td align="center" bgcolor="#004848"><b><span lang="es">
                    <font color="#FFFFFF" face="Verdana" size="2">&lt;&lt;
                    <a href="abandon.asp"><font color="#FFFFFF">Desconectarse</font></a> 
                    &gt;&gt;</font></span></b></td>
                  </tr>
                </table>
                </center>
              </div>
              </p>
                     
              </span>
                     
            </td>
          </tr>
          <tr>
            <td width="100%" height="178" class="auto-style4">
          
              &nbsp;</td>
          </tr>
        </table>
        </center>
      </div>
      </td>
    </tr>
    <tr>
      <td height="1" bgcolor="#FFFFFF" background="../images/bg3.jpg">&nbsp;</td>
    </tr>
    <tr>
      <td height="1" bgcolor="#FFFFFF">&nbsp;</td>
    </tr>
    <tr>
      <td height="1" bgcolor="#006666">&nbsp;</td>
    </tr>
  </table>
  </center>
</div>

</body>

</html>