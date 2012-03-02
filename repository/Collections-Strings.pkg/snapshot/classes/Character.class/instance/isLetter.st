
!Character methodsFor: 'testing'!
isLetter

	^ (EncodedCharSet charsetAt: self leadingChar) isLetter: self.
! !
