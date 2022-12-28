<%@LANGUAGE="VBSCRIPT" CODEPAGE="1254"%>
<%
Response.CacheControl = "no-cache"
Response.AddHeader "Pragma", "no-cache"
Response.Expires = -1
%>
<%
Function CheckCAPTCHA(valCAPTCHA)
	SessionCAPTCHA = Trim(Session("CAPTCHA"))
	Session("CAPTCHA") = vbNullString
	if Len(SessionCAPTCHA) < 1 then
        CheckCAPTCHA = False
        exit function
    end if
	if CStr(SessionCAPTCHA) = CStr(valCAPTCHA) then
	    CheckCAPTCHA = True
	else
	    CheckCAPTCHA = False
	end if
End Function
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-9" />
<META HTTP-EQUIV="Pragma" CONTENT="no-cache">
<META HTTP-EQUIV="Expires" CONTENT="-1">
<title>ASP Security Image Generator (CAPTCHA) v2.0</title>
</head>

<body>
<form id="f_example" name="f_example" method="post" action="example.asp">
  <table width="350" height="187" border="1" align="center">
    <tr>
      <td colspan="2" align="center"><h2>Distort=True, DistortEx=True, Noise=True</h2></td>
    </tr>
    <tr>
      <td width="152" height="32">CAPTCHA Image</td>
      <td width="182"><img src="aspcaptcha.asp" alt="This Is CAPTCHA Image" width="86" height="21" /></td>
    </tr>
<%
if Request.ServerVariables("REQUEST_METHOD") = "POST" then
	strCAPTCHA = Trim(Request.Form("strCAPTCHA"))
	if CheckCAPTCHA(strCAPTCHA) = true then
	
	response
	
	
		%>
    <tr>
      <td height="37" colspan="2" align="center"><b style="color:#00CC00">Verified (<%=strCAPTCHA%>)</b></td>
    </tr>		
		<%
	else
		%>
    <tr>
      <td height="37" colspan="2" align="center"><b style="color:#FF0000">Not Verified.<br />Please Retry.</b></td>
    </tr>
		<%
	end if 
end if
%>
    <tr>
      <td height="66">Write the characters in the image above</td>
      <td>
      <input name="strCAPTCHA" type="text" id="strCAPTCHA" maxlength="8" size="20" /></td>
    </tr>
    <tr>
      <td height="37" colspan="2" align="center"><input type="submit" name="Submit" value="Test Input" /></td>
    </tr>
    <tr>
      <td height="37" colspan="2" align="center"><a href="examplev20.zip">Download v2.0 Example</a></td>
    </tr>
  </table>
</form>
</body>
</html>