
!Character methodsFor: 'printing'!
printStringHex
	"returns the hex digit part of the character value
	$A printStringHex
		 '41' 
	$A hex
		 '16r41' "
	
	^value printStringBase: 16! !
