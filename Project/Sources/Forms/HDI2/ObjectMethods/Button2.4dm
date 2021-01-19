$path:=Get 4D folder:C485(Current resources folder:K5:16)+"sample2.txt"
$sampleText:=Document to text:C1236($path; "UTF-8")
GET TEXT KEYWORDS:C1141($sampleText; $_words; *)
$n:=Size of array:C274($_words)
For ($i; 1; $n)
	APPEND TO ARRAY:C911($_words; Lowercase:C14($_words{$i}))
	APPEND TO ARRAY:C911($_words; Lowercase:C14($_words{$i}; *))
	APPEND TO ARRAY:C911($_words; Uppercase:C13($_words{$i}))
	APPEND TO ARRAY:C911($_words; Uppercase:C13($_words{$i}; *))
End for 


SORT ARRAY:C229($_words; >)
$n:=Size of array:C274($_words)
For ($i; $n; 2; -1)
	$result:=Compare strings:C1756($_words{$i}; $_words{$i-1}; 0)  // 1 : ak char codes  //0 : strict
	If ($result=0)
		DELETE FROM ARRAY:C228($_words; $i; 1)
	End if 
End for 

$n:=Size of array:C274($_words)
ARRAY LONGINT:C221($_rnd; $n)
For ($i; 1; $n)
	$_rnd{$i}:=Random:C100
End for 
$sampleText:=""
SORT ARRAY:C229($_rnd; $_words; >)


$sampleText:=""
For ($i; 1; $n)
	$sampleText:=$sampleText+$_words{$i}+" "
End for 

$path:=Get 4D folder:C485(Current resources folder:K5:16)+"sampleWords2.txt"
TEXT TO DOCUMENT:C1237($path; $sampleText)
