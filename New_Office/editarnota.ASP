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
.auto-style2 {
	text-align: center;
}
.auto-style3 {
	text-align: right;
	color: #242FAC;
	}
.auto-style7 {
	color: #242FAC;
}
.auto-style9 {
	font-family: Verdana;
	font-size: x-small;
	color: #242FAC;
}
.auto-style11 {
	font-family: Verdana;
	font-size: x-small;
}
.auto-style13 {
	font-family: Verdana;
	font-size: x-small;
	color: #FFFFFF;
}
.auto-style14 {
	color: #FFFFFF;
}
.auto-style16 {
	border-left: 1px solid #FFFFFF;
	border-right-style: solid;
	border-right-width: 1px;
	border-top: 1px solid #FFFFFF;
	border-bottom-style: solid;
	border-bottom-width: 1px;
}
.auto-style17 {
	color: #FFFFFF;
	font-size: x-small;
}
.auto-style18 {
	font-size: medium;
	font-weight: bold;
	font-family: Arial, Helvetica, sans-serif;
	text-decoration: underline;
}
.auto-style19 {
	text-align: center;
	color: #FFFFFF;
	font-size: x-small;
	font-family: Arial, Helvetica, sans-serif;
	text-decoration: underline;
}
.auto-style20 {
	color: #FFFFFF;
	text-decoration: underline;
	font-family: Arial, Helvetica, sans-serif;
	font-size: x-small;
}
.auto-style21 {
	border-left: 0 solid #FFFFFF;
	border-right-style: solid;
	border-right-width: 0;
	border-top: 0 solid #FFFFFF;
	border-bottom-style: solid;
	border-bottom-width: 0;
}
.auto-style22 {
	border-width: 0;
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
            <td height="190" style="width: 97%">
          
              <p align="center"><br>
              <font color="#FFFFFF" face="Verdana"><span lang="es"> 
              
              
              
<%

set oConn =  Server.CreateObject("ADODB.Connection")


oConn.Open "DRIVER={Microsoft Access Driver (*.mdb)}; DBQ="&Server.MapPath("../db/news.mdb")

Set RSArt = oConn.Execute("select * from txt where id_nota = " & request("id_nota") & "") 

if not rsart.eof then


%>  
              
              
              
              </span><span lang="es" class="auto-style18">&gt;&gt;&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp; 
                  Edición de nota ya publicada&nbsp;&nbsp;&nbsp; &lt;&lt;&lt;&lt;</span></font></p>
			  <p align="center" class="auto-style20">Ventanas de cambio de 
			  Categoría o tipo</p>
			  <table style="width: 766" cellpadding="0" cellspacing="0" class="auto-style22">
				  <tr>
					  <td style="width: 415" class="auto-style3" valign="top">
					  <form method="POST" action="cambiacateg.asp">
					  <span class="auto-style9">&nbsp;&nbsp;&nbsp; </span>
					  <span class="auto-style13"><strong>Categoría</strong></span><span lang="es" class="auto-style17"><font face="Verdana"><strong> 
					  :</strong></font></span></td>
					  <td style="width: 59%" class="auto-style16">
					  
					  <form method="post" action="cambiacateg.asp">
                      <input type="text" name="categoria1" size="72" value='<%=RSArt("categoria")%>' style="width: 168px" class="auto-style7"><span class="auto-style7">&nbsp;&nbsp; 
						  </span> <span class="auto-style2"><strong> 
					  <span class="auto-style7"><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span> 
					  <span class="auto-style14">Cambiar a categoría &gt;</span><span class="auto-style7">&nbsp; </span> 
                      <select size="1" name="nuevacategoria" class="auto-style7">
                      <option selected="">Elija una nueva</option>
                      <%Set RS = oConn.Execute("select * from categorias") 

					if not RS.eof then
					do while not rs.eof%>

                      <option value="<%=RS("categoria")%>"><%=RS("categoria")%></option>
                      <%rs.movenext
                       loop
                      else
                      end if
                      Rs.close
						set Rs = nothing%></select>
						<p align="center">
                <input type="submit" value="Cambiar categoría ahora" name="B1" class="auto-style7"></p>
                <input type="hidden" name="id_nota" value='<%=RSArt("id_nota")%>' class="auto-style7">
              			<input name="nuevacategoria" type="hidden" value="<%=nuevacategoria%>" class="auto-style7">
              </form>
</td>
				  </tr>
				  <tr>
					  <td style="width: 415px" class="auto-style3">
					  &nbsp;</td>
					  <td style="width: 59%">
					  
					  &nbsp;</td>
				  </tr>
				  <tr>
					  <td style="width: 415" class="auto-style3" valign="top">
					  <form method="POST" action="cambiatipo.asp">
					  <span class="auto-style9">&nbsp;&nbsp;&nbsp; </span>
					  <span class="auto-style13"><strong>Tipo :</strong></span><span lang="es"><font face="Verdana" size="2" color="#FFFFFF"> 
					  	<span class="auto-style11"><br>( Para definir posicion en 
						  newssletter )</span></font></span></td>
					  <td style="width: 59%" class="auto-style16">
					  
					  <form method="post" action="cambiatipo.asp">
                      <input type="text" name="tipo1" size="72" value='<%=RSArt("tipo")%>' style="width: 168px" class="auto-style7"><span class="auto-style7">&nbsp;&nbsp; 
						  </span> <span class="auto-style2"><strong> 
					  <span class="auto-style7"><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="auto-style14"> 
						  Cambiar a tipo &gt;</span><span class="auto-style7">&nbsp; </span>
                      <select size="1" name="nuevotipo" class="auto-style7">
                      <option selected="">Elija uno nuevo</option>
                      <option>Ninguno</option>
                      <%Set RS = oConn.Execute("select * from tipos") 

					if not RS.eof then
					do while not rs.eof%>

                      <option value="<%=RS("tipo")%>"><%=RS("tipo")%></option>
                      <%rs.movenext
                       loop
                      else
                      end if
                      Rs.close
						set Rs = nothing%></select>
						<p align="center">
                <input type="submit" value="Cambiar Tipo ahora" name="B1" class="auto-style7"></p>
                <input type="hidden" name="id_nota" value='<%=RSArt("id_nota")%>' class="auto-style7">
              			<input name="nuevotipo" type="hidden" value="<%=nuevotipo%>" class="auto-style7">
              </form>
</td>
				  </tr>
			  </table>
                  

                  
              <p align="center"><b>


 </span></font></b><span lang="es"></p>
 
 <td align="right" height="19" style="width: 183px">
					  &nbsp;</td>
                      <td width="519" height="19"><span lang="es">
                      </td>
                  
              <form method="POST" action="notacambios.asp">
                <div align="center">
                  <center>
                  <table border="0" cellspacing="7" width="789" cellpadding="7" height="552">
                    <tr>
                      <td class="auto-style19" colspan="3">
					  _____________________________________________________________<br>
					  <br>Ventana de edición de información</td>
                    </tr>
                    <tr>
                      <td align="right" height="22" width="164" class="auto-style16"><span lang="es">
                      <font face="Verdana" size="2" color="#FFFFFF">Título :</font></span></td>
                      <td width="519" height="22" class="auto-style16">
                      <input type="text" name="titulo" size="72" value="<%=RSArt("titulo")%>"></td>
                      <td width="36" height="22">&nbsp;</td>
                    </tr>
                      <tr>
						  <span lang="es">
                      <td align="right" height="19" width="164" class="auto-style16">
					  <span class="auto-style13">Fuente</span><span lang="es"><font face="Verdana" size="2" color="#FFFFFF"> :</font></span></td>
                      <td width="519" height="19" class="auto-style16"><span lang="es">
                      <select size="1" name="autor">
                      <option selected value="<%=RSArt("autor")%>"><%=RSArt("autor")%>
                      </option>
                      <option value="AFIP">AFIP</option>
                      <option value="Boletín Oficial">Boletín Oficial</option>
					  <option value="BCRA">BCRA</option>
					  <option value="INV">INV</option>
                      <option value="Tarifar">Tarifar</option>
                      <option value="BAE">BAE</option>
                      <option value="InfoBAE Profesional">InfoBAE Profesional
                      </option>
                      <option value="TELAM">TELAM</option>
                      <option value="CDA-Argentina">CDA-Argentina</option>
                      <option value="SENASA">SENASA</option>
                      <option value="LA NACION">LA NACION</option>
                      <option value="CRONISTA">CRONISTA</option>
                      <option value="CERA">CERA</option>
                      <option value="EXPORTAR">EXPORTAR.ORG</option>
                      <option value="CAMBRAS">CAMBRAS</option>
                      <option value="BAIREXPORT">BAIREXPORT</option>
                      <option value="Otro">Otro</option>
                      <option value="PCRAM">PCRAM</option>
                      </select></span></td>
                      <td width="36" height="19">&nbsp;</td>
                  
                      </span>           
 					 </tr>
               
                    <tr>
                      <td align="right" height="36" width="164" class="auto-style16" valign="top">
					  <span class="auto-style13">Comentario inicial</span><span lang="es"><font face="Verdana" size="2" color="#FFFFFF"> :</font></span></td>
                      <td width="519" height="36" class="auto-style16">
                      <textarea rows="3" name="resumen" cols="61"><%=RSArt("resumen")%></textarea></td>
                      <td width="36" height="36">&nbsp;</td>
                    </tr>
                   
                    <tr>
                      <td align="right" height="1" width="164" class="auto-style16"><span lang="es">
                      <font face="Verdana" size="2" color="#FFFFFF">Texto de la 
                      nota :</font></span></td>
                      <td width="519" rowspan="4" class="auto-style16">
                      <textarea id="elm1" rows="30" name="texto" cols="61"><%=RSArt("texto")%></textarea></td>
                      <td width="36" height="1"></td>
                    </tr>
                    <tr>
                      <td align="right" height="105" width="164" class="auto-style21">
					  &nbsp;</td>
                      <td width="36" height="105">&nbsp;</td>
                    </tr>
                    <tr>
                      <td align="right" height="105" width="164" class="auto-style21">
					  &nbsp;</td>
                      <td width="36" height="105">&nbsp;</td>
                    </tr>
                    <tr>
                      <td align="right" width="164" style="height: 108px"></td>
                      <td width="36" style="height: 108px"></td>
                    </tr>
                    </table>
                  </center>
                </div>
                <p align="center">
                <input type="submit" value="Cargar cambios de información del artículo" name="B1"></p>
                <input type="hidden" name="id_nota" value="<%=RSArt("id_nota")%>">
              </form>
                  
                      </span>           
 <%else%>           
            <p align="center" style="line-height: 150%"><b>
            <font color="#FFFFFF" face="Georgia">No existe <span lang="es">esa 
            nota ...</span></font></b></p>
          <%
         end if
         RsArt.close
set RsArt = nothing
oConn.Close
set oConn = nothing%>                 
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
              <font color="#FFFFFF" face="Verdana"><span lang="es">
                  
 </span> </font></p>
       
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