
!UndefinedObjectTest methodsFor: 'tests - printing'!
testStoreOn
	| string |
	string := String streamContents: [ :stream | nil storeOn: stream ].
	self assert: (self class evaluatorClass evaluate: string) isNil! !
