<%@LANGUAGE="VBSCRIPT"%>
<%
'GNU General Public License (GPL)
'ASP Security Image Generator v2.0 - 09/April/2006
'Generate images with number to make a CAPTCHA test
'http://www.tipstricks.org
'Programmed By Emir Tüzül
'For correspondence or non support questions contact: emirtuzul@gmail.com
'#Release History#
'2.0 - 31/10/2005
'   *ABBYY FineReader 8.0 Professional could not recognized :)
'   *Added image noise feature
'   *Fixed and improved image distortion methods
'   *Improved SendHex() function
'1.0 - 31/October/2005 First Release
'   *ABBYY FineReader 8.0 Professional %99 recognized :(
'   *Simple image distortion methods
%>
<%
Dim newBitmap(21,87)
Dim vDistort(8)
LDistortNum = 0
Const LeftMargin = 4
Const BottomMargin = 4
Const CharWidth = 10
Const CharHeight = 13
'Begin editable consts
Const CodeLength = 8 'Secure Code Length (Max:8)
Const Distort = True 'Vertical Image Distortion True/False
Const DistortEx = True 'Horizontal Image Distortion True/False
Const Noise = True 'Image Noise True/False
Const TClr = "0000CC" 'Text Color #CC0000
Const BClr = "FFFFFF" 'Background Color #FFFFFF
Const NClr = "0000CC" 'Noise Color #CC0000 (Recommend TClr=NClr)
'End editable consts
Const BmpHeader = "424D8C1500000000000036000000280000005600000015000000010018000000000056150000120B0000120B00000000000000000000"
Const BmpEndLine = "0000"

Sub IHex(iRow,iColumn,strHex,iRepeat)
	for x=0 to (iRepeat-1)
		newBitmap(iRow,iColumn+x) = strHex
	next
End Sub

Function Random(valMin,valMax)
    Randomize(timer)
    RangeSize = ((valMax - valMin) + 1)
    Random = Int((RangeSize * Rnd()) + 1)
End Function

Sub AddNoise()
    for x=0 to 28
        ColX = (x*3) + Random(1,3)
        for y=0 to 6
            RowY = (y*3) + Random(1,3)
            IHex RowY,ColX,NClr,1
        next
    next
End Sub

