<%@LANGUAGE="VBSCRIPT" CODEPAGE="1254"%>

<html>

<head>
<meta http-equiv="Content-Language" content="es">
<meta name="GENERATOR" content="Microsoft FrontPage 12.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>:: Estudio Aduanero Dávila :: Modulo de Administración Web ::</title>
<!-- TinyMCE -->
<script type="text/javascript" src="../../tiny_mce/tiny_mce.js"></script>
<script type="text/javascript">
	tinyMCE.init({
		// General options
		mode : "textareas",
		theme : "advanced",
		plugins : "safari,pagebreak,style,layer,table,save,advhr,advimage,advlink,emotions,iespell,insertdatetime,preview,media,searchreplace,print,contextmenu,paste,directionality,fullscreen,noneditable,visualchars,nonbreaking,xhtmlxtras,template,inlinepopups",

		// Theme options
		theme_advanced_buttons1 : "newdocument,|,bold,italic,underline,strikethrough,|,justifyleft,justifycenter,justifyright,justifyfull,|,formatselect,fontselect,fontsizeselect",
		theme_advanced_buttons2 : "cut,copy,paste,pastetext,pasteword,|,search,replace,|,bullist,numlist,|,outdent,indent,blockquote",
		theme_advanced_buttons3 : "undo,redo,|,link,unlink,anchor,image,cleanup,help,code,|,insertdate,inserttime,preview,|,forecolor,backcolor",
		theme_advanced_buttons4 : "tablecontrols,|,hr,removeformat,visualaid,|,sub,sup",
		theme_advanced_buttons5 : "charmap,emotions,iespell,media,advhr,|,print,|,ltr,rtl,|,fullscreen",
		theme_advanced_buttons6 : "insertlayer,moveforward,movebackward,absolute,|,styleprops,|,cite,abbr,acronym,del,ins,attribs,|,visualchars,nonbreaking,template,pagebreak",
		theme_advanced_toolbar_location : "top",
		theme_advanced_toolbar_align : "center",
		theme_advanced_statusbar_location : "bottom",
		theme_advanced_resizing : true,

		// Example word content CSS (should be your site CSS) this one removes paragraph margins
		content_css : "css/word.css",

		// Drop lists for link/image/media/template dialogs
		template_external_list_url : "lists/template_list.js",
		external_link_list_url : "lists/link_list.js",
		external_image_list_url : "lists/image_list.js",
		media_external_list_url : "lists/media_list.js",

		// Replace values for the template plugin
		template_replace_values : {
			username : "Some User",
			staffid : "991234"
		}
	});
</script>
<!-- /TinyMCE -->


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
.auto-style6 {
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
        <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="100%" height="178">
          <tr>
            <td width="100%" height="178" class="auto-style4">
          
              <p align="center"><br>
              <font color="#FFFFFF" face="Verdana"><b><span lang="es"><font face="Georgia" size="2">&gt;&gt;&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp;NOTA-RESUMEN 
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

			  
			  <span lang="es"><span lang="es"></p>
                  
              <form method="post" action="carganotaresumen.asp">
                <div align="center">
                  <center>
                  <table border="0" cellspacing="7" width="789" cellpadding="7" height="552">
                    <tr>
                      <td align="right" height="22" width="164"><span lang="es">
                      <font face="Verdana" size="2" color="#FFFFFF">Título :</font></span></td>
                      <td width="519" height="22">
                      <input type="text" name="titulo" size="72" value="Recordatorio de novedades..."></td>
                      <td width="36" height="22">&nbsp;</td>
                    </tr>
                      <tr>
						  <span lang="es">
                      <td align="right" height="19" width="164">
					  <span class="auto-style6">Fuente</span><span lang="es"><font face="Verdana" size="2" color="#FFFFFF"> :</font></span></td>
                      <td width="519" height="19">
					  <select size="1" name="autor">
                      <option value="Davila">Davila</option>
                      </select></td>
                      <td width="36" height="19">&nbsp;</td>
                      </span>
					  </tr>
                      <tr>
						  <span lang="es">
                      <td align="right" height="19" width="164">
					  <span class="auto-style6">Categoría</span><span lang="es"><font face="Verdana" size="2" color="#FFFFFF"> :</font></span></td>
                      
<%

set oConn =  Server.CreateObject("ADODB.Connection")


oConn.Open "DRIVER={Microsoft Access Driver (*.mdb)}; DBQ="&Server.MapPath("../db/news.mdb")

'Set RSArt = oConn.Execute("select * from categorias") 

'if not rsart.eof then


%>   
                      
                      <td width="519" height="19"> <span class="auto-style2"><strong> 
                      <select size="1" name="categoria" class="auto-style7" style="width: 143px">
                      
                      <option value="General">General</option>
					  </select></strong><span class="auto-style8"> 
					  </span></td>
                      <td width="36" height="19">&nbsp;</td>
                      </span>
					  </tr>
                    <tr>
                      <td align="right" height="19" width="164">
					  <span class="auto-style6">Tipo</span><span lang="es"><font face="Verdana" size="2" color="#FFFFFF"> :</font></span></td>
                      
 

                      
                      
                      <td width="519" height="19"> <span class="auto-style2"><strong> 
                      <select size="1" name="nuevotipo" class="auto-style7">
                      <option selected="" value="Principal">Principal</option>
					  </select> </strong>
					    </td>
                      <td width="36" height="19">&nbsp;</td>
                    </tr>
                    
           <%
         'end if
         'RsArt.close
'set RsArt = nothing
oConn.Close
set oConn = nothing%>              
                    
                    
                    
                 <tr>
                      <td align="right" width="164" style="height: 84" valign="top">
					  <span class="auto-style6">Comentario inicial</span><span lang="es"><font face="Verdana" size="2" color="#FFFFFF"> :</font></span></td>
                      <td width="519" style="height: 84px">
                      <textarea name="resumen" style="width: 488px; height: 43px">Les recordamos las principales Resoluciones y/o novedades recientemente publicadas.</textarea></td>
                      <td width="36" style="height: 84px"></td>
                    </tr>
                   
                    <tr>
                      <td align="right" height="1" width="164"><span lang="es">
                      <font face="Verdana" size="2" color="#FFFFFF">Texto de la 
                      nota :</font></span></td>
                      <td width="519" rowspan="4" height="338">
                      <textarea id="elm1" rows="30" name="textook" cols="61"><%=texto%></textarea></td>
                      <td width="36" height="1"></td>
                    </tr>
                    <tr>
                      <td align="right" height="105" width="164">&nbsp;</td>
                      <td width="36" height="105">&nbsp;</td>
                    </tr>
                    <tr>
                      <td align="right" height="105" width="164">&nbsp;</td>
                      <td width="36" height="105">&nbsp;</td>
                    </tr>
                    <tr>
                      <td align="right" height="108" width="164">&nbsp;</td>
                      <td width="36" height="108">&nbsp;</td>
                    </tr>
                      </span></span>
                  </table>
                  </center>
                </div>
                <p align="center">
                <input type="submit" value="Cargar nueva nota" name="B1"></p>
              </form>

			  
			  
			  
			  
			  
			  <span lang="es">
                  
              <form method="POST" action="notaresumen.ASP">
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