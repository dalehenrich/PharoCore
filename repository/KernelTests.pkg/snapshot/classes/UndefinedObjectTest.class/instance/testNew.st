
!UndefinedObjectTest methodsFor: 'tests - Class Methods'!
testNew

	self should: [ UndefinedObject new] raise: Error.! !
