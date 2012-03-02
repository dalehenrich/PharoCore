
!Number methodsFor: 'printing'!
printStringBase: base
	^ String streamContents:
		[:strm | self printOn: strm base: base]! !
