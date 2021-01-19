var $i; $n; $p; $l; $length; $page; $result; $option; $lengthFound : Integer
var $path : Text
var $sampleText : Text

Case of 
	: (Form event code:C388=On Load:K2:1)
		
		Form:C1466.default:=1
		Form:C1466.star:=0
		
		Form:C1466.strict:=0
		Form:C1466.characterCode:=0
		Form:C1466.caseInsensitive:=0
		Form:C1466.diacriticInsensitive:=0
		Form:C1466.kanaInsensitive:=0
		Form:C1466.widthInsensitive:=0
		
		Form:C1466.wholeWord:=0
		
		
		Form:C1466.sampleText:=""
		
		Form:C1466.trace:=False:C215
		
		OBJECT SET VISIBLE:C603(*; "@"; False:C215)
		OBJECT SET VISIBLE:C603(*; "page1_@"; True:C214)
		OBJECT SET VISIBLE:C603(*; "page0_tabs"; True:C214)
		//----------------------------------------   PAGE 2
		
		ARRAY TEXT:C222(t_find; 0)
		APPEND TO ARRAY:C911(t_find; "Flexibility")
		APPEND TO ARRAY:C911(t_find; "flexibility")
		APPEND TO ARRAY:C911(t_find; "(-")
		APPEND TO ARRAY:C911(t_find; "Flexibilité")
		APPEND TO ARRAY:C911(t_find; "flexibilite")
		APPEND TO ARRAY:C911(t_find; "Flexibilite")
		APPEND TO ARRAY:C911(t_find; "flexibilité")
		APPEND TO ARRAY:C911(t_find; "(-")
		APPEND TO ARRAY:C911(t_find; "Flex")
		APPEND TO ARRAY:C911(t_find; "flex")
		APPEND TO ARRAY:C911(t_find; "(-")
		APPEND TO ARRAY:C911(t_find; "connaître")
		APPEND TO ARRAY:C911(t_find; "Connaître")
		APPEND TO ARRAY:C911(t_find; "connaitre")
		APPEND TO ARRAY:C911(t_find; "Connaïtre")
		APPEND TO ARRAY:C911(t_find; "(-")
		APPEND TO ARRAY:C911(t_find; "Laetitia")
		APPEND TO ARRAY:C911(t_find; "Lætitia")
		APPEND TO ARRAY:C911(t_find; "laetitia")
		APPEND TO ARRAY:C911(t_find; "lætitia")
		APPEND TO ARRAY:C911(t_find; "(-")
		APPEND TO ARRAY:C911(t_find; "OEufs")
		APPEND TO ARRAY:C911(t_find; "Œufs")
		APPEND TO ARRAY:C911(t_find; "oeufs")
		APPEND TO ARRAY:C911(t_find; "œufs")
		APPEND TO ARRAY:C911(t_find; "(-")
		
		
		APPEND TO ARRAY:C911(t_find; "語")
		APPEND TO ARRAY:C911(t_find; "識")
		APPEND TO ARRAY:C911(t_find; "グラミ")
		
		APPEND TO ARRAY:C911(t_find; "(-")
		APPEND TO ARRAY:C911(t_find; "programação")
		APPEND TO ARRAY:C911(t_find; "usuários")
		APPEND TO ARRAY:C911(t_find; "informação")
		
		APPEND TO ARRAY:C911(t_find; "(-")
		APPEND TO ARRAY:C911(t_find; "Straße")
		APPEND TO ARRAY:C911(t_find; "Strasse")
		APPEND TO ARRAY:C911(t_find; "straße")
		APPEND TO ARRAY:C911(t_find; "strasse")
		
		t_find{0}:=t_find{1}
		Form:C1466.find:=t_find{0}
		
		//t_find:=1
		
		//----------------------------------------  PAGE 3
		ARRAY TEXT:C222(t1; 0)
		ARRAY TEXT:C222(t2; 0)
		ARRAY TEXT:C222(tresult; 0)
		
		
		APPEND TO ARRAY:C911(t1; "A")
		APPEND TO ARRAY:C911(t2; "a")
		APPEND TO ARRAY:C911(tresult; "")
		
		//APPEND TO ARRAY(t1; "y")
		//APPEND TO ARRAY(t2; "p")
		//APPEND TO ARRAY(tresult; "")
		
		//APPEND TO ARRAY(t1; "v")
		//APPEND TO ARRAY(t2; "w")
		//APPEND TO ARRAY(tresult; "")
		
		APPEND TO ARRAY:C911(t1; "A Three")
		APPEND TO ARRAY:C911(t2; "a three")
		APPEND TO ARRAY:C911(tresult; "")
		
		APPEND TO ARRAY:C911(t1; "Flexibilité")
		APPEND TO ARRAY:C911(t2; "Flexibilité")
		APPEND TO ARRAY:C911(tresult; "")
		
		APPEND TO ARRAY:C911(t1; "Flexibilité")
		APPEND TO ARRAY:C911(t2; "Flexibilite")
		APPEND TO ARRAY:C911(tresult; "")
		
		APPEND TO ARRAY:C911(t1; "Flexibilité")
		APPEND TO ARRAY:C911(t2; "Flexibilite")
		APPEND TO ARRAY:C911(tresult; "")
		
		APPEND TO ARRAY:C911(t1; "Flexibilité")
		APPEND TO ARRAY:C911(t2; "flexibilité")
		APPEND TO ARRAY:C911(tresult; "")
		
		APPEND TO ARRAY:C911(t1; "Flexibilité")
		APPEND TO ARRAY:C911(t2; "flexibilite")
		APPEND TO ARRAY:C911(tresult; "")
		
		APPEND TO ARRAY:C911(t1; "Attaché-case")
		APPEND TO ARRAY:C911(t2; "Attache-case")
		APPEND TO ARRAY:C911(tresult; "")
		
		APPEND TO ARRAY:C911(t1; "Pâques et Noël")
		APPEND TO ARRAY:C911(t2; "Paques et Noel")
		APPEND TO ARRAY:C911(tresult; "")
		
		APPEND TO ARRAY:C911(t1; "Colimaçon")
		APPEND TO ARRAY:C911(t2; "Colimacon")
		APPEND TO ARRAY:C911(tresult; "")
		
		
		APPEND TO ARRAY:C911(t1; "OEUF")
		APPEND TO ARRAY:C911(t2; "œuf")
		APPEND TO ARRAY:C911(tresult; "")
		
		APPEND TO ARRAY:C911(t1; "oeuf")
		APPEND TO ARRAY:C911(t2; "œuf")
		APPEND TO ARRAY:C911(tresult; "")
		
		APPEND TO ARRAY:C911(t1; "Strasse")
		APPEND TO ARRAY:C911(t2; "Straße")
		APPEND TO ARRAY:C911(tresult; "")
		
		APPEND TO ARRAY:C911(t1; "<a>test</a>")
		APPEND TO ARRAY:C911(t2; "<A>test</A>")
		APPEND TO ARRAY:C911(tresult; "")
		
		
		
		//----------------------------------------  PAGE 4
		
		Form:C1466.sample:=New collection:C1472("Alpha"; "Charlie"; "alpha"; "bravo"; "Bravo"; "charlie")
		
		//SET TIMER(-1)
		
	: (Form event code:C388=On Page Change:K2:54)
		
		If (FORM Get current page:C276=1)
			OBJECT SET VISIBLE:C603(*; "@"; False:C215)
			OBJECT SET VISIBLE:C603(*; "page1_@"; True:C214)
		Else 
			OBJECT SET VISIBLE:C603(*; "@"; True:C214)
			OBJECT SET VISIBLE:C603(*; "page1_@"; False:C215)
			SET TIMER:C645(-1)
		End if 
		
		OBJECT SET VISIBLE:C603(*; "page0_tabs"; True:C214)
		OBJECT SET VISIBLE:C603(*; "footer@"; False:C215)
		
		Case of 
			: (FORM Get current page:C276=2)
				$path:=Get 4D folder:C485(Current resources folder:K5:16)+"sample.txt"
				Form:C1466.sampleText:=Document to text:C1236($path; "UTF-8")
				
				OBJECT SET TITLE:C194(*; "strictText"; "Strict search")
				OBJECT SET TITLE:C194(*; "OptionsBox"; "Search options")
				OBJECT SET VISIBLE:C603(*; "cb_wholeWord"; True:C214)
				
			: (FORM Get current page:C276=3)
				
				OBJECT SET TITLE:C194(*; "strictText"; "Strict comparison")
				OBJECT SET TITLE:C194(*; "OptionsBox"; "Comparison options")
				
				OBJECT SET VISIBLE:C603(*; "cb_wholeWord"; False:C215)
				
		End case 
		
		SET TIMER:C645(-1)  // interface setup
		
		
	: (Form event code:C388=On Timer:K2:25)
		
		SET TIMER:C645(0)
		
		HDI_SetInterface
		
		If (Form:C1466.trace)
			TRACE:C157
		End if 
		
		$option:=0
		If (Form:C1466.characterCode=1)  //
			
			$option:=1
			$option:=$option+(Form:C1466.caseInsensitive*2)  // only possible option
			
		Else 
			
			$option:=$option+(Form:C1466.caseInsensitive*2)
			$option:=$option+(Form:C1466.diacriticInsensitive*4)
			$option:=$option+(Form:C1466.kanaInsensitive*8)
			$option:=$option+(Form:C1466.widthInsensitive*16)
			
			If (FORM Get current page:C276=2)
				$option:=$option+(Form:C1466.wholeWord*32)
			End if 
			
		End if 
		
		// <TEMP>
		Form:C1466.option:=$option
		//Form.find:=t_find{t_find}
		// </TEMP>
		
		Case of 
			: (FORM Get current page:C276=2)
				
				$sampleText:=ST Get plain text:C1092(*; "SampleText"; ST References as spaces:K78:8)
				
				ST SET ATTRIBUTES:C1093(*; "SampleText"; ST Start text:K78:15; ST End text:K78:16; Attribute background color:K65:8; "white")
				
				$p:=0
				Repeat 
					
					Case of 
						: (Form:C1466.default=1)
							$p:=Position:C15(Form:C1466.find; $sampleText; $p+1; $lengthFound)
							
						: (Form:C1466.star=1)
							$p:=Position:C15(Form:C1466.find; $sampleText; $p+1; $lengthFound; *)
							
						: (Form:C1466.newOptions=1)
							$p:=Position:C15(Form:C1466.find; $sampleText; $p+1; $lengthFound; $option)
							
					End case 
					
					If ($p>0)
						ST SET ATTRIBUTES:C1093(*; "SampleText"; $p; $p+$lengthFound; Attribute background color:K65:8; "Yellow")
					End if 
					
				Until ($p<=0)
				
				
			: (FORM Get current page:C276=3)
				
				$n:=Size of array:C274(t1)
				For ($i; 1; $n)
					
					$result:=Compare strings:C1756(t1{$i}; t2{$i}; $option)
					
					Case of 
						: ($result<0)
							tresult{$i}:="<"
							LISTBOX SET ROW COLOR:C1270(*; "LB"; $i; "aquamarine"; lk background color:K53:25)
						: ($result=0)
							tresult{$i}:="="
							LISTBOX SET ROW COLOR:C1270(*; "LB"; $i; "White"; lk background color:K53:25)
						: ($result>0)
							tresult{$i}:=">"
							LISTBOX SET ROW COLOR:C1270(*; "LB"; $i; "peachpuff"; lk background color:K53:25)
					End case 
					
				End for 
				
		End case 
		
	Else 
		
		
		
End case 

//$result:=Compare strings("a tree"; "A tree"; ak char codes)
//$result:=Compare strings("a tree"; "A tree"; ak char codes+ak case insensitive)

