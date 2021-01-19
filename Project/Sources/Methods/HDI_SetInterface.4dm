//%attributes = {}
var $page : Integer

$page:=FORM Get current page:C276

OBJECT SET VISIBLE:C603(*; "G1@"; False:C215)
OBJECT SET VISIBLE:C603(*; "G2@"; False:C215)


OBJECT SET VISIBLE:C603(*; "btnTrace"; ($page>=2))


If ((Form:C1466.default=1) | (Form:C1466.star=1)) & ($page=2)
	
	Form:C1466.strict:=0
	Form:C1466.characterCode:=0
	Form:C1466.caseInsensitive:=0
	Form:C1466.diacriticInsensitive:=0
	Form:C1466.kanaInsensitive:=0
	Form:C1466.widthInsensitive:=0
	
	OBJECT SET ENABLED:C1123(*; "cb_@"; False:C215)
	
Else 
	
	// new options
	
	OBJECT SET ENABLED:C1123(*; "cb_@"; True:C214)
	
	
	
	If (Form:C1466.characterCode=1)
		
		OBJECT SET VISIBLE:C603(*; "G1@"; True:C214)
		
		OBJECT SET ENABLED:C1123(*; "cb_@"; False:C215)
		
		OBJECT SET ENABLED:C1123(*; "cb_strict@"; True:C214)
		OBJECT SET ENABLED:C1123(*; "cb_characterCode@"; True:C214)
		OBJECT SET ENABLED:C1123(*; "cb_caseInsensitive@"; True:C214)
		
		OBJECT SET ENABLED:C1123(*; "cb_wholeWord@"; True:C214)
		
		//Form.caseInsensitive:=0
		
		Form:C1466.diacriticInsensitive:=0
		Form:C1466.kanaInsensitive:=0
		Form:C1466.widthInsensitive:=0
		
		
	Else 
		
		OBJECT SET VISIBLE:C603(*; "G2@"; True:C214)
		OBJECT SET ENABLED:C1123(*; "cb_@"; True:C214)
		
		
		//If (Form.diacriticInsensitive=1)
		//OBJECT SET ENABLED(*; "cb_caseInsensitive@"; False)
		//Else 
		//OBJECT SET ENABLED(*; "cb_caseInsensitive@"; True)
		//End if 
		
		If (Form:C1466.kanaInsensitive=1)
			OBJECT SET ENABLED:C1123(*; "cb_widthInsensitive@"; False:C215)
		Else 
			OBJECT SET ENABLED:C1123(*; "cb_kanaInsensitive@"; True:C214)
			OBJECT SET ENABLED:C1123(*; "cb_widthInsensitive@"; True:C214)
		End if 
		
	End if 
	
	Form:C1466.strict:=0
	Case of 
		: (Form:C1466.characterCode=1)
		: (Form:C1466.caseInsensitive=1)
		: (Form:C1466.diacriticInsensitive=1)
		: (Form:C1466.kanaInsensitive=1)
		: (Form:C1466.widthInsensitive=1)
		Else 
			Form:C1466.strict:=1
			OBJECT SET VISIBLE:C603(*; "G1@"; False:C215)
			OBJECT SET VISIBLE:C603(*; "G2@"; False:C215)
	End case 
	
End if 

