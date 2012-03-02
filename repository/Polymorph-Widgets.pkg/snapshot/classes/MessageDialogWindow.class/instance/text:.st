
!MessageDialogWindow methodsFor: 'accessing'!
text: aStringOrText
	"Set the text."
	
	|t|
	t := aStringOrText isString
		ifTrue: [aStringOrText asText addAttribute: (TextFontReference toFont: self textFont); yourself]
		ifFalse: [aStringOrText].
	t addAttribute: TextAlignment leftFlush.
	self textMorph newContents: t.
! !