Sub WriteCanvas(valChar,iNumPart,iRow,iColumn)
	select case iNumPart
		case 1
			select case valChar
				case 0
					IHex iRow,iColumn+2,TClr,4
				case 1
					IHex iRow,iColumn+3,TClr,2
				case 2
					IHex iRow,iColumn+2,TClr,4
				case 3
					IHex iRow,iColumn+2,TClr,3
				case 4
					IHex iRow,iColumn+5,TClr,2
				case 5
					IHex iRow,iColumn+1,TClr,6
				case 6
					IHex iRow,iColumn+2,TClr,4
				case 7
					IHex iRow,iColumn,TClr,8
				case 8
					IHex iRow,iColumn+2,TClr,4
				case 9
					IHex iRow,iColumn+2,TClr,4
			end select
		case 2
			select case valChar
				case 0
					IHex iRow,iColumn+1,TClr,6
				case 1
					IHex iRow,iColumn+2,TClr,3
				case 2
					IHex iRow,iColumn+1,TClr,6
				case 3
					IHex iRow,iColumn+1,TClr,6
				case 4
					IHex iRow,iColumn+4,TClr,3
				case 5
					IHex iRow,iColumn+1,TClr,6
				case 6
					IHex iRow,iColumn+1,TClr,6
				case 7
					IHex iRow,iColumn,TClr,8
				case 8
					IHex iRow,iColumn+1,TClr,6
				case 9
					IHex iRow,iColumn+1,TClr,6
			end select
		case 3
			select case valChar
				case 0
					IHex iRow,iColumn,TClr,3
					IHex iRow,iColumn+5,TClr,3
				case 1
					IHex iRow,iColumn+1,TClr,4
				case 2
					IHex iRow,iColumn,TClr,3
					IHex iRow,iColumn+5,TClr,3
				case 3
					IHex iRow,iColumn,TClr,2
					IHex iRow,iColumn+5,TClr,2
				case 4
					IHex iRow,iColumn+4,TClr,3
				case 5
					IHex iRow,iColumn+1,TClr,2
				case 6
					IHex iRow,iColumn+1,TClr,2
					IHex iRow,iColumn+6,TClr,2
				case 7
					IHex iRow,iColumn+6,TClr,1
				case 8
					IHex iRow,iColumn,TClr,2
					IHex iRow,iColumn+6,TClr,2
				case 9
					IHex iRow,iColumn,TClr,2
					IHex iRow,iColumn+6,TClr,2
			end select
		case 4
			select case valChar
				case 0
					IHex iRow,iColumn,TClr,2
					IHex iRow,iColumn+6,TClr,2
				case 1
					IHex iRow,iColumn,TClr,2
					IHex iRow,iColumn+3,TClr,2
				case 2
					IHex iRow,iColumn,TClr,2
					IHex iRow,iColumn+6,TClr,2
				case 3
					IHex iRow,iColumn+5,TClr,2
				case 4
					IHex iRow,iColumn+3,TClr,4
				case 5
					IHex iRow,iColumn,TClr,2
				case 6
					IHex iRow,iColumn,TClr,2
				case 7
					IHex iRow,iColumn+5,TClr,2
				case 8
					IHex iRow,iColumn,TClr,2
					IHex iRow,iColumn+6,TClr,2
				case 9
					IHex iRow,iColumn,TClr,2
					IHex iRow,iColumn+6,TClr,2
			end select
		case 5
			select case valChar
				case 0
					IHex iRow,iColumn,TClr,2
					IHex iRow,iColumn+6,TClr,2
				case 1
					IHex iRow,iColumn,TClr,1
					IHex iRow,iColumn+3,TClr,2
				case 2
					IHex iRow,iColumn+6,TClr,2
				case 3
					IHex iRow,iColumn+5,TClr,2
				case 4
					IHex iRow,iColumn+2,TClr,2
					IHex iRow,iColumn+5,TClr,2
				case 5
					IHex iRow,iColumn,TClr,2
					IHex iRow,iColumn+3,TClr,3
				case 6
					IHex iRow,iColumn,TClr,2
				case 7
					IHex iRow,iColumn+4,TClr,2
				case 8
					IHex iRow,iColumn,TClr,2
					IHex iRow,iColumn+6,TClr,2
				case 9
					IHex iRow,iColumn,TClr,2
					IHex iRow,iColumn+6,TClr,2
			end select
		case 6
			select case valChar
				case 0
					IHex iRow,iColumn,TClr,2
					IHex iRow,iColumn+6,TClr,2
				case 1
					IHex iRow,iColumn+3,TClr,2
				case 2
					IHex iRow,iColumn+6,TClr,2
				case 3
					IHex iRow,iColumn+3,TClr,3
				case 4
					IHex iRow,iColumn+2,TClr,2
					IHex iRow,iColumn+5,TClr,2
				case 5
					IHex iRow,iColumn,TClr,7
				case 6
					IHex iRow,iColumn,TClr,2
					IHex iRow,iColumn+3,TClr,3
				case 7
					IHex iRow,iColumn+4,TClr,2
				case 8
					IHex iRow,iColumn+1,TClr,6
				case 9
					IHex iRow,iColumn,TClr,2
					IHex iRow,iColumn+5,TClr,3
			end select
		case 7
			select case valChar
				case 0
					IHex iRow,iColumn,TClr,2
					IHex iRow,iColumn+6,TClr,2
				case 1
					IHex iRow,iColumn+3,TClr,2
				case 2
					IHex iRow,iColumn+5,TClr,2
				case 3
					IHex iRow,iColumn+3,TClr,4
				case 4
					IHex iRow,iColumn+1,TClr,2
					IHex iRow,iColumn+5,TClr,2
				case 5
					IHex iRow,iColumn,TClr,2
					IHex iRow,iColumn+6,TClr,2
				case 6
					IHex iRow,iColumn,TClr,7
				case 7
					IHex iRow,iColumn+3,TClr,2
				case 8
					IHex iRow,iColumn+1,TClr,6
				case 9
					IHex iRow,iColumn+1,TClr,7
			end select
		case 8
			select case valChar
				case 0
					IHex iRow,iColumn,TClr,2
					IHex iRow,iColumn+6,TClr,2
				case 1
					IHex iRow,iColumn+3,TClr,2
				case 2
					IHex iRow,iColumn+4,TClr,2
				case 3
					IHex iRow,iColumn+6,TClr,2
				case 4
					IHex iRow,iColumn,TClr,2
					IHex iRow,iColumn+5,TClr,2
				case 5
					IHex iRow,iColumn+6,TClr,2
				case 6
					IHex iRow,iColumn,TClr,3
					IHex iRow,iColumn+6,TClr,2
				case 7
					IHex iRow,iColumn+3,TClr,2
				case 8
					IHex iRow,iColumn,TClr,2
					IHex iRow,iColumn+6,TClr,2
				case 9
					IHex iRow,iColumn+2,TClr,3
					IHex iRow,iColumn+6,TClr,2
			end select
		case 9
			select case valChar
				case 0
					IHex iRow,iColumn,TClr,2
					IHex iRow,iColumn+6,TClr,2
				case 1
					IHex iRow,iColumn+3,TClr,2
				case 2
					IHex iRow,iColumn+3,TClr,2
				case 3
					IHex iRow,iColumn+6,TClr,2
				case 4
					IHex iRow,iColumn,TClr,9
				case 5
					IHex iRow,iColumn+6,TClr,2
				case 6
					IHex iRow,iColumn,TClr,2
					IHex iRow,iColumn+6,TClr,2
				case 7
					IHex iRow,iColumn+3,TClr,2
				case 8
					IHex iRow,iColumn,TClr,2
					IHex iRow,iColumn+6,TClr,2
				case 9
					IHex iRow,iColumn+6,TClr,2
			end select
		case 10
			select case valChar
				case 0
					IHex iRow,iColumn,TClr,2
					IHex iRow,iColumn+6,TClr,2
				case 1
					IHex iRow,iColumn+3,TClr,2
				case 2
					IHex iRow,iColumn+2,TClr,2
				case 3
					IHex iRow,iColumn,TClr,2
					IHex iRow,iColumn+6,TClr,2
				case 4
					IHex iRow,iColumn,TClr,9
				case 5
					IHex iRow,iColumn,TClr,2
					IHex iRow,iColumn+6,TClr,2
				case 6
					IHex iRow,iColumn,TClr,2
					IHex iRow,iColumn+6,TClr,2
				case 7
					IHex iRow,iColumn+3,TClr,2
				case 8
					IHex iRow,iColumn,TClr,2
					IHex iRow,iColumn+6,TClr,2
				case 9
					IHex iRow,iColumn+6,TClr,2
			end select
		case 11
			select case valChar
				case 0
					IHex iRow,iColumn,TClr,3
					IHex iRow,iColumn+5,TClr,3
				case 1
					IHex iRow,iColumn+3,TClr,2
				case 2
					IHex iRow,iColumn+1,TClr,2
				case 3
					IHex iRow,iColumn,TClr,2
					IHex iRow,iColumn+6,TClr,2
				case 4
					IHex iRow,iColumn+5,TClr,2
				case 5
					IHex iRow,iColumn,TClr,2
					IHex iRow,iColumn+6,TClr,2
				case 6
					IHex iRow,iColumn+1,TClr,2
					IHex iRow,iColumn+6,TClr,2
				case 7
					IHex iRow,iColumn+2,TClr,2
				case 8
					IHex iRow,iColumn,TClr,2
					IHex iRow,iColumn+6,TClr,2
				case 9
					IHex iRow,iColumn,TClr,2
					IHex iRow,iColumn+5,TClr,2
			end select
		case 12
			select case valChar
				case 0
					IHex iRow,iColumn+1,TClr,6
				case 1
					IHex iRow,iColumn+3,TClr,2
				case 2
					IHex iRow,iColumn,TClr,8
				case 3
					IHex iRow,iColumn+1,TClr,6
				case 4
					IHex iRow,iColumn+5,TClr,2
				case 5
					IHex iRow,iColumn+1,TClr,6
				case 6
					IHex iRow,iColumn+1,TClr,6
				case 7
					IHex iRow,iColumn+2,TClr,2
				case 8
					IHex iRow,iColumn+1,TClr,6
				case 9
					IHex iRow,iColumn+1,TClr,6
			end select
		case 13
			select case valChar
				case 0
					IHex iRow,iColumn+2,TClr,4
				case 1
					IHex iRow,iColumn+3,TClr,2
				case 2
					IHex iRow,iColumn,TClr,8
				case 3
					IHex iRow,iColumn+2,TClr,4
				case 4
					IHex iRow,iColumn+5,TClr,2
				case 5
					IHex iRow,iColumn+2,TClr,4
				case 6
					IHex iRow,iColumn+2,TClr,4
				case 7
					IHex iRow,iColumn+2,TClr,2
				case 8
					IHex iRow,iColumn+2,TClr,4
				case 9
					IHex iRow,iColumn+2,TClr,4
			end select
	end select
