
!StandardFonts class methodsFor: 'font accessing'!
codeFont
	^ CodeFont ifNil: [CodeFont := self defaultFont]! !
