
!UIThemeWatery2 methodsFor: 'fill-styles'!
checkboxSelectedForm
	"Answer the form to use for a selected checkbox."

	^self forms at: #checkboxSelected ifAbsent: [Form extent: 14@14 depth: Display depth]! !
