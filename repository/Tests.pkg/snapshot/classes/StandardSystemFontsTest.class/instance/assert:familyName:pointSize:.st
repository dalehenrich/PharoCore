
!StandardSystemFontsTest methodsFor: 'utilities'!
assert: selector familyName: aString pointSize: anInteger

	| font |
	font := StandardFonts perform: selector.
	self assert: font familyName = aString.
	self assert: font pointSize = anInteger
	! !
