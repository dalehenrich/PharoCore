
!TextLineEndingsTest methodsFor: 'tests'!
testSimpleTextConversionJustCR

	| string newText |
	string := 'This is a test', String cr, 'of the conversion'.
	newText := string asText withSqueakLineEndings.
	self assert: ((string size) = newText size).
	self assert: (newText size = newText runs size).! !
