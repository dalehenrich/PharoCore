
!StandardFonts class methodsFor: 'font accessing'!
windowTitleFont
	^ WindowTitleFont ifNil: [WindowTitleFont := StandardFonts defaultFont]! !
