
!UTF16TextConverter methodsFor: 'accessing'!
useLittleEndian: aBoolean
	aBoolean = self useLittleEndian ifFalse: [self swapLatin1EncodingByteOrder].
	useLittleEndian := aBoolean.
! !