End Sub

Function LeftTracking(iNumber)
	select case iNumber
		case 1
			LeftTracking = 2
		case 4
			LeftTracking = 0
		case else
			LeftTracking = 1
	end select
End Function

'http://support.microsoft.com/default.aspx?scid=kb;en-us;320375
Function CreateGUID(tmpLength)
  Randomize Timer
  Dim tmpCounter,tmpGUID
  Const strValid = "01234567890"
  For tmpCounter = 1 To tmpLength
    tmpGUID = tmpGUID & Mid(strValid, Int(Rnd(1) * Len(strValid)) + 1, 1)
  Next
  CreateGUID = tmpGUID
End Function

Function GetStartColumn(iNumber,iLine)
	if DistortEx = true then
		DistortNum = (Random(1,3) - 1)
		if DistortNum = 0 then
		    DistortNum = LDistortNum
		end if
		LDistortNum = DistortNum
	else
		DistortNum = 0
	end if
	GetStartColumn =  LeftMargin + ((CharWidth * (iLine-1)) + LeftTracking(iNumber)) + DistortNum
End Function

Sub SendHex(valHex)
	for i=1 to Len(valHex)
		strHex = "&H" & Mid(valHex,i,2)
		Response.BinaryWrite ChrB(CInt(strHex))
		i=i+1
	next
