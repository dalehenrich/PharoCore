
!EUCTextConverter methodsFor: 'private'!
nonUnicodeClass

	^ (EncodedCharSet charsetAt: self leadingChar).
! !
