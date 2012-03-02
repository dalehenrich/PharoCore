
!MessageNode methodsFor: 'printing'!
macroPrinter

	special > 0 ifTrue: [^MacroPrinters at: special].
	^nil
! !
