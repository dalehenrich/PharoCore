
!StringTest methodsFor: 'tests - converting'!
testWriteStreamConvertsToWideString
	| oldWideString string ws |
	"test that a write stream on a ByteString is autoconverted into a WideString if a Wide character is inserted into it"
	oldWideString := (WideString new: 1) wordAt: 1 
										put: 20984060; 
										yourself.
	string := (String new: oldWideString size).
	ws := string writeStream.
	oldWideString do: [:each | ws nextPut: each].
	self assert: (string = oldWideString).! !