End Sub

Sub SendClient()
	Response.Buffer = True
	Response.ContentType = "image/bmp"
	Response.CacheControl = "no-cache"
	Response.AddHeader "Pragma", "no-cache"
	Response.Expires = -1

    if Noise = true then
        AddNoise()
    end if

	SendHex(BmpHeader)
	for y=1 to 21
		for x=1 to 86
			tmpHex = newBitmap(y,x)
			if tmpHex = vbNullString then
				SendHex(BClr)
			else
				SendHex(tmpHex)
			end if

			if x=86 then
				SendHex(BmpEndLine)
			end if
		next
	next
	SendHex(BmpEndLine)
	Response.Flush
End Sub
%>

<%
secureCode = CreateGUID(CodeLength)
Session("CAPTCHA") = secureCode

for i=1 to CharHeight
	rowNum = (21 - (BottomMargin + (i-1)))
	for j=1 to Len(secureCode)
		if (Distort = true) and (i=1) then
			vDistort(j) = (Random(1,6) - 3)
		elseif (i=1) then
			vDistort(j) = 0
		end if
		tmpNum = CInt(Mid(secureCode,j,1))
		clmNum = GetStartColumn(tmpNum,j)
		WriteCanvas tmpNum,i,rowNum+vDistort(j),clmNum
	next
next

SendClient()
%>