
!UpdatingStringMorph methodsFor: 'editing'!
setFontSize
	| sizes reply family |
	family := font 
				ifNil: [TextStyle default]
				ifNotNil: [font textStyle].
	family
		ifNil: [family := TextStyle default].
	"safety net -- this line SHOULD be unnecessary now "
	sizes := family fontNamesWithPointSizes.
	reply := UIManager default chooseFrom: sizes values: sizes.
	reply
		ifNotNil: [self
				font: (family
						fontAt: (sizes indexOf: reply))]! !
