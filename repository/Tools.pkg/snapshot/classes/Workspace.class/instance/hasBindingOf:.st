
!Workspace methodsFor: 'binding'!
hasBindingOf: aString
	^bindings notNil and: [
		bindings includesKey: aString ]! !
