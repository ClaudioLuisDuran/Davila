<%@ Language=VBScript %>
<% Response.Buffer = True %>

 
<% 
if Session("usuario")= "" then

yes = "yes"
Response.Redirect "index.asp?error="&yes&""

  else
end if

%>

<html>

<head>
<meta http-equiv="Content-Language" content="es">
<meta name="GENERATOR" content="Microsoft FrontPage 12.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>:: Estudio Aduanero Dávila :: Modulo de Administración Web ::</title>


<style type="text/css">
.auto-style1 {
	font-family: Georgia;
	font-size: x-small;
	color: #004848;
}
.auto-style2 {
	font-family: Georgia;
}
.auto-style3 {
	font-size: x-small;
	color: #004848;
}
.auto-style4 {
	font-family: Georgia;
	font-weight: bold;
	font-size: x-small;
	color: #FFFFFF;
}
.auto-style5 {
	color: #FBFFE1;
	font-family: Arial, Helvetica, sans-serif;
}
.auto-style6 {
	font-size: x-small;
	font-weight: bold;
	font-family: Arial, Helvetica, sans-serif;
}
.auto-style7 {
	font-family: Arial, Helvetica, sans-serif;
}
.auto-style8 {
	font-family: Arial, Helvetica, sans-serif;
	font-weight: bold;
	font-size: x-small;
	color: #FFFFFF;
}
.auto-style9 {
	color: #FFFF00;
}
.auto-style10 {
	font-family: Arial, Helvetica, sans-serif;
	font-size: small;
}
.auto-style11 {
	color: #FFFFFF;
	font-size: x-small;
}
.auto-style12 {
	color: #FFFFFF;
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
        <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="100%" height="190">
          <tr>
            <td width="100%" height="190">
          
              <p align="center"><br>
              <font color="#FFFFFF" face="Verdana"><span lang="es"> 
              
              
              
<%

set oConn =  Server.CreateObject("ADODB.Connection")


oConn.Open "DRIVER={Microsoft Access Driver (*.mdb)}; DBQ="&Server.MapPath("../db/news.mdb")

Set RSArt = oConn.Execute("select * from txt order by id_nota desc") 

if not rsart.eof then


%>  
              
              
              
              </span><span lang="es" class="auto-style6">&gt;&gt;&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp; 
                  Administración de artículos publicados&nbsp;&nbsp;&nbsp; &lt;&lt;&lt;&lt;</span></font></p>
			  <p align="center"><span class="auto-style8">U</span><span class="auto-style2"><span class="auto-style4"><span class="auto-style7">na 
			  vez asignados los artículos puede generar una nueva Newsletter 
			  haciendo click </span>
			  <span class="auto-style5"><a href="activanews.ASP">
			  <span class="auto-style9">AQUI</span></a></span></span></span></p>
			  <p align="center" class="auto-style10"><span class="auto-style11">
			  A</span><span class="auto-style7"><span class="auto-style11">TENCION: 
			  Si desea generar una <strong>NOTA-RESUMEN,</strong> haga click
			  </span></span><span class="auto-style10">
			  <span class="auto-style9"><a href="notaresumen.ASP"><strong>
			  <span class="auto-style12">AQUI</span></strong></a></span></span></p>
                  
              <div align="center">
                <center>
                <table border="0" cellspacing="1" width="670" cellpadding="3">
                  <tr>
                    <td width="470" align="center" bgcolor="#A0BFBF">
                    <span lang="es"><b>
                    <font face="Georgia" size="2" color="#004848">Título</font></b></span><font color="#004848" face="Verdana"><b><span lang="es"><font face="Georgia" size="2"> </font></span></b></font>
                    </td>
                    <td align="center" width="64" bgcolor="#A0BFBF">
                    <span class="auto-style1">F</span><span class="auto-style2"><span class="auto-style1">uente</span></span><font color="#004848" face="Verdana"><b><span lang="es"><font face="Georgia" size="2"> </font></span></b></font>
                    </td>
                    <td align="center" width="64" bgcolor="#A0BFBF">
                    <span class="auto-style3">Categoría</span><font color="#004848" face="Verdana"><b><span lang="es"><font face="Georgia" size="2"> </font></span></b></font>
                    </td>
                    <td align="center" width="64" bgcolor="#A0BFBF">
                    <span class="auto-style3">Lecturas</span><font color="#004848" face="Verdana"><b><span lang="es"><font face="Georgia" size="2"> </font></span></b></font>
                    </td>
                    <td align="center" width="64" bgcolor="#A0BFBF">
                    <span class="auto-style3">Tipo</span><font color="#004848" face="Verdana"><b><span lang="es"><font face="Georgia" size="2"> </font></span></b></font>
                    </td>
                    <td align="center" colspan="2" width="126" bgcolor="#A0BFBF">
                    <span lang="es"><b>
                    <font face="Georgia" size="2" color="#004848">Acciones</font></b></span><font color="#004848" face="Verdana"><b><span lang="es"><font face="Georgia" size="2"> </font></span></b></font>
                    </td>
                  </tr>
  
 <%paso = 1
  do while not rsart.eof
  if paso = 1 then %>                   
                  
                  <tr>
                    <td width="470" align="center" bgcolor="#E0EBEB">
                    <font face="Georgia" size="2" color="#004848">
                    <span lang="es"><%=RSArt("titulo")%></span></font><font color="#004848" face="Verdana"><span lang="es"><font face="Georgia" size="2"> </font></span></font>
                    </td>
                    <td align="center" width="64" bgcolor="#E0EBEB">
                    <span lang="es">
                    <font face="Georgia" size="2" color="#004848"><%=RSArt("autor")%></font></span>
                    </td>
                    <td align="center" width="64" bgcolor="#E0EBEB">
                    <span lang="es">
                    <font face="Georgia" size="2" color="#004848"><%=RSArt("categoria")%></font></span>
                    </td>
                    <td align="center" width="64" bgcolor="#E0EBEB">
                    <span lang="es">
                    <font face="Georgia" size="2" color="#004848"><%=RSArt("lecturas")%></font></span>
                    </td>
                    <td align="center" width="64" bgcolor="#E0EBEB">
                    <span lang="es">
                    <font face="Georgia" size="2" color="#004848"><%=RSArt("tipo")%></font></span><font color="#004848" face="Verdana"><b><span lang="es"><font face="Georgia" size="2"> </font></span></b></font>
                    </td>
                    <td align="center" width="66" bgcolor="#E0EBEB">
                    <p align="center"><span lang="es">
                    <font face="Georgia" size="2" color="#004848">
                    <a href="borrarnota.asp?id_nota=<%=RSart("id_nota")%>">
                    <font color="#004848">Borrar</font></a></font></span></td>
                    <td align="center" width="57" bgcolor="#E0EBEB">
                    <span lang="es">
                    <font face="Georgia" size="2" color="#004848">
                    <a href="editarnota.asp?id_nota=<%=RSart("id_nota")%>">
                    <font color="#004848">Editar</font></a></font></span><font color="#FFFFFF" face="Verdana"><b><span lang="es"><font face="Georgia" size="2"> </font></span></b></font>
                    </td>
                  </tr>
    <%paso = 2
    else%>              
                  <tr>
                    <td width="470" align="center" bgcolor="#CBDCDC">
                    <span lang="es">
                    <font face="Georgia" size="2" color="#004848"><%=RSArt("titulo")%></font></span><font face="Georgia" size="2" color="#004848"><span lang="es"> 
                    </span></font></td>
                    <td align="center" width="64" bgcolor="#CBDCDC">
                    <span lang="es">
                    <font face="Georgia" size="2" color="#004848"><%=RSArt("autor")%></font></span>
                    </td>
                    <td align="center" width="64" bgcolor="#CBDCDC">
                    <span lang="es">
                    <font face="Georgia" size="2" color="#004848"><%=RSArt("categoria")%></font></span>
                    </td>
                    <td align="center" width="64" bgcolor="#CBDCDC">
                    <span lang="es">
                    <font face="Georgia" size="2" color="#004848"><%=RSArt("lecturas")%></font></span>
                    </td>
                    <td align="center" width="64" bgcolor="#CBDCDC">
                    <span lang="es">
                    <font face="Georgia" size="2" color="#004848"><%=RSArt("tipo")%></font></span><font color="#004848" face="Verdana"><b><span lang="es"><font face="Georgia" size="2"> </font></span></b></font>
                    </td>
                    <td align="center" width="66" bgcolor="#CBDCDC">
                    <span lang="es">
                    <font face="Georgia" size="2" color="#004848">
                    <a href="borrarnota.asp?id_nota=<%=RSart("id_nota")%>">
                    <font color="#004848">Borrar</font></a></font></span></td>
                    <td align="center" width="57" bgcolor="#CBDCDC">
                    <span lang="es">
                    <font face="Georgia" size="2" color="#004848">
                    <a href="editarnota.asp?id_nota=<%=RSart("id_nota")%>">
                    <font color="#004848">Editar</font></a></font></span><font color="#FFFFFF" face="Verdana"><b><span lang="es"><font face="Georgia" size="2"> </font></span></b></font>
                    </td>
                  </tr>
                  
    <%paso = 1
    end if
    
    
    
    
    rsart.movenext
loop%>                  
                </table>
                </center>
              </div>
  <%else%>           
            
            <p align="center" style="line-height: 150%"><b>
            <font color="#FFFFFF" face="Georgia">No existen escritos cargados aún</font></b></p>
                  

        
                  
         <%
         end if
         RsArt.close
set RsArt = nothing
oConn.Close
set oConn = nothing%>
              <p>&nbsp;</p>

      
              <div align="center">
                <center>
                <table border="2" cellspacing="5" width="250" bordercolorlight="#FFFFFF" bordercolor="#00A6A6" cellpadding="10">
                  <tr>
                    <td align="center" bgcolor="#004848"><span lang="es"><b>
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
       
            </td>
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