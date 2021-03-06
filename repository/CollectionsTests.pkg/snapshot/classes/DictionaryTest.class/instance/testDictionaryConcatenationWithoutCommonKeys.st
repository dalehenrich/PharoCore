
!DictionaryTest methodsFor: 'test - copying'!
testDictionaryConcatenationWithoutCommonKeys
	"self run: #testDictionaryConcatenation"
	"| dict1 dict2 dict3 |
	dict1 := self emptyDict.
	dict1 at: #a put: 'Nicolas' ; at: #b put: 'Damien'. 
	
	dict2 := self emptyDict.
	dict2 at: #a put: 'Christophe' ; at: #c put: 'Anthony'.
	dict3 := dict1, dict2.
	
	self assert: (dict3 at: #a) = 'Christophe'.
	self assert: (dict3 at: #b) = 'Damien'.
	self assert: (dict3 at: #c) = 'Anthony'.
	
"
	| dictionary1 dictionary2 result |
	dictionary1 := self nonEmptyDict.
	dictionary2 := self nonEmptyDifferentFromNonEmptyDict.
	result := dictionary1 , dictionary2.
	self assert: result size = (dictionary1 size + dictionary2 size).
	dictionary1 associationsDo: [ :assoc | self assert: (result at: assoc key) = assoc value ].
	dictionary2 associationsDo: [ :assoc | self assert: (result at: assoc key) = assoc value ]! !
