
!TTSampleStringMorph methodsFor: 'menus'!
edit
	"Allow the user to change the text in a crude way"

	| str |
	str :=  UIManager default request: 'Type in new text for this TrueType displayer.' translated
				 initialAnswer: 'some text'.
	str isEmptyOrNil ifTrue: [^ self].
	self string: str.
! !
