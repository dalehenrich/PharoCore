
!StringTest methodsFor: 'tests - line breaking'!
testLinesDoWithCr

	| string newString |
	string := 'This is a test of line breaking', String cr.
	string linesDo: [ :line |
		self assert: ((line size + 1) = string size)]! !
