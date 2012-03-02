
!String methodsFor: 'converting'!
asWideString 
	self isWideString
		ifTrue:[^self]
		ifFalse:[^WideString from: self]! !
