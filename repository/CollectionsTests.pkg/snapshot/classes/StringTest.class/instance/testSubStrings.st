
!StringTest methodsFor: 'testing - converting'!
testSubStrings
	self assert: ('aba' subStrings: 'bc') isArray.
	self assert: ('aba' subStrings: 'bc') = #('a' 'a').
	self assert: ('abba' subStrings: 'bc') = #('a' 'a').
	self assert: ('babbab' subStrings: 'bc') = #('a' 'a').
	self assert: ('bbabbabb' subStrings: 'bc') = #('a' 'a').! !
