
!TextEditorTest methodsFor: 'as yet unclassified'!
testCursorEnd
	| editor |
	"
	self debug: #testCursorEnd.
	"
	editor := TextMorph new editor.
	self shouldnt: [ editor cursorEnd: self keyboardEvent ] raise: Error.! !
