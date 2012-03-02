
!HostSystemMenusMacOSX methodsFor: 'translation'!
convertToStr255: aString
	| str255 size |
	str255 := ByteArray new: 256.
	size := aString size.
	size > 255 ifTrue: [self error: 'String is too long'].
	str255 byteAt: 1 put: size.
	str255 replaceFrom: 2 to: size + 1 with: aString startingAt: 1.
	^str255
! !
