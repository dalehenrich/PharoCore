
!Character methodsFor: 'testing'!
isDigit

	^ (EncodedCharSet charsetAt: self leadingChar) isDigit: self.
! !
