
!SyntaxError methodsFor: 'initialization'!
setClass: aClass code: aString error: errorMessage location: anErrorPosition debugger: aDebugger doitFlag: flag

	class := aClass.
	error := errorMessage.
	location := anErrorPosition.
	debugger := aDebugger.
	selector := aClass parserClass new parseSelector: aString.
	contents := self checkForUnprintableCharacters: aString.
	self highlightError.
		
	category ifNil: [category := aClass organization categoryOfElement: selector].
	category ifNil: [category := ClassOrganizer default].
	doitFlag := flag! !
