
!StandardFonts class methodsFor: 'font accessing'!
listFont
	^ ListFont ifNil: [ListFont := self defaultFont]! !
