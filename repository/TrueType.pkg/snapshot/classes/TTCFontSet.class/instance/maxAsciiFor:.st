
!TTCFontSet methodsFor: 'as yet unclassified'!
maxAsciiFor: encoding

	| f |
	f := (fontArray at: encoding+1).
	f ifNotNil: [^ f maxAscii].
	^ 0.
! !
